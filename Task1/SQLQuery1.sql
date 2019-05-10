USE [HebbraCoDbf]
GO
/****** Object:  Table [dbo].[BusinessUnit]    Script Date: 20/08/2016 18:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessUnit](
	[businessUnitId] [int] IDENTITY(1,1) NOT NULL,
	[businessUnitCode] [nchar](10) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[officeAddress1] [nvarchar](max) NOT NULL,
	[officeAddresss2] [nvarchar](max) NOT NULL,
	[officeAddress3] [nvarchar](max) NOT NULL,
	[officePostCode] [nchar](10) NOT NULL,
	[officeContact] [nvarchar](max) NOT NULL,
	[officePhone] [nvarchar](50) NOT NULL,
	[officeEmail] [nvarchar](50) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_dbo.BusinessUnit] PRIMARY KEY CLUSTERED 
(
	[businessUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 20/08/2016 18:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffId] [int] IDENTITY(1,1) NOT NULL,
	[businessUnitId] [int] NOT NULL,
	[staffCode] [nvarchar](50) NOT NULL,
	[firstName] [nvarchar](max) NOT NULL,
	[middleName] [nvarchar](max) NOT NULL,
	[lastName] [nvarchar](max) NOT NULL,
	[dob] [date] NOT NULL,
	[startDate] [date] NOT NULL,
	[profile] [nvarchar](max) NULL,
	[emailAddress] [nvarchar](max) NOT NULL,
	[PhotoUrl] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Staff] PRIMARY KEY CLUSTERED 
(
	[staffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BusinessUnit] ON 

INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (1, N'SCM       ', N'School of Computing', N'School of Computing are at the forefront of current technology. Trying to predict future advances is both exciting and challenging. There has never been a more exciting time to study with us.', N'Grieg Building', N'Southfield Rd', N'Middlesbrough', N'TS10 2NT  ', N'Simon Stobart', N'01642344600', N'scm@tees.ac.uk', 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (2, N'TUBS      ', N'Business School', N'To act regionally, influence nationally, and think globally to lead the way with progressive, innovative and enterprising business education for the real world', N'1st Floor, Clarendon Building', N'On Campus', N'Middlesbrough', N'TS1 3BX   ', N'Paul Crawshaw', N'01642 342312 ', N'SSSBLReception@tees.ac.uk', 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (3, N'SAM       ', N'School of Arts & Media', N'The School of Arts & Media is a diverse and enterprising group, spanning practice-led subjects like Art and Design , Dance, Acting and TV production as well as English Studies, History and Media Studies. We are committed to providing you with the very best educational experience in a supportive environment', N'The Athena Building ', N'Southfield Rd', N'Middlesbrough', N'TS1 3BZ   ', N'Jill Morgan', N'01642 384015', N'art@tees.ac.uk', 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (8, N'SSE       ', N'School of Science and Engineering', N'to develop the next generation of problem solvers, innovators and leaders that employers and society need', N'Orion building', N'On Campus', N'Middlesbrough', N'TS1 3BY   ', N'Stephen Cummings', N'01642 342499', N'fred@tees.ac.uk', 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (9, N'testCode  ', N'testUnit', N'test description', N'ad1', N'ad2', N'ad3', N'pc1 1pc   ', N'test contact', N'01642 218121', N'b.d.hebbron@tees.ac.uk', 0)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddresss2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (10, N'test      ', N'test', N'asdf', N'Fsfd', N'F', N'f', N'SFD       ', N'sdf', N'12345678', N'B@TEES.AC.UK', 0)
SET IDENTITY_INSERT [dbo].[BusinessUnit] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (1, 1, N'u0000700', N'John', N'Jo', N'Smith', CAST(0x50EB0A00 AS Date), CAST(0x07240B00 AS Date), N'John is good at AI', N'j.smith@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (2, 1, N'u0000702', N'Paul', N'Micheal', N'Brown', CAST(0x0CEE0A00 AS Date), CAST(0x68260B00 AS Date), N'Paul is good at Games', N'p.brown@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (4, 1, N'u0000704', N'Jane', N'Lizy', N'Jones', CAST(0x92FA0A00 AS Date), CAST(0x23290B00 AS Date), N'Jane is a systems analyst', N'j.Jones', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (5, 2, N'u0000706', N'Izzy', N'Clair', N'Collins', CAST(0x96FC0A00 AS Date), CAST(0xF01C0B00 AS Date), N'Izzy knows a lot about Sales', N'i.c.collins@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (9, 2, N'u0000708', N'Suravi', N'Saura', N'Verma ', CAST(0xEAF20A00 AS Date), CAST(0x97160B00 AS Date), N'Suravi knows a lot about money', N's.s.verma@tees.ac.uk', N'urls', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (15, 2, N'u0000710', N'Min', N' ', N'Yang', CAST(0xD4FA0A00 AS Date), CAST(0xDC240B00 AS Date), N'Min is an expert in new buisness start ups', N'm.yang@tees.ac.uk', N'urls', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (16, 3, N'u0001101', N'John', N'Paul', N'Brown', CAST(0x36ED0A00 AS Date), CAST(0x0D0B0B00 AS Date), N'John Knows a lot about paintings', N'j.p.brown@tees.ac.uk', N'urls', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (18, 3, N'u0001234', N'Ellie', N'Jane', N'Wild', CAST(0x74F90A00 AS Date), CAST(0x1D2C0B00 AS Date), N'Elie loves Design', N'e.j.Wild@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (21, 3, N'u0004321', N'Suzy', N'', N'Druery', CAST(0xFD050B00 AS Date), CAST(0x20220B00 AS Date), N'Suzy likes Classic Art', N's.druery@tees.ac.uk', N'urls', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (25, 8, N'u0005431', N'Gareth', N'David', N'Bates', CAST(0x940A0B00 AS Date), CAST(0x88320B00 AS Date), N'Gareth is into elecronics', N'g.d.bates@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (27, 8, N'u0012345', N'Evelyn', N'Jane', N'Fawcett', CAST(0xD6110B00 AS Date), CAST(0x88320B00 AS Date), N'Evelyn is an expert in chemistry', N'e.j.fawcett@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (29, 8, N'u0015437', N'Kaisen', N'James', N'García', CAST(0x2A0A0B00 AS Date), CAST(0x4F280B00 AS Date), N'Kaisen is a mechanical engineer', N'k.j.Garcia@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (31, 2, N'u00001234567', N'fn', N'm', N'l', CAST(0x00000000 AS Date), CAST(0x00000000 AS Date), N'p', N'e@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (32, 2, N'sc', N'fn', N'mn', N'ln', CAST(0x00000000 AS Date), CAST(0x00000000 AS Date), N'p', N'e@tees.ac.uk', N'url', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (33, 2, N'u9071777', N'sdf', N'sdf', N'sdf', CAST(0x00000000 AS Date), CAST(0x00000000 AS Date), N'SDFSdf', N'df@tees.ac.uk', N'url', 0)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [PhotoUrl], [Active]) VALUES (34, 2, N'u5428747', N'cnm', N'bnm', N'cbnm', CAST(0x00000000 AS Date), CAST(0x00000000 AS Date), N'cnmcnmcnm', N'bn@tees.ac.uk', N'url', 1)
SET IDENTITY_INSERT [dbo].[Staff] OFF
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Staff_dbo.BusinessUnit_businessUnitId] FOREIGN KEY([businessUnitId])
REFERENCES [dbo].[BusinessUnit] ([businessUnitId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_dbo.Staff_dbo.BusinessUnit_businessUnitId]
GO
