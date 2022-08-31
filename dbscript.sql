USE [RecipeBase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogs]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UseCaseName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[ExecutedAt] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[IsAuthorized] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directions]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Step] [nvarchar](max) NOT NULL,
	[StepNumber] [int] NOT NULL,
	[RecipeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Directions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[UserId] [int] NOT NULL,
	[RecipeId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[RecipeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[PrepTime] [nvarchar](35) NOT NULL,
	[ImageId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCases]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCases](
	[UserId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UseCases] PRIMARY KEY CLUSTERED 
(
	[UseCaseId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 31.8.2022. 03:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Password] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](30) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220831014130_Initial', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[AuditLogs] ON 

INSERT [dbo].[AuditLogs] ([Id], [UseCaseName], [Username], [UserId], [ExecutedAt], [Data], [IsAuthorized], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'DB Seeder', N'(guest)', 0, CAST(N'2022-08-31T01:44:47.8516013' AS DateTime2), N'null', 1, 1, CAST(N'2022-08-31T01:44:49.1846307' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AuditLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Appetizers', 1, CAST(N'2022-08-31T01:44:50.2277433' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Main dishes', 1, CAST(N'2022-08-31T01:44:50.2277451' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'Salads', 1, CAST(N'2022-08-31T01:44:50.2277455' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'Desserts', 1, CAST(N'2022-08-31T01:44:50.2277457' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'Pastries and bread', 1, CAST(N'2022-08-31T01:44:50.2277460' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (6, N'Drinks', 1, CAST(N'2022-08-31T01:44:50.2277463' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Directions] ON 

INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Mash avocados in a bowl until creamy.', 1, 1, 1, CAST(N'2022-08-31T01:44:50.2277570' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans.', 2, 18, 1, CAST(N'2022-08-31T01:44:50.2278255' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'Bake for about 10 minutes in the preheated oven, or until edges are nicely browned.', 3, 18, 1, CAST(N'2022-08-31T01:44:50.2278257' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'Combine brown sugar and butter in a large bowl; beat with an electric mixer until creamy. Beat in vanilla extract and salt. Add flour; mix until a crumbly dough forms. Mix in milk. Fold in milk chocolate chips and mini chocolate chips.', 1, 15, 1, CAST(N'2022-08-31T01:44:50.2278294' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'Preheat oven to 350 degrees F (175 degrees C).', 1, 14, 1, CAST(N'2022-08-31T01:44:50.2278321' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (6, N'In a medium bowl, blend together softened butter, 2 cups flour and 1/2 cup sugar. Press into the bottom of an ungreased 9x13 inch pan.', 2, 14, 1, CAST(N'2022-08-31T01:44:50.2278324' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (7, N'Bake for 15 to 20 minutes in the preheated oven, or until firm and golden.In another bowl, whisk together the remaining 1 1 / 2 cups sugar and 1 / 4 cup flour.Whisk in the eggs and lemon juice.Pour over the baked crust.', 3, 14, 1, CAST(N'2022-08-31T01:44:50.2278327' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (8, N'Bake for an additional 20 minutes in the preheated oven.The bars will firm up as they cool.For a festive tray, make another pan using limes instead of lemons and adding a drop of green food coloring to give a very pale green. After both pans have cooled, cut into uniform 2 inch squares and arrange in a checker board fashion.', 4, 14, 1, CAST(N'2022-08-31T01:44:50.2278330' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (9, N'Stir sugar, cream, and milk into a saucepan over low heat until sugar has dissolved. Heat just until mix is hot and a small ring of foam appears around the edge.', 1, 13, 1, CAST(N'2022-08-31T01:44:50.2278355' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (10, N'Transfer cream mixture to a pourable container such as a large measuring cup. Stir in vanilla extract and chill mix thoroughly, at least 2 hours. (Overnight is best.)', 2, 13, 1, CAST(N'2022-08-31T01:44:50.2278358' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (11, N'Pour cold ice cream mix into an ice cream maker, turn on the machine, and churn according to manufacturer''s directions, 20 to 25 minutes.', 3, 13, 1, CAST(N'2022-08-31T01:44:50.2278360' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (12, N'When ice cream is softly frozen, serve immediately or place a piece of plastic wrap directly on the ice cream and place in freezer to ripen, 2 to 3 hours.', 4, 13, 1, CAST(N'2022-08-31T01:44:50.2278365' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (13, N'Juice lemons; you should have 1 cup juice.', 1, 12, 1, CAST(N'2022-08-31T01:44:50.2278380' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (14, N'Combine juice, sugar, and water in a 1 / 2 - gallon pitcher.Stir until sugar dissolves. Taste and add more water if desired.', 2, 12, 1, CAST(N'2022-08-31T01:44:50.2278382' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (15, N'Chill and serve over ice.', 3, 12, 1, CAST(N'2022-08-31T01:44:50.2278385' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (16, N'Measure the tequila, lime juice, sweetened lime juice and triple sec into a cocktail shaker and add a generous scoop of ice. Cover and shake until the shaker is frosty, about 30 seconds.', 1, 11, 1, CAST(N'2022-08-31T01:44:50.2278397' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (17, N'Rub a lime wedge around the rim of a margarita glass and dip in salt. Fill each glass with ice. Strain equal amounts of the cocktail into the glasses to serve. Garnish with a lime wedge.', 2, 11, 1, CAST(N'2022-08-31T01:44:50.2278399' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (18, N'In a blender, combine ice, sugar and strawberries. Pour in lime juice, lemon juice, rum and lemon-lime soda. Blend until smooth. Pour into glasses and serve.', 1, 10, 1, CAST(N'2022-08-31T01:44:50.2278422' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (19, N'Pour 1/4 to 1/2 inch of sugar onto a small, shallow plate. Run one of the lime quarters around the rim of each cocktail glass, then dip the glasses into the sugar to rim; set aside.', 1, 9, 1, CAST(N'2022-08-31T01:44:50.2278448' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (20, N'Squeeze all of the lime quarters into a sturdy glass pitcher. Toss the juiced limes into the pitcher along with the mint, strawberries, and 1 cup of sugar.Crush the fruits together with a muddler to release the juices from the strawberries and the oil from the mint leaves.Stir in the rum and club soda until the sugar has dissolved. Pour into the sugared glasses over ice cubes to serve.', 2, 9, 1, CAST(N'2022-08-31T01:44:50.2278450' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (21, N'Preheat oven to 350 degrees F (175 degrees C).', 1, 18, 1, CAST(N'2022-08-31T01:44:50.2278252' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (22, N'Remove brownies from the oven, and make frosting.Combine 3 tablespoons softened butter, 3 tablespoons cocoa, honey, 1 teaspoon vanilla extract, and 1 cup confectioners'' sugar. Stir until smooth.', 4, 17, 1, CAST(N'2022-08-31T01:44:50.2278223' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (23, N'Bake in preheated oven for 25 to 30 minutes.Do not overcook.', 3, 17, 1, CAST(N'2022-08-31T01:44:50.2278219' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (24, N'In a large saucepan, melt 1/2 cup butter. Remove from heat, and stir in sugar, eggs, and 1 teaspoon vanilla. Beat in 1/3 cup cocoa, 1/2 cup flour, salt, and baking powder. Spread batter into prepared pan.', 2, 17, 1, CAST(N'2022-08-31T01:44:50.2278217' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (25, N'Preheat oven to 350 degrees F (175 degrees C). ', 1, 31, 1, CAST(N'2022-08-31T01:44:50.2277885' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (26, N'In a large bowl, combine the beef, egg, onion, milk and bread OR cracker crumbs. Season with salt and pepper to taste and place in a lightly greased 9x5-inch loaf pan, or form into a loaf and place in a lightly greased 9x13-inch baking dish.', 2, 31, 1, CAST(N'2022-08-31T01:44:50.2277888' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (27, N'In a separate small bowl, combine the brown sugar, mustard and ketchup. Mix well and pour over the meatloaf.', 3, 31, 1, CAST(N'2022-08-31T01:44:50.2277892' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (28, N'Bake at 350 degrees F (175 degrees C) for 1 hour.', 4, 31, 1, CAST(N'2022-08-31T01:44:50.2277898' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (29, N'Place carrots in a small saucepan and cover with water. Bring to a low boil and cook for 3 to 5 minutes.Stir in peas, then immediately drain in a colander.', 1, 25, 1, CAST(N'2022-08-31T01:44:50.2277926' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (30, N'Heat a wok over high heat.Pour in vegetable oil, then stir in carrots, peas, and garlic; cook for about 30 seconds.Add eggs; stir quickly to scramble eggs with vegetables.', 2, 25, 1, CAST(N'2022-08-31T01:44:50.2277928' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (31, N'Stir in cooked rice.Add soy sauce and toss rice to coat.Drizzle with sesame oil and toss again.', 3, 25, 1, CAST(N'2022-08-31T01:44:50.2277931' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (32, N'Sprinkle the chicken breasts with 2 teaspoons salt.', 1, 26, 1, CAST(N'2022-08-31T01:44:50.2277958' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (33, N'Heat oil in a large skillet over high heat; partially cook the chicken in the hot oil in batches until completely browned on all sides.Transfer browned chicken breasts to a plate and set aside.', 2, 26, 1, CAST(N'2022-08-31T01:44:50.2277961' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (34, N'Pour the simple syrup, water, and bitters into a whiskey glass. Stir to combine, then place the ice cubes in the glass. Pour bourbon over the ice and garnish with the orange slice and maraschino cherry.', 1, 8, 1, CAST(N'2022-08-31T01:44:50.2278475' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (35, N'Reduce the heat to medium and add onion, garlic, and ginger to the oil remaining in the skillet. Cook and stir until onion turns soft and translucent, 5 to 8 minutes.Stir curry powder, cumin, turmeric, coriander, cayenne, and 1 tablespoon of water into the onion mixture; allow to heat together for about 1 minute while stirring.Add tomatoes, yogurt, 1 tablespoon chopped cilantro, and 1 teaspoon salt to the mixture; stir to combine.', 3, 26, 1, CAST(N'2022-08-31T01:44:50.2277963' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (36, N'Cover the skillet and simmer until chicken breasts are no longer pink in the center and the juices run clear, about 20 minutes.An instant-read thermometer inserted into the center should read at least 165 degrees F(74 degrees C). Drizzle with lemon juice to serve.', 5, 26, 1, CAST(N'2022-08-31T01:44:50.2277968' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (37, N'Place potatoes into a large pot and cover with salted water; bring to a boil. Reduce heat to medium-low and simmer until tender, about 10 minutes.Drain.Return potatoes to empty pot to dry while you mix the dressing.Sprinkle with salt.', 1, 27, 1, CAST(N'2022-08-31T01:44:50.2278029' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (38, N'Stir mayonnaise, pickles, hard - cooked eggs, red onion, celery, mustard, cider vinegar, 1 teaspoon salt, and pepper together in a large bowl.Fold potatoes into the mayonnaise mixture. Allow to chill at least six hours, or overnight, before serving.', 2, 27, 1, CAST(N'2022-08-31T01:44:50.2278032' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (39, N'Whisk water, vinegar, oil, sugar, salt, and pepper together in a large bowl until smooth; add cucumbers, tomatoes, and onion and stir to coat.', 1, 28, 1, CAST(N'2022-08-31T01:44:50.2278066' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (40, N'Cover bowl with plastic wrap; refrigerate for at least 2 hours.', 2, 28, 1, CAST(N'2022-08-31T01:44:50.2278069' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (41, N'Bring a large pot of lightly salted water to a boil. Cook fusilli in the boiling water, stirring occasionally, until tender yet firm to the bite, about 12 minutes. Drain.', 1, 29, 1, CAST(N'2022-08-31T01:44:50.2278160' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (42, N'Combine fusilli with tomatoes, cheese, salami, pepperoni, green pepper, olives, and pimentos in a large bowl. Pour in salad dressing; toss to coat.', 2, 29, 1, CAST(N'2022-08-31T01:44:50.2278163' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (43, N'In a large bowl, stir together the mayonnaise, sugar, vinegar, dill, and seasoned salt. Mix in the cucumber slices, tossing to coat.', 1, 30, 1, CAST(N'2022-08-31T01:44:50.2278190' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (44, N'Preheat oven to 350 degrees F (175 degrees C). Grease and flour an 8-inch square pan.', 1, 17, 1, CAST(N'2022-08-31T01:44:50.2278212' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (45, N'Return chicken breast to the skillet along with any juices on the plate. Pour in 1 / 2 cup water and bring to a boil, turning the chicken to coat with the sauce. Sprinkle garam masala and 1 tablespoon cilantro over the chicken.', 4, 26, 1, CAST(N'2022-08-31T01:44:50.2277966' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (46, N'Pour salt onto a small plate. Moisten the rim of a glass and press into the salt. Fill the glass with ice cubes.', 1, 16, 1, CAST(N'2022-08-31T01:44:50.2278497' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (47, N'Fill a cocktail shaker with ice cubes; add vegetable juice cocktail, vodka, Worcestershire sauce, hot pepper sauce, salt, and pepper. Cover and shake until the outside of shaker has frosted, about 20 seconds.', 2, 16, 1, CAST(N'2022-08-31T01:44:50.2278500' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (48, N'Strain Bloody Mary into the prepared glass and garnish with celery stalk and olives.', 3, 16, 1, CAST(N'2022-08-31T01:44:50.2278502' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (49, N'Lightly brush the tops of the loaves with remaining 2 tablespoons melted butter when done to prevent crust from getting hard.Cool completely.', 7, 4, 1, CAST(N'2022-08-31T01:44:50.2278679' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (50, N'In a small bowl, dissolve yeast in warm water. Let stand until creamy, about 10 minutes.', 1, 3, 1, CAST(N'2022-08-31T01:44:50.2278699' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (51, N'In a large bowl, stir together the flour sugar and salt. Make a well in center of the bowl and mix in the eggs and yeast mixture. Beat well until the dough has pulled together, then turn it out onto a lightly floured surface and knead until smooth and supple, about 8 minutes.', 2, 3, 1, CAST(N'2022-08-31T01:44:50.2278701' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (52, N'Flatten the dough and spread it with one third of the butter. Knead this well. Repeat this twice to incorporate the remaining butter. Allow the dough to rest for a few minutes between additions of butter.This process may take 20 minutes or so.Lightly oil a large bowl, place the dough in the bowl and turn to coat with oil.Cover with plastic wrap and let rise in a warm place until doubled in volume, about 1 hour.', 3, 3, 1, CAST(N'2022-08-31T01:44:50.2278704' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (53, N'Deflate the dough, cover with plastic wrap, and refrigerate 6 hours or overnight.It needs time to chill in order to become more workable.', 4, 3, 1, CAST(N'2022-08-31T01:44:50.2278706' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (54, N'Turn the dough out onto a lightly floured surface.Divide the dough into two equal pieces, form into loaves and place into prepared pans.Cover with greased plastic wrap and let rise until doubled in volume, about 60 minutes.Turn the dough out onto a lightly floured surface.Divide the dough into two equal pieces, form into loaves and place into prepared pans.Cover with greased plastic wrap and let rise until doubled in volume, about 60 minutes.', 5, 3, 1, CAST(N'2022-08-31T01:44:50.2278708' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (55, N'Preheat oven to 400 degrees F(200 degrees C).Lightly grease two 9x5 - inch loaf pans(see Cook''s Note to make rolls). Beat the egg yolk with 1 teaspoon of water to make a glaze.', 6, 3, 1, CAST(N'2022-08-31T01:44:50.2278709' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (56, N'Brush the loaves or rolls with the egg wash.Bake in preheated oven until a deep golden brown.Start checking the loaves for doneness after 25 minutes, and rolls at 10 minutes.Let the loaves cool in the pans for 10 minutes before moving them to wire racks to cool completely.', 7, 3, 1, CAST(N'2022-08-31T01:44:50.2278712' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (57, N'Sprinkle 2 tablespoons of flour over the butter and mix it together with your hands in a mixing bowl or on a work surface. Transfer the butter to a length of foil or parchment paper and pat it into a 6 inch square. Fold up the foil to make a packet and refrigerate until chilled, about 2 hours.', 1, 2, 1, CAST(N'2022-08-31T01:44:50.2278735' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (58, N'Bake the risen loaves in the preheated oven until golden brown for 25 to 30 minutes, do not overbake.', 6, 4, 1, CAST(N'2022-08-31T01:44:50.2278676' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (59, N'Combine 2 cups of the flour with the salt and sugar in a mixing bowl. Dissolve the yeast in the lukewarm water (100 degrees F/38 degrees C) and set aside until frothy, about 10 minutes. Meanwhile, warm the milk and the heavy cream to lukewarm. Add the yeast, milk, and cream to the flour mixture and stir well. The dough will have a batter-like consistency.', 2, 2, 1, CAST(N'2022-08-31T01:44:50.2278737' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (60, N'To begin the rolling and folding process, both the butter and the dough should be at a cool room temperature. [See Cook''s Note.] Place the dough on a floured surface and roll it into a 10-inch square. Set the block of butter diagonally on the square dough. Bring each point of dough to the center of the butter square; the edges of the dough should overlap. Pinch the edges together to seal.', 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278741' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (61, N'Starting from the center of the square and working outward, use a rolling pin to roll the dough out into a rectangle.The butter should be pliable enough to roll smoothly with the dough; if it''s too soft and starts to ooze out the corners, wrap the dough in plastic and refrigerate before proceeding. Roll the dough into a long rectangle, approximately 8 by 18 inches. Fold the length of dough into thirds, like a business letter.', 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278743' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (62, N'If the dough is still cool, you can continue with another fold.Otherwise, wrap it in plastic and refrigerate for 45 minutes to 1 hour.Remove the dough from the refrigerator and let it warm up for about 10 minutes before you begin rolling it out again.', 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278746' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (63, N'Position the dough so that the open ends are at 12 and 6 o''clock. Roll the dough into a rectangle, working from the center of the dough and pressing outwards. Reposition the dough as necessary to fit your work space. You should have a long rectangle for the ''book fold.'' Fold both ends of the dough into the middle; the ends don''t have to be touching, but should be close.Fold the already - folded dough in half; it will look like a thick book.Wrap the dough well with plastic and refrigerate for 1 to 2 hours.', 7, 2, 1, CAST(N'2022-08-31T01:44:50.2278748' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (64, N'Remove the dough from the refrigerator and let it rest at room temperature for about 20 minutes.Roll the dough into a rectangle again and fold it into thirds, like a business letter.Wrap it in plastic and refrigerate for 4 - 6 hours or overnight.', 8, 2, 1, CAST(N'2022-08-31T01:44:50.2278750' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (65, N'To shape the croissants, roll the dough into a 10 - by 38 - inch rectangle on a lightly floured work surface.It should be about 1 / 4 inch thick.Use a pizza wheel or sharp paring knife to trim the edges of the dough.Divide the rectangle in half so that you have two 5 - inch wide strips of dough.Use a clean yardstick to mark each strip into triangles that are 5 inches wide at their bases.Cut the triangles and place them onto parchment - lined baking sheets.Chill for 15 to 20 minutes, if necessary. 1', 9, 2, 1, CAST(N'2022-08-31T01:44:50.2278755' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (66, N'Starting at the base of the triangle, roll the dough up into a log; the tip of the triangle should be under the body of the croissant to prevent it from unraveling.Bend in the corners to form the traditional crescent shape.Repeat with the remaining dough. 1', 10, 2, 1, CAST(N'2022-08-31T01:44:50.2278757' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (67, N'Arrange the croissants on the parchment - lined baking sheets and allow to rise until doubled in size, about 1 to 2 hours. 1', 11, 2, 1, CAST(N'2022-08-31T01:44:50.2278760' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (68, N'Preheat an oven to 425 degrees F(220 degrees C). Beat the egg with the tablespoon of water to make the egg wash.Brush the croissants with egg wash and bake in the preheated oven until deep brown, 22 to 25 minutes.Cool on a rack before serving.', 12, 2, 1, CAST(N'2022-08-31T01:44:50.2278762' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (69, N'Stir in the remaining 2 cups of flour 1/4 cup at a time to form a soft dough. It should no longer be sticky. Turn the dough onto a lightly floured work surface and knead until smooth, about 5 minutes. Place the dough in a mixing bowl and cover with plastic wrap. Refrigerate for 1 hour.', 3, 2, 1, CAST(N'2022-08-31T01:44:50.2278739' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (70, N'Bake in the preheated oven until cheese is browned and bubbly and chicken breasts are no longer pink in the center, 15 to 20 minutes.An instant - read thermometer inserted into the center should read at least 165 degrees F(74 degrees C).', 9, 23, 1, CAST(N'2022-08-31T01:44:50.2277849' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (71, N'Meanwhile, preheat the oven to 350 degrees F(175 degrees C).', 5, 4, 1, CAST(N'2022-08-31T01:44:50.2278672' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (72, N'Place in a greased bowl, turning once to coat the surface of the dough.Cover with a dish towel and let rise in a warm place until doubled, 45 minutes to 1 hour.', 3, 4, 1, CAST(N'2022-08-31T01:44:50.2278667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (73, N'Dissolve yeast in warm water in a large bowl. Let stand about 10 minutes, until frothy.', 1, 7, 1, CAST(N'2022-08-31T01:44:50.2278535' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (74, N'Meanwhile, generously oil a large bowl.', 2, 7, 1, CAST(N'2022-08-31T01:44:50.2278538' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (75, N'Stir sugar, milk, egg, and salt into the yeast mixture. Mix in enough flour to make a soft dough.', 3, 7, 1, CAST(N'2022-08-31T01:44:50.2278541' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (76, N'Knead dough on a lightly floured surface until smooth, 6 to 8 minutes.', 4, 7, 1, CAST(N'2022-08-31T01:44:50.2278544' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (77, N'Place dough in the prepared oil, cover with a damp cloth, and let rise until doubled in size, about 1 hour.', 5, 7, 1, CAST(N'2022-08-31T01:44:50.2278547' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (78, N'Punch down dough on a lightly floured surface, and knead in garlic. Pinch off small handfuls of dough about the size of a golf ball; you should have about 1', 6, 7, 1, CAST(N'2022-08-31T01:44:50.2278550' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (79, N'Roll each piece into a ball and place on a tray. Cover with a towel, and allow to rise until doubled in size, about 30 minutes.', 7, 7, 1, CAST(N'2022-08-31T01:44:50.2278552' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (80, N'Meanwhile, preheat a large grill pan over high heat.', 8, 7, 1, CAST(N'2022-08-31T01:44:50.2278555' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (81, N'Roll each piece of dough into a thin circle.', 9, 7, 1, CAST(N'2022-08-31T01:44:50.2278558' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (82, N'Grease three 9x5 - inch loaf pans. Punch down the dough, and divide it into 3 loaves.Place in the prepared loaf pans, and allow to rise until dough has topped the pans by one inch, another 45 minutes to 1 hour.', 4, 4, 1, CAST(N'2022-08-31T01:44:50.2278669' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (83, N'Brush some melted butter on the preheated grill pan. Place a few pieces of dough in the pan(as many as you can fit) and cook until puffy and lightly browned, 2 to 3 minutes.Brush butter onto the uncooked sides, flip, and cook until browned, 2 to 4 more minutes. Remove from the grill and repeat to cook the remaining naan.', 10, 7, 1, CAST(N'2022-08-31T01:44:50.2278560' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (84, N'In a large bowl, stir together the flour and yeast. Pour in wet ingredients and stir until the dough starts to pull together. If you have a stand mixer, use the dough hook to mix for about 8 minutes.If not, knead the dough on a floured surface for about 10 minutes.Place the dough in a greased bowl, turning to coat.Cover and let stand until doubled in size, about 1 hour.', 2, 6, 1, CAST(N'2022-08-31T01:44:50.2278590' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (85, N'Punch down the dough and divide into 12 portions They should be a little larger than a golf ball.Make tight balls out of the dough by pulling the dough tightly around and pinching it at the bottom.Place on a baking sheet lined with parchment paper or aluminum foil.After the rolls sit for a minute and relax, flatten each ball with the palm of your hand until it is 3 to 4 inches wide.You may want to oil your hand first.Set rolls aside until they double in size, about 20 minutes.', 3, 6, 1, CAST(N'2022-08-31T01:44:50.2278592' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (86, N'Preheat the oven to 400 degrees F(200 degrees C).Mix together the egg yolk and 1 tablespoon of water in a cup or small bowl.Brush onto the tops of the rolls.Position 2 oven racks so they are not too close to the top or bottom of the oven.', 4, 6, 1, CAST(N'2022-08-31T01:44:50.2278594' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (87, N'Bake for 10 minutes in the preheated oven.Remove the rolls from the oven and return them to different shelves so each one spends a little time on the top.Continue to bake for another 5 to 10 minutes, or until nicely browned on the top and bottom.', 5, 6, 1, CAST(N'2022-08-31T01:44:50.2278597' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (88, N'Preheat oven to 325 degrees F (165 degrees C). Grease a 9x5-inch loaf pan, preferably glass.', 1, 5, 1, CAST(N'2022-08-31T01:44:50.2278627' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (89, N'Mix flour, baking powder, baking soda, and salt in a bowl. Stir bananas, milk, and cinnamon in another bowl. Beat butter and sugar in a third bowl until light and fluffy. Add eggs to butter mixture, one at a time, beating well after each addition. Stir banana mixture into butter mixture. Stir in dry mixture until blended. Fold in chocolate chips until just combined. Pour batter into prepared loaf pan.', 2, 5, 1, CAST(N'2022-08-31T01:44:50.2278629' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (90, N'Bake in the preheated oven until a toothpick inserted into the center comes out clean, about 70 minutes. Cool in the pan for 10 minutes before removing to cool completely on a wire rack before slicing.', 3, 5, 1, CAST(N'2022-08-31T01:44:50.2278632' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (91, N'Mix warm water, yeast, and 1/3 cup honey in a large bowl to dissolve. Add 5 cups bread flour, and stir to combine. Let sit for 30 minutes, or until big and bubbly.', 1, 4, 1, CAST(N'2022-08-31T01:44:50.2278661' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (92, N'Mix in 3 tablespoons melted butter, remaining 1 / 3 cup honey, and salt.Stir in 2 cups whole wheat flour.Transfer dough to a floured work surface and gradually knead in remaining 2 cups whole wheat flour.Knead until dough starts to pull away from the work surface, adding more whole wheat flour if necessary; dough should be a bit tacky to the touch, but not too sticky.', 2, 4, 1, CAST(N'2022-08-31T01:44:50.2278664' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (93, N'Combine the milk, 1 cup of water, butter, sugar and salt in a saucepan. Bring to a boil then remove from the heat and let stand until lukewarm. If the mixture is too hot, it will kill the yeast.', 1, 6, 1, CAST(N'2022-08-31T01:44:50.2278587' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (94, N'Transfer chicken to a baking dish.Top each breast with 2 tablespoons tomato sauce.Layer each chicken breast with equal amounts of mozzarella cheese, fresh basil, and provolone cheese.Sprinkle remaining Parmesan over top and drizzle each with 1 / 2 teaspoon olive oil.', 8, 23, 1, CAST(N'2022-08-31T01:44:50.2277847' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (95, N'Frost brownies while they are still warm.', 5, 17, 1, CAST(N'2022-08-31T01:44:50.2278226' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (96, N'Dip a flour-coated chicken breast in beaten eggs. Transfer breast to the bread crumb mixture, pressing crumbs into both sides.Repeat for each breast. Let chicken rest for 10 to 15 minutes.', 6, 23, 1, CAST(N'2022-08-31T01:44:50.2277842' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (97, N'Preheat a grill on high heat.', 1, 22, 1, CAST(N'2022-08-31T01:44:50.2277776' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (98, N'Heat 1 / 2 inch olive oil in a large skillet on medium - high heat until it begins to shimmer.Cook chicken in the hot oil until golden, about 2 minutes per side.The chicken will finish cooking in the oven.', 7, 23, 1, CAST(N'2022-08-31T01:44:50.2277844' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (99, N'Bake in preheated oven for 25 minutes.Remove foil, and bake an additional 25 minutes.Cool for 15 minutes before serving.', 5, 24, 1, CAST(N'2022-08-31T01:44:50.2277717' AS DateTime2), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (100, N'To assemble, spread 1 1 / 2 cups of meat sauce in the bottom of a 9x13 - inch baking dish.Arrange 6 noodles lengthwise over meat sauce.Spread with one half of the ricotta cheese mixture.Top with a third of mozzarella cheese slices.Spoon 1 1 / 2 cups meat sauce over mozzarella, and sprinkle with 1 / 4 cup Parmesan cheese.Repeat layers, and top with remaining mozzarella and Parmesan cheese.Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.', 4, 24, 1, CAST(N'2022-08-31T01:44:50.2277715' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (101, N'Preheat oven to 375 degrees F(190 degrees C).', 3, 24, 1, CAST(N'2022-08-31T01:44:50.2277711' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (102, N'Preheat an oven to 450 degrees F (230 degrees C).', 1, 23, 1, CAST(N'2022-08-31T01:44:50.2277828' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (103, N'Place chicken breasts between two sheets of heavy plastic (resealable freezer bags work well) on a solid, level surface. Firmly pound chicken with the smooth side of a meat mallet to a thickness of 1/2-inch. Season chicken thoroughly with salt and pepper.', 2, 23, 1, CAST(N'2022-08-31T01:44:50.2277831' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (104, N'Beat eggs in a shallow bowl and set aside.', 3, 23, 1, CAST(N'2022-08-31T01:44:50.2277835' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (105, N'Mix bread crumbs and 1/2 cup Parmesan cheese in a separate bowl, set aside.', 4, 23, 1, CAST(N'2022-08-31T01:44:50.2277837' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (106, N'Bring a large pot of lightly salted water to a boil.Cook lasagna noodles in boiling water for 8 to 10 minutes.Drain noodles, and rinse with cold water.In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1 / 2 teaspoon salt.', 2, 24, 1, CAST(N'2022-08-31T01:44:50.2277709' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (107, N'In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 teaspoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1 / 2 hours, stirring occasionally.', 1, 24, 1, CAST(N'2022-08-31T01:44:50.2277706' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (108, N'Use a spider spoon or a pair of tongs to lower 3 to 4 mozzarella sticks into the hot oil. Fry until golden brown, about 30 seconds. Remove from heat and drain on paper towels. Repeat to fry remaining mozzarella sticks.', 4, 21, 1, CAST(N'2022-08-31T01:44:50.2277680' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (109, N'Dredge a mozzarella stick in flour; shake off excess. Dip into egg mixture. Lift up so excess egg drips back in the bowl. Press into bread crumbs to coat. Place breaded mozzarella stick on a plate or wire rack. Repeat with remaining mozzarella sticks.', 3, 21, 1, CAST(N'2022-08-31T01:44:50.2277677' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (110, N'Heat oil to 365 degrees F (185 degrees C) in a large, heavy saucepan.', 2, 21, 1, CAST(N'2022-08-31T01:44:50.2277675' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (111, N'Whisk water and eggs together in a small bowl. Mix bread crumbs and garlic salt together in a medium bowl. Blend flour and cornstarch together in a third bowl.', 1, 21, 1, CAST(N'2022-08-31T01:44:50.2277672' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (112, N'Thread a tomato half, a small piece of basil leaf, and a mozzarella ball onto toothpicks until all ingredients are used. Drizzle the olive oil over the tomato, cheese and basil, leaving the end of the toothpick clean. Sprinkle with salt and pepper. Serve immediately.', 0, 20, 1, CAST(N'2022-08-31T01:44:50.2277647' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (113, N'Generously fill egg halves with filling and sprinkle each deviled egg with paprika. Refrigerate until chilled before serving.', 4, 19, 1, CAST(N'2022-08-31T01:44:50.2277609' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (114, N'Slice eggs in half lengthwise and scoop yolks into a bowl; transfer egg white halves to a plate. Mash egg yolks with a fork; stir in sour cream, mayonnaise, ranch dressing, Dijon mustard, garlic powder, onion powder, and lemon pepper seasoning until yolk mixture is smooth. Stir in sauteed onions, bacon bits and Cheddar cheese.', 3, 19, 1, CAST(N'2022-08-31T01:44:50.2277607' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (115, N'Heat vegetable oil in a small skillet over medium heat and cook and stir onion until translucent, about 5 minutes. Remove from heat and let cool.', 2, 19, 1, CAST(N'2022-08-31T01:44:50.2277605' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (116, N'Place eggs into a large pot and cover with lightly salted water. Bring to a boil and reduce heat to medium; boil eggs for 10 to 12 minutes. Drain the boiling water and fill pot with cold water. After 2 to 3 minutes, pour off water and replace with more cold water. Repeat until eggs are fully chilled, 10 to 15 minutes. Peel eggs.', 1, 19, 1, CAST(N'2022-08-31T01:44:50.2277602' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (117, N'Mix tomatoes, onion, cilantro, lemon juice, and jalapeno pepper into mashed avocado until well combined; season with salt and black pepper.', 2, 1, 1, CAST(N'2022-08-31T01:44:50.2277574' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (118, N'Place flour in a sifter or strainer; sprinkle over chicken breasts, evenly coating both sides.', 5, 23, 1, CAST(N'2022-08-31T01:44:50.2277840' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (119, N'Mix together ground beef, onion, cheese, onion soup mix, egg, garlic, garlic powder, soy sauce, Worcestershire sauce, parsley, basil, oregano, rosemary, salt, and pepper in a large bowl. Use your hands to form 4 patties.', 2, 22, 1, CAST(N'2022-08-31T01:44:50.2277778' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Directions] ([Id], [Step], [StepNumber], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (120, N'Cook patties on the preheated grill until well-done, about 5 minutes per side.', 3, 22, 1, CAST(N'2022-08-31T01:44:50.2277781' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Directions] OFF
GO
INSERT [dbo].[Favorites] ([UserId], [RecipeId]) VALUES (1, 2)
INSERT [dbo].[Favorites] ([UserId], [RecipeId]) VALUES (1, 19)
INSERT [dbo].[Favorites] ([UserId], [RecipeId]) VALUES (1, 23)
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'how_to_make_vanilla_ice_cream.png', 1, CAST(N'2022-08-31T01:44:50.2277522' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'old-fashioned_lemonade.jfif', 1, CAST(N'2022-08-31T01:44:50.2277524' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'parker''s_famous_margaritas.jpg', 1, CAST(N'2022-08-31T01:44:50.2277530' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'best_strawberry_daiquiri.jfif', 1, CAST(N'2022-08-31T01:44:50.2277532' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'strawberry_mojito.jpg', 1, CAST(N'2022-08-31T01:44:50.2277534' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (6, N'classic_old_fashioned.jfif', 1, CAST(N'2022-08-31T01:44:50.2277537' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (7, N'belle''s_hamburger_buns.jfif', 1, CAST(N'2022-08-31T01:44:50.2277544' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (8, N'naan.jfif', 1, CAST(N'2022-08-31T01:44:50.2277541' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (9, N'the_best_lemon_bars.jfif', 1, CAST(N'2022-08-31T01:44:50.2277519' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (10, N'banana_chocolate_chip_bread.jfif', 1, CAST(N'2022-08-31T01:44:50.2277546' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (11, N'simple_whole_wheat_bread.jfif', 1, CAST(N'2022-08-31T01:44:50.2277549' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (12, N'brioche.jfif', 1, CAST(N'2022-08-31T01:44:50.2277551' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (13, N'traditional_layered_french_croissant.jpg', 1, CAST(N'2022-08-31T01:44:50.2277554' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (14, N'classic_bloody_mary.jfif', 1, CAST(N'2022-08-31T01:44:50.2277539' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (15, N'edible_cookie_dough.jfif', 1, CAST(N'2022-08-31T01:44:50.2277517' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (16, N'mom''s_potato_salad.png', 1, CAST(N'2022-08-31T01:44:50.2277510' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (17, N'best_brownies.jfif', 1, CAST(N'2022-08-31T01:44:50.2277512' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (18, N'traditional_mexican_guacamole.jpg', 1, CAST(N'2022-08-31T01:44:50.2277468' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (19, N'fully_loaded_deviled_eggs.jpg', 1, CAST(N'2022-08-31T01:44:50.2277471' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (20, N'caprese_on_a_stick.jpg', 1, CAST(N'2022-08-31T01:44:50.2277474' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (21, N'fried_mozzarela_cheese_sticks.jfif', 1, CAST(N'2022-08-31T01:44:50.2277479' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (22, N'world''s_best_lasagna.jfif', 1, CAST(N'2022-08-31T01:44:50.2277481' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (23, N'best_hamburger_ever.jfif', 1, CAST(N'2022-08-31T01:44:50.2277484' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (24, N'best_chocolate_chip_cookies.jfif', 1, CAST(N'2022-08-31T01:44:50.2277515' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (25, N'chicken_parmesan.jfif', 1, CAST(N'2022-08-31T01:44:50.2277490' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (26, N'easy_fried_rice.jfif', 1, CAST(N'2022-08-31T01:44:50.2277496' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (27, N'indian_chicken_curry_(murgh_ kari).jfif', 1, CAST(N'2022-08-31T01:44:50.2277499' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (28, N'potato_salad.jfif', 1, CAST(N'2022-08-31T01:44:50.2277502' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (29, N'marinated_cucumber,_onion,_and_tomato_salad.jfif', 1, CAST(N'2022-08-31T01:44:50.2277505' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (30, N'awesome_pasta_salad.jfif', 1, CAST(N'2022-08-31T01:44:50.2277507' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Images] ([Id], [Path], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (31, N'easy_meatloaf.jfif', 1, CAST(N'2022-08-31T01:44:50.2277493' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 

INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'1/3 cup ketchup', 31, 1, CAST(N'2022-08-31T01:44:50.2277920' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'1/4 cup chopped fresh basil', 23, 1, CAST(N'2022-08-31T01:44:50.2277875' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'1/2 cup grated provolone cheese', 23, 1, CAST(N'2022-08-31T01:44:50.2277877' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'2 large eggs, beaten', 21, 1, CAST(N'2022-08-31T01:44:50.2277682' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'1/4 cup water', 21, 1, CAST(N'2022-08-31T01:44:50.2277685' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (6, N'1 1/2 cups Italian seasoned bread crumbs', 21, 1, CAST(N'2022-08-31T01:44:50.2277688' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (7, N'1/2 teaspoon garlic salt', 21, 1, CAST(N'2022-08-31T01:44:50.2277690' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (8, N'2/3 cup all-purpose flour', 21, 1, CAST(N'2022-08-31T01:44:50.2277693' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (9, N'1/3 cup cornstarch', 21, 1, CAST(N'2022-08-31T01:44:50.2277695' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (10, N'2 cups oil for frying, or as needed', 21, 1, CAST(N'2022-08-31T01:44:50.2277698' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (11, N'2 garlic-stuffed green olives, threaded onto a toothpick', 16, 1, CAST(N'2022-08-31T01:44:50.2278529' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (12, N'1 stalk celery', 16, 1, CAST(N'2022-08-31T01:44:50.2278527' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (13, N'salt and ground black pepper to taste', 16, 1, CAST(N'2022-08-31T01:44:50.2278525' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (14, N'1 dash hot pepper sauce (such as Tabasco®)', 16, 1, CAST(N'2022-08-31T01:44:50.2278521' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (15, N'1/4 cup fresh mozzarella, cut into small cubes', 23, 1, CAST(N'2022-08-31T01:44:50.2277872' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (16, N'2 dashes Worcestershire sauce', 16, 1, CAST(N'2022-08-31T01:44:50.2278514' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (17, N'1 (.25 ounce) package active dry yeast', 7, 1, CAST(N'2022-08-31T01:44:50.2278562' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (18, N'1/4 cup white sugar', 7, 1, CAST(N'2022-08-31T01:44:50.2278567' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (19, N'2 tablespoons butter', 6, 1, CAST(N'2022-08-31T01:44:50.2278606' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (20, N'1 cup water', 6, 1, CAST(N'2022-08-31T01:44:50.2278604' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (21, N'1 cup milk', 6, 1, CAST(N'2022-08-31T01:44:50.2278602' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (22, N'1 (16 ounce) package small fresh mozzarella balls', 20, 1, CAST(N'2022-08-31T01:44:50.2277655' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (23, N'toothpicks', 20, 1, CAST(N'2022-08-31T01:44:50.2277657' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (24, N'3 tablespoons olive oil', 20, 1, CAST(N'2022-08-31T01:44:50.2277660' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (25, N'1 cup warm water', 7, 1, CAST(N'2022-08-31T01:44:50.2278565' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (26, N'salt and pepper to taste', 20, 1, CAST(N'2022-08-31T01:44:50.2277667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (27, N'1/4 cup butter, melted', 7, 1, CAST(N'2022-08-31T01:44:50.2278583' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (28, N'2 teaspoons minced garlic (Optional)', 7, 1, CAST(N'2022-08-31T01:44:50.2278579' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (29, N'4 1/2 cups bread flour', 7, 1, CAST(N'2022-08-31T01:44:50.2278577' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (30, N'2 teaspoons salt', 7, 1, CAST(N'2022-08-31T01:44:50.2278574' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (31, N'1 large egg, beaten', 7, 1, CAST(N'2022-08-31T01:44:50.2278572' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (32, N'3 tablespoons milk', 7, 1, CAST(N'2022-08-31T01:44:50.2278570' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (33, N'1/2 cup prepared tomato sauce', 23, 1, CAST(N'2022-08-31T01:44:50.2277870' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (34, N'1 (1.5 fluid ounce) jigger vodka', 16, 1, CAST(N'2022-08-31T01:44:50.2278512' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (35, N'3/4 cup spicy tomato-vegetable juice cocktail (such as V8®)', 16, 1, CAST(N'2022-08-31T01:44:50.2278509' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (36, N'ice cubes, as needed', 16, 1, CAST(N'2022-08-31T01:44:50.2278507' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (37, N'white sugar, for rimming', 9, 1, CAST(N'2022-08-31T01:44:50.2278453' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (38, N'1 egg', 31, 1, CAST(N'2022-08-31T01:44:50.2277902' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (39, N'1 onion, chopped', 31, 1, CAST(N'2022-08-31T01:44:50.2277905' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (40, N'1/4 cup lemon-lime flavored carbonated beverage', 10, 1, CAST(N'2022-08-31T01:44:50.2278440' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (41, N'3/4 cup rum', 10, 1, CAST(N'2022-08-31T01:44:50.2278437' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (42, N'1/2 cup lemon juice', 10, 1, CAST(N'2022-08-31T01:44:50.2278435' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (43, N'2 large limes, quartered', 9, 1, CAST(N'2022-08-31T01:44:50.2278455' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (44, N'1/8 cup lime juice', 10, 1, CAST(N'2022-08-31T01:44:50.2278431' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (45, N'1/2 cup white sugar', 10, 1, CAST(N'2022-08-31T01:44:50.2278427' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (46, N'6 cups ice', 10, 1, CAST(N'2022-08-31T01:44:50.2278424' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (47, N'1 pound sweet Italian sausage', 24, 1, CAST(N'2022-08-31T01:44:50.2277719' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (48, N'rimming salt', 11, 1, CAST(N'2022-08-31T01:44:50.2278416' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (49, N'1 lime, cut into wedges', 11, 1, CAST(N'2022-08-31T01:44:50.2278413' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (50, N'ice cubes', 11, 1, CAST(N'2022-08-31T01:44:50.2278411' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (51, N'4 ounces frozen strawberries', 10, 1, CAST(N'2022-08-31T01:44:50.2278429' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (52, N'1 tablespoon white sugar', 6, 1, CAST(N'2022-08-31T01:44:50.2278609' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (53, N'1/2 bunch mint leaves', 9, 1, CAST(N'2022-08-31T01:44:50.2278458' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (54, N'1 cup white sugar', 9, 1, CAST(N'2022-08-31T01:44:50.2278463' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (55, N'1 teaspoon sea salt, or as needed', 16, 1, CAST(N'2022-08-31T01:44:50.2278505' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (56, N'1 (16 ounce) package mozzarella cheese sticks', 21, 1, CAST(N'2022-08-31T01:44:50.2277700' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (57, N'2 teaspoons olive oil', 23, 1, CAST(N'2022-08-31T01:44:50.2277879' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (58, N'1 maraschino cherry', 8, 1, CAST(N'2022-08-31T01:44:50.2278492' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (59, N'1 slice orange', 8, 1, CAST(N'2022-08-31T01:44:50.2278489' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (60, N'1 (1.5 fluid ounce) jigger bourbon whiskey', 8, 1, CAST(N'2022-08-31T01:44:50.2278487' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (61, N'7 strawberries, quartered', 9, 1, CAST(N'2022-08-31T01:44:50.2278460' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (62, N'1 cup ice cubes', 8, 1, CAST(N'2022-08-31T01:44:50.2278484' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (63, N'1 teaspoon water', 8, 1, CAST(N'2022-08-31T01:44:50.2278479' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (64, N'2 teaspoons simple syrup', 8, 1, CAST(N'2022-08-31T01:44:50.2278477' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (65, N'1 1/2 pounds ground beef', 31, 1, CAST(N'2022-08-31T01:44:50.2277900' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (66, N'8 cups ice cubes', 9, 1, CAST(N'2022-08-31T01:44:50.2278470' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (67, N'2 cups club soda', 9, 1, CAST(N'2022-08-31T01:44:50.2278467' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (68, N'1 cup white rum', 9, 1, CAST(N'2022-08-31T01:44:50.2278465' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (69, N'2 dashes bitters', 8, 1, CAST(N'2022-08-31T01:44:50.2278482' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (70, N'3 fluid ounces triple sec (orange-flavored liqueur)', 11, 1, CAST(N'2022-08-31T01:44:50.2278409' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (71, N'1 1/2 teaspoons salt', 6, 1, CAST(N'2022-08-31T01:44:50.2278611' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (72, N'1 (.25 ounce) envelope active dry yeast', 6, 1, CAST(N'2022-08-31T01:44:50.2278617' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (73, N'salt and freshly ground black pepper to taste', 23, 1, CAST(N'2022-08-31T01:44:50.2277854' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (74, N'2 large eggs', 23, 1, CAST(N'2022-08-31T01:44:50.2277857' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (75, N'1 cup panko bread crumbs, or more as needed', 23, 1, CAST(N'2022-08-31T01:44:50.2277859' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (76, N'3/4 cup grated Parmesan cheese, divided', 23, 1, CAST(N'2022-08-31T01:44:50.2277862' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (77, N'1 teaspoon cold water', 3, 1, CAST(N'2022-08-31T01:44:50.2278731' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (78, N'1 egg yolk', 3, 1, CAST(N'2022-08-31T01:44:50.2278728' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (79, N'salt and ground black pepper to taste', 1, 1, CAST(N'2022-08-31T01:44:50.2277597' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (80, N'1 cup butter, softened', 3, 1, CAST(N'2022-08-31T01:44:50.2278726' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (81, N'1 teaspoon salt', 3, 1, CAST(N'2022-08-31T01:44:50.2278723' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (82, N'1 tablespoon white sugar', 3, 1, CAST(N'2022-08-31T01:44:50.2278721' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (83, N'3 1/2 cups all-purpose flour', 3, 1, CAST(N'2022-08-31T01:44:50.2278719' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (84, N'1/3 cup warm water (110 degrees F)', 3, 1, CAST(N'2022-08-31T01:44:50.2278717' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (85, N'1 tablespoon active dry yeast', 3, 1, CAST(N'2022-08-31T01:44:50.2278714' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (86, N'12 eggs', 19, 1, CAST(N'2022-08-31T01:44:50.2277613' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (87, N'4 eggs', 3, 1, CAST(N'2022-08-31T01:44:50.2278724' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (88, N'1 teaspoon vegetable oil', 19, 1, CAST(N'2022-08-31T01:44:50.2277615' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (89, N'1 jalapeno pepper, seeded and minced (Optional)', 1, 1, CAST(N'2022-08-31T01:44:50.2277594' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (90, N'1/4 cup chopped cilantro', 1, 1, CAST(N'2022-08-31T01:44:50.2277588' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (91, N'1 egg', 2, 1, CAST(N'2022-08-31T01:44:50.2278782' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (92, N'1/2 cup heavy cream', 2, 1, CAST(N'2022-08-31T01:44:50.2278780' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (93, N'1 cup milk', 2, 1, CAST(N'2022-08-31T01:44:50.2278777' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (94, N'1/4 cup lukewarm water', 2, 1, CAST(N'2022-08-31T01:44:50.2278775' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (95, N'2 (.25 ounce) packages active dry yeast', 2, 1, CAST(N'2022-08-31T01:44:50.2278772' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (96, N'3 tablespoons sugar', 2, 1, CAST(N'2022-08-31T01:44:50.2278770' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (97, N'2 tablespoons lemon juice', 1, 1, CAST(N'2022-08-31T01:44:50.2277591' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (98, N'1/2 teaspoon salt', 2, 1, CAST(N'2022-08-31T01:44:50.2278768' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (99, N'1 1/2 cups unsalted butter, at room temperature', 2, 1, CAST(N'2022-08-31T01:44:50.2278765' AS DateTime2), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (100, N'2 tablespoons all-purpose flour', 2, 1, CAST(N'2022-08-31T01:44:50.2278764' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (101, N'4 skinless, boneless chicken breast halves', 23, 1, CAST(N'2022-08-31T01:44:50.2277852' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (102, N'2 avocados, peeled and pitted', 1, 1, CAST(N'2022-08-31T01:44:50.2277577' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (103, N'1 cup chopped tomatoes', 1, 1, CAST(N'2022-08-31T01:44:50.2277584' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (104, N'1/4 cup chopped onion', 1, 1, CAST(N'2022-08-31T01:44:50.2277586' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (105, N'4 cups all-purpose flour, divided', 2, 1, CAST(N'2022-08-31T01:44:50.2278767' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (106, N'5 1/2 cups all-purpose flour', 6, 1, CAST(N'2022-08-31T01:44:50.2278614' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (107, N'1 small onion, chopped', 19, 1, CAST(N'2022-08-31T01:44:50.2277618' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (108, N'2 tablespoons mayonnaise', 19, 1, CAST(N'2022-08-31T01:44:50.2277622' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (109, N'1 cup white sugar', 5, 1, CAST(N'2022-08-31T01:44:50.2278653' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (110, N'1/2 cup butter, softened', 5, 1, CAST(N'2022-08-31T01:44:50.2278651' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (111, N'1 teaspoon ground cinnamon, or to taste', 5, 1, CAST(N'2022-08-31T01:44:50.2278649' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (112, N'1 tablespoon milk', 5, 1, CAST(N'2022-08-31T01:44:50.2278646' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (113, N'3 ripe bananas, mashed', 5, 1, CAST(N'2022-08-31T01:44:50.2278644' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (114, N'1 teaspoon salt', 5, 1, CAST(N'2022-08-31T01:44:50.2278641' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (115, N'2 eggs', 5, 1, CAST(N'2022-08-31T01:44:50.2278655' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (116, N'1 teaspoon baking soda', 5, 1, CAST(N'2022-08-31T01:44:50.2278639' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (117, N'2 cups all-purpose flour', 5, 1, CAST(N'2022-08-31T01:44:50.2278634' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (118, N'1/2 cup olive oil for frying, or as needed', 23, 1, CAST(N'2022-08-31T01:44:50.2277867' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (119, N'1 pint cherry tomatoes, halved', 20, 1, CAST(N'2022-08-31T01:44:50.2277650' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (120, N'1 (.6 ounce) package fresh basil leaves', 20, 1, CAST(N'2022-08-31T01:44:50.2277652' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (121, N'1 tablespoon water', 6, 1, CAST(N'2022-08-31T01:44:50.2278621' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (122, N'1 egg yolk', 6, 1, CAST(N'2022-08-31T01:44:50.2278619' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (123, N'1 teaspoon baking powder', 5, 1, CAST(N'2022-08-31T01:44:50.2278637' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (124, N'1/4 cup sour cream', 19, 1, CAST(N'2022-08-31T01:44:50.2277620' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (125, N'1 cup semisweet chocolate chips', 5, 1, CAST(N'2022-08-31T01:44:50.2278657' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (126, N'¼ teaspoon paprika, or as needed', 19, 1, CAST(N'2022-08-31T01:44:50.2277642' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (127, N'1 tablespoon ranch dressing, or to taste', 19, 1, CAST(N'2022-08-31T01:44:50.2277625' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (128, N'1 1/2 teaspoons Dijon mustard', 19, 1, CAST(N'2022-08-31T01:44:50.2277627' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (129, N'4 cups whole wheat flour, or more as needed', 4, 1, CAST(N'2022-08-31T01:44:50.2278695' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (130, N'1 tablespoon salt', 4, 1, CAST(N'2022-08-31T01:44:50.2278692' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (131, N'5 tablespoons butter, melted, divided', 4, 1, CAST(N'2022-08-31T01:44:50.2278690' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (132, N'5 cups bread flour', 4, 1, CAST(N'2022-08-31T01:44:50.2278688' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (133, N'2 tablespoons all-purpose flour, or more if needed', 23, 1, CAST(N'2022-08-31T01:44:50.2277864' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (134, N'2/3 cup honey, divided', 4, 1, CAST(N'2022-08-31T01:44:50.2278686' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (135, N'3 cups warm water (110 degrees F/45 degrees C)', 4, 1, CAST(N'2022-08-31T01:44:50.2278681' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (136, N'1/2 teaspoon garlic powder', 19, 1, CAST(N'2022-08-31T01:44:50.2277630' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (137, N'1/2 pinch onion powder', 19, 1, CAST(N'2022-08-31T01:44:50.2277632' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (138, N'1/8 teaspoon lemon pepper seasoning', 19, 1, CAST(N'2022-08-31T01:44:50.2277635' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (139, N'1 tablespoon bacon bits, or to taste', 19, 1, CAST(N'2022-08-31T01:44:50.2277637' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (140, N'1 cup finely shredded sharp Cheddar cheese', 19, 1, CAST(N'2022-08-31T01:44:50.2277639' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (141, N'2 (.25 ounce) packages active dry yeast', 4, 1, CAST(N'2022-08-31T01:44:50.2278684' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (142, N'2 tablespoons prepared mustard', 31, 1, CAST(N'2022-08-31T01:44:50.2277918' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (143, N'1 fluid ounce sweetened lime juice ', 11, 1, CAST(N'2022-08-31T01:44:50.2278406' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (144, N'5 fluid ounces tequila', 11, 1, CAST(N'2022-08-31T01:44:50.2278402' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (145, N'1/2 cup shredded Colby Jack or Cheddar cheese', 22, 1, CAST(N'2022-08-31T01:44:50.2277788' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (146, N'1 (1 ounce) envelope dry onion soup mix', 22, 1, CAST(N'2022-08-31T01:44:50.2277792' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (147, N'1/2 teaspoon ground black pepper', 27, 1, CAST(N'2022-08-31T01:44:50.2278060' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (148, N'1 teaspoon salt, or to taste', 27, 1, CAST(N'2022-08-31T01:44:50.2278058' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (149, N'1 tablespoon apple cider vinegar', 27, 1, CAST(N'2022-08-31T01:44:50.2278055' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (150, N'3 tablespoons prepared mustard', 27, 1, CAST(N'2022-08-31T01:44:50.2278053' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (151, N'1 cup water', 28, 1, CAST(N'2022-08-31T01:44:50.2278072' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (152, N'1/2 cup chopped celery', 27, 1, CAST(N'2022-08-31T01:44:50.2278047' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (153, N'5 hard-cooked eggs, chopped', 27, 1, CAST(N'2022-08-31T01:44:50.2278042' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (154, N'2 cups finely chopped pickles', 27, 1, CAST(N'2022-08-31T01:44:50.2278040' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (155, N'3 cups mayonnaise', 27, 1, CAST(N'2022-08-31T01:44:50.2278037' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (156, N'5 pounds red potatoes, chopped', 27, 1, CAST(N'2022-08-31T01:44:50.2278035' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (157, N'1 egg', 22, 1, CAST(N'2022-08-31T01:44:50.2277794' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (158, N'1 clove garlic, minced', 22, 1, CAST(N'2022-08-31T01:44:50.2277797' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (159, N'1/2 cup chopped red onion', 27, 1, CAST(N'2022-08-31T01:44:50.2278044' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (160, N'1 tablespoon fresh lemon juice', 26, 1, CAST(N'2022-08-31T01:44:50.2278023' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (161, N'1/2 cup distilled white vinegar', 28, 1, CAST(N'2022-08-31T01:44:50.2278074' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (162, N'1/4 cup sugar', 28, 1, CAST(N'2022-08-31T01:44:50.2278079' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (163, N'1 (10 ounce) can black olives, drained', 29, 1, CAST(N'2022-08-31T01:44:50.2278180' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (164, N'1 large green bell pepper, cut into 1 inch pieces', 29, 1, CAST(N'2022-08-31T01:44:50.2278177' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (165, N'1/4 pound sliced pepperoni, cut in half', 29, 1, CAST(N'2022-08-31T01:44:50.2278175' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (166, N'1/2 pound salami, cubed', 29, 1, CAST(N'2022-08-31T01:44:50.2278172' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (167, N'1/2 pound provolone cheese, cubed', 29, 1, CAST(N'2022-08-31T01:44:50.2278170' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (168, N'3 cups cherry tomatoes, halved', 29, 1, CAST(N'2022-08-31T01:44:50.2278168' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (169, N'1/4 cup vegetable oil', 28, 1, CAST(N'2022-08-31T01:44:50.2278076' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (170, N'1 (16 ounce) package fusilli (spiral) pasta', 29, 1, CAST(N'2022-08-31T01:44:50.2278165' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (171, N'1/2 onion, finely chopped', 22, 1, CAST(N'2022-08-31T01:44:50.2277786' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (172, N'1 onion, sliced and separated into rings', 28, 1, CAST(N'2022-08-31T01:44:50.2278154' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (173, N'3 tomatoes, cut into wedges', 28, 1, CAST(N'2022-08-31T01:44:50.2278151' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (174, N'3 cucumbers, peeled and sliced 1/4-inch thick', 28, 1, CAST(N'2022-08-31T01:44:50.2278086' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (175, N'1 teaspoon freshly ground black pepper, or to taste', 28, 1, CAST(N'2022-08-31T01:44:50.2278084' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (176, N'1 teaspoon salt, or to taste', 28, 1, CAST(N'2022-08-31T01:44:50.2278081' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (177, N'1 1/2 pounds lean ground beef', 22, 1, CAST(N'2022-08-31T01:44:50.2277783' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (178, N'1 (4 ounce) jar pimentos, drained', 29, 1, CAST(N'2022-08-31T01:44:50.2278182' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (179, N'1 tablespoon chopped fresh cilantro', 26, 1, CAST(N'2022-08-31T01:44:50.2278021' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (180, N'1/2 cup water', 26, 1, CAST(N'2022-08-31T01:44:50.2278016' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (181, N'1 teaspoon Worcestershire sauce', 22, 1, CAST(N'2022-08-31T01:44:50.2277805' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (182, N'1 teaspoon dried parsley', 22, 1, CAST(N'2022-08-31T01:44:50.2277809' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (183, N'1 teaspoon dried basil', 22, 1, CAST(N'2022-08-31T01:44:50.2277811' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (184, N'2 teaspoons sesame oil, or to taste', 25, 1, CAST(N'2022-08-31T01:44:50.2277952' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (185, N'1 tablespoon soy sauce, or more to taste', 25, 1, CAST(N'2022-08-31T01:44:50.2277950' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (186, N'3 cups leftover cooked white rice', 25, 1, CAST(N'2022-08-31T01:44:50.2277947' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (187, N'1 teaspoon soy sauce', 22, 1, CAST(N'2022-08-31T01:44:50.2277803' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (188, N'2 large eggs', 25, 1, CAST(N'2022-08-31T01:44:50.2277945' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (189, N'2 tablespoons vegetable oil', 25, 1, CAST(N'2022-08-31T01:44:50.2277940' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (190, N'1/2 cup frozen green peas', 25, 1, CAST(N'2022-08-31T01:44:50.2277936' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (191, N'2/3 cup chopped baby carrots', 25, 1, CAST(N'2022-08-31T01:44:50.2277933' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (192, N'1 teaspoon dried oregano', 22, 1, CAST(N'2022-08-31T01:44:50.2277815' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (193, N'1/2 teaspoon crushed dried rosemary', 22, 1, CAST(N'2022-08-31T01:44:50.2277820' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (194, N'salt and pepper to taste', 22, 1, CAST(N'2022-08-31T01:44:50.2277822' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (195, N'1 clove garlic, minced, or to taste (Optional)', 25, 1, CAST(N'2022-08-31T01:44:50.2277943' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (196, N'1 teaspoon garam masala', 26, 1, CAST(N'2022-08-31T01:44:50.2278019' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (197, N'1 tablespoon garlic powder', 22, 1, CAST(N'2022-08-31T01:44:50.2277800' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (198, N'2 teaspoons salt', 26, 1, CAST(N'2022-08-31T01:44:50.2277976' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (199, N'1 teaspoon salt', 26, 1, CAST(N'2022-08-31T01:44:50.2278014' AS DateTime2), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (200, N'1 tablespoon chopped fresh cilantro', 26, 1, CAST(N'2022-08-31T01:44:50.2278012' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (201, N'1 cup plain yogurt', 26, 1, CAST(N'2022-08-31T01:44:50.2278009' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (202, N'1 (15 ounce) can crushed tomatoes', 26, 1, CAST(N'2022-08-31T01:44:50.2278007' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (203, N'1 tablespoon water', 26, 1, CAST(N'2022-08-31T01:44:50.2278004' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (204, N'1 teaspoon cayenne pepper', 26, 1, CAST(N'2022-08-31T01:44:50.2278002' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (205, N'2 pounds skinless, boneless chicken breast halves', 26, 1, CAST(N'2022-08-31T01:44:50.2277971' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (206, N'1 teaspoon ground coriander', 26, 1, CAST(N'2022-08-31T01:44:50.2277999' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (207, N'1 teaspoon ground cumin', 26, 1, CAST(N'2022-08-31T01:44:50.2277993' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (208, N'1 tablespoon curry powder', 26, 1, CAST(N'2022-08-31T01:44:50.2277991' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (209, N'1 1/2 teaspoons minced fresh ginger root', 26, 1, CAST(N'2022-08-31T01:44:50.2277987' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (210, N'1 tablespoon minced garlic', 26, 1, CAST(N'2022-08-31T01:44:50.2277984' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (211, N'1 1/2 cups chopped onion', 26, 1, CAST(N'2022-08-31T01:44:50.2277982' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (212, N'1/2 cup cooking oil', 26, 1, CAST(N'2022-08-31T01:44:50.2277979' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (213, N'1 teaspoon ground turmeric', 26, 1, CAST(N'2022-08-31T01:44:50.2277996' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (214, N'3 fluid ounces fresh lime juice ', 11, 1, CAST(N'2022-08-31T01:44:50.2278404' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (215, N'1 (8 ounce) bottle Italian salad dressing', 29, 1, CAST(N'2022-08-31T01:44:50.2278184' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (216, N'1 cup mayonnaise', 30, 1, CAST(N'2022-08-31T01:44:50.2278194' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (217, N'1 1/2cups white sugar', 14, 1, CAST(N'2022-08-31T01:44:50.2278344' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (218, N'4 eggs', 14, 1, CAST(N'2022-08-31T01:44:50.2278342' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (219, N'2 cups all-purpose flour', 14, 1, CAST(N'2022-08-31T01:44:50.2278339' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (220, N'½ cup white sugar', 14, 1, CAST(N'2022-08-31T01:44:50.2278336' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (221, N'1 cup butter, softened', 14, 1, CAST(N'2022-08-31T01:44:50.2278333' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (222, N'1/2 teaspoon fennel seeds', 24, 1, CAST(N'2022-08-31T01:44:50.2277745' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (223, N'1/4 cup all-purpose flour', 14, 1, CAST(N'2022-08-31T01:44:50.2278347' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (224, N'1 teaspoon Italian seasoning', 24, 1, CAST(N'2022-08-31T01:44:50.2277747' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (225, N'1/4 teaspoon ground black pepper', 24, 1, CAST(N'2022-08-31T01:44:50.2277753' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (226, N'1/2 cup mini chocolate chips', 15, 1, CAST(N'2022-08-31T01:44:50.2278316' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (227, N'1/2 cup milk chocolate chips', 15, 1, CAST(N'2022-08-31T01:44:50.2278313' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (228, N'2 tablespoons milk', 15, 1, CAST(N'2022-08-31T01:44:50.2278310' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (229, N'1 cup all-purpose flour', 15, 1, CAST(N'2022-08-31T01:44:50.2278308' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (230, N'1/2 teaspoon salt', 15, 1, CAST(N'2022-08-31T01:44:50.2278304' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (231, N'1 1/2 teaspoons salt, divided, or to taste', 24, 1, CAST(N'2022-08-31T01:44:50.2277749' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (232, N'1 teaspoon vanilla extract', 15, 1, CAST(N'2022-08-31T01:44:50.2278302' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (233, N'2 lemons, juiced', 14, 1, CAST(N'2022-08-31T01:44:50.2278350' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (234, N'2 tablespoons white sugar', 24, 1, CAST(N'2022-08-31T01:44:50.2277739' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (235, N'3/4 pound lean ground beef', 24, 1, CAST(N'2022-08-31T01:44:50.2277722' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (236, N'1/2 cup minced onion', 24, 1, CAST(N'2022-08-31T01:44:50.2277724' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (237, N'6 cups water, or more as needed', 12, 1, CAST(N'2022-08-31T01:44:50.2278392' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (238, N'1 cup white sugar', 12, 1, CAST(N'2022-08-31T01:44:50.2278389' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (239, N'6 lemons', 12, 1, CAST(N'2022-08-31T01:44:50.2278387' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (240, N'2 cloves garlic, crushed', 24, 1, CAST(N'2022-08-31T01:44:50.2277727' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (241, N'1 1/2 teaspoons dried basil leaves', 24, 1, CAST(N'2022-08-31T01:44:50.2277742' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (242, N'1 (28 ounce) can crushed tomatoes', 24, 1, CAST(N'2022-08-31T01:44:50.2277729' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (243, N'2 teaspoons vanilla extract', 13, 1, CAST(N'2022-08-31T01:44:50.2278375' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (244, N'2 1/4 cups milk', 13, 1, CAST(N'2022-08-31T01:44:50.2278372' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (245, N'1 cup heavy whipping cream', 13, 1, CAST(N'2022-08-31T01:44:50.2278370' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (246, N'1 cup milk', 31, 1, CAST(N'2022-08-31T01:44:50.2277907' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (247, N'2 (6.5 ounce) cans canned tomato sauce', 24, 1, CAST(N'2022-08-31T01:44:50.2277734' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (248, N'1/2 cup water', 24, 1, CAST(N'2022-08-31T01:44:50.2277736' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (249, N'2 (6 ounce) cans tomato paste', 24, 1, CAST(N'2022-08-31T01:44:50.2277731' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (250, N'2 tablespoons brown sugar', 31, 1, CAST(N'2022-08-31T01:44:50.2277915' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (251, N'1/2 cup butter', 15, 1, CAST(N'2022-08-31T01:44:50.2278299' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (252, N'4 tablespoons chopped fresh parsley', 24, 1, CAST(N'2022-08-31T01:44:50.2277755' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (253, N'1 teaspoon vanilla extract', 17, 1, CAST(N'2022-08-31T01:44:50.2278236' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (254, N'2 eggs', 17, 1, CAST(N'2022-08-31T01:44:50.2278234' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (255, N'1 cup white sugar', 17, 1, CAST(N'2022-08-31T01:44:50.2278231' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (256, N'1/2 cup butter', 17, 1, CAST(N'2022-08-31T01:44:50.2278229' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (257, N'1 tablespoon water', 2, 1, CAST(N'2022-08-31T01:44:50.2278784' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (258, N'3/4 pound mozzarella cheese, sliced', 24, 1, CAST(N'2022-08-31T01:44:50.2277767' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (259, N'1/3 cup unsweetened cocoa powder', 17, 1, CAST(N'2022-08-31T01:44:50.2278238' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (260, N'3/4 cup grated Parmesan cheese', 24, 1, CAST(N'2022-08-31T01:44:50.2277769' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (261, N'salt and pepper to taste', 31, 1, CAST(N'2022-08-31T01:44:50.2277913' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (262, N'4 medium cucumbers, peeled and sliced', 30, 1, CAST(N'2022-08-31T01:44:50.2278205' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (263, N'1/2 teaspoon seasoned salt', 30, 1, CAST(N'2022-08-31T01:44:50.2278203' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (264, N'1/2 teaspoon dried dill weed', 30, 1, CAST(N'2022-08-31T01:44:50.2278201' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (265, N'4 teaspoons distilled white vinegar', 30, 1, CAST(N'2022-08-31T01:44:50.2278198' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (266, N'1/4 cup white sugar', 30, 1, CAST(N'2022-08-31T01:44:50.2278196' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (267, N'1 cup dried bread crumbs', 31, 1, CAST(N'2022-08-31T01:44:50.2277910' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (268, N'3/4 cup packed brown sugar', 15, 1, CAST(N'2022-08-31T01:44:50.2278297' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (269, N'1/2 cup all-purpose flour', 17, 1, CAST(N'2022-08-31T01:44:50.2278241' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (270, N'1/4 teaspoon baking powder', 17, 1, CAST(N'2022-08-31T01:44:50.2278247' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (271, N'1 cup chopped walnuts', 18, 1, CAST(N'2022-08-31T01:44:50.2278288' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (272, N'2 cups semisweet chocolate chips', 18, 1, CAST(N'2022-08-31T01:44:50.2278286' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (273, N'3 cups all-purpose flour', 18, 1, CAST(N'2022-08-31T01:44:50.2278281' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (274, N'1/2 teaspoon salt', 18, 1, CAST(N'2022-08-31T01:44:50.2278277' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (275, N'2 teaspoons hot water', 18, 1, CAST(N'2022-08-31T01:44:50.2278274' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (276, N'1 teaspoon baking soda', 18, 1, CAST(N'2022-08-31T01:44:50.2278272' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (277, N'1/4 teaspoon salt', 17, 1, CAST(N'2022-08-31T01:44:50.2278243' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (278, N'2 teaspoons vanilla extract', 18, 1, CAST(N'2022-08-31T01:44:50.2278269' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (279, N'1 cup packed brown sugar', 18, 1, CAST(N'2022-08-31T01:44:50.2278265' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (280, N'1 cup white sugar', 18, 1, CAST(N'2022-08-31T01:44:50.2278262' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (281, N'1 cup butter, softened', 18, 1, CAST(N'2022-08-31T01:44:50.2278260' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (282, N'12 lasagna noodles', 24, 1, CAST(N'2022-08-31T01:44:50.2277757' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (283, N'16 ounces ricotta cheese', 24, 1, CAST(N'2022-08-31T01:44:50.2277760' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (284, N'1 egg', 24, 1, CAST(N'2022-08-31T01:44:50.2277765' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (285, N'2 eggs', 18, 1, CAST(N'2022-08-31T01:44:50.2278267' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Ingredients] ([Id], [Value], [RecipeId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (286, N'3/4 cup white sugar', 13, 1, CAST(N'2022-08-31T01:44:50.2278368' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'Traditional Mexican Guacamole', N'10 mins', 18, 1, 2, 1, CAST(N'2022-08-31T01:44:50.2277566' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'Traditional Layered French Croissants', N'1 day 6 hrs 45 mins', 13, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278733' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'Brioche', N'1 day 3 hrs 20 mins', 12, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278697' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (4, N'Simple Whole Wheat Bread', N'2 hrs 50 mins', 11, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278659' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (5, N'Banana Chocolate Chip Bread', N'1 hr 25 mins', 10, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278624' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (6, N'Belle''s Hamburger Buns', N'2 hrs 20 mins', 7, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278585' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (7, N'Naan', N'2 hrs 30 mins', 8, 5, 2, 1, CAST(N'2022-08-31T01:44:50.2278532' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (8, N'Classic Old Fashioned', N'10 mins', 6, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278472' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (9, N'Strawberry Mojito', N'15 mins', 5, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278445' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (10, N'Best Strawberry Daiquiri', N'10 mins', 4, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278419' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (11, N'Parker''s Famous Margaritas', N'5 mins', 3, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278394' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (12, N'Old-Fashioned Lemonade', N'10 mins', 2, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278378' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (13, N'How to Make Vanilla Ice Cream', N'2 hrs 35 mins', 1, 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278352' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (14, N'The Best Lemon Bars', N'55 mins', 9, 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278319' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (15, N'Edible Cookie Dough', N'10 mins', 15, 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278291' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (16, N'Classic Bloody Mary', N'2 mins', 14, 6, 2, 1, CAST(N'2022-08-31T01:44:50.2278494' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (17, N'Best Brownies', N'45 mins', 17, 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278208' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (18, N'Best Chocolate Chip Cookies', N'1 hr', 24, 4, 2, 1, CAST(N'2022-08-31T01:44:50.2278249' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (19, N'Fully Loaded Deviled Eggs', N'2 hrs 25 mins', 19, 1, 2, 1, CAST(N'2022-08-31T01:44:50.2277599' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (20, N'Caprese on a Stick', N'15 mins', 20, 1, 2, 1, CAST(N'2022-08-31T01:44:50.2277644' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (21, N'Fried Mozzarella Cheese Sticks', N'25 mins', 21, 1, 2, 1, CAST(N'2022-08-31T01:44:50.2277670' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (22, N'Best Hamburger Ever', N'20 mins', 23, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277772' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (23, N'Chicken Parmesan', N'45 mins', 25, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277825' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (24, N'World''s Best Lasagna', N'3 hrs 15 mins', 22, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277703' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (25, N'Easy Fried Rice', N'20 mins', 26, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277923' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (26, N'Indian Chicken Curry (Murgh Kari)', N'1 hr', 27, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277955' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (27, N'Potato Salad', N'6 hrs 30 mins', 28, 3, 2, 1, CAST(N'2022-08-31T01:44:50.2278026' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (28, N'Marinated Cucumber, Onion, and Tomato Salad', N'2 hrs 15 mins', 29, 3, 2, 1, CAST(N'2022-08-31T01:44:50.2278063' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (29, N'Awesome Pasta Salad', N'40 mins', 30, 3, 2, 1, CAST(N'2022-08-31T01:44:50.2278157' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (30, N'Mom''s Cucumber Salad', N'15 mins', 16, 3, 2, 1, CAST(N'2022-08-31T01:44:50.2278187' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Recipes] ([Id], [Title], [PrepTime], [ImageId], [CategoryId], [AuthorId], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (31, N'Easy Meatloaf', N'1 hr 15 mins', 31, 2, 2, 1, CAST(N'2022-08-31T01:44:50.2277882' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 1)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 2)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 3)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 4)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 16)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 17)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 18)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 19)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (1, 20)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 1)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 2)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 3)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 4)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 16)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 17)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 18)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 19)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (2, 20)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 1)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 2)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 3)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 4)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 5)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 6)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 7)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 8)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 9)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 10)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 11)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 12)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 13)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 14)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 15)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 16)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 17)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 18)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 19)
INSERT [dbo].[UseCases] ([UserId], [UseCaseId]) VALUES (3, 20)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [FullName], [Password], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (1, N'pera@gmail.com', N'Pera', N'Petar Peric', N'$2a$11$swPEMu30P.y7ULFFig0TLeiEuJ8FHvsHxjdTZUSAdlxmPQ9xBuSl2', 1, CAST(N'2022-08-31T01:44:50.2277560' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Username], [FullName], [Password], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (2, N'recipebase@gmail.com', N'RecipeBase', N'Recipe Base', N'$2a$11$swPEMu30P.y7ULFFig0TLeiEuJ8FHvsHxjdTZUSAdlxmPQ9xBuSl2', 1, CAST(N'2022-08-31T01:44:50.2277557' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Username], [FullName], [Password], [IsActive], [CreatedAt], [DeletedAt], [DeletedBy], [UpdatedAt], [UpdatedBy]) VALUES (3, N'admin@gmail.com', N'Admin', N'Admin User', N'$2a$11$swPEMu30P.y7ULFFig0TLeiEuJ8FHvsHxjdTZUSAdlxmPQ9xBuSl2', 1, CAST(N'2022-08-31T01:44:50.2277563' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Directions] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Directions] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Ingredients] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Ingredients] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Directions]  WITH CHECK ADD  CONSTRAINT [FK_Directions_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Directions] CHECK CONSTRAINT [FK_Directions_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users_UserId]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_Ingredients_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ingredients] CHECK CONSTRAINT [FK_Ingredients_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Images_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Images_ImageId]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Users_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Users_AuthorId]
GO
ALTER TABLE [dbo].[UseCases]  WITH CHECK ADD  CONSTRAINT [FK_UseCases_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UseCases] CHECK CONSTRAINT [FK_UseCases_Users_UserId]
GO
