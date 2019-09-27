CREATE TABLE [dbo].[Hobbies](
	[HobbyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[HobbyName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Hobbies] PRIMARY KEY CLUSTERED 
(
	[HobbyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hobbies]  WITH CHECK ADD  CONSTRAINT [FK_Hobbies_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO

ALTER TABLE [dbo].[Hobbies] CHECK CONSTRAINT [FK_Hobbies_Persons]