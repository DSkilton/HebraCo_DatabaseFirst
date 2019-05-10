var ViewModel = function () {
    var self = this;
    self.staffs = ko.observableArray();
    self.error = ko.observable();

    var staffsUri = '/api/staffs/';

    function ajaxHelper(uri, method, data) {
        self.error(''); // Clear error message
        return $.ajax({
            type: method,
            url: uri,
            dataType: 'json',
            contentType: 'application/json',
            data: data ? JSON.stringify(data) : null
        }).fail(function (jqXHR, textStatus, errorThrown) {
            self.error(errorThrown);
        });
    }

    function getAllStaffs() {
        ajaxHelper(staffsUri, 'GET').done(function (data) {
            self.staffs(data);
        });
    }

    // Fetch the initial data.
    getAllStaffs();
};

ko.applyBindings(new ViewModel());