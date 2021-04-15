USE [master]
GO
/****** Object:  Database [NewsAPI]    Script Date: 14/04/2021 23:39:28 ******/
CREATE DATABASE [NewsAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewsAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewsAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewsAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewsAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NewsAPI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewsAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewsAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewsAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewsAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewsAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewsAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewsAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewsAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewsAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewsAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewsAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewsAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewsAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewsAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewsAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewsAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NewsAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewsAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewsAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewsAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewsAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewsAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewsAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewsAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [NewsAPI] SET  MULTI_USER 
GO
ALTER DATABASE [NewsAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewsAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewsAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewsAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewsAPI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NewsAPI', N'ON'
GO
ALTER DATABASE [NewsAPI] SET QUERY_STORE = OFF
GO
USE [NewsAPI]
GO
/****** Object:  Table [dbo].[ArticleCategories]    Script Date: 14/04/2021 23:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategories](
	[ArticleID] [int] NULL,
	[CategoryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 14/04/2021 23:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NULL,
	[Descripcion] [varchar](500) NULL,
	[Content] [varchar](max) NULL,
	[Author] [varchar](200) NULL,
	[UrlImage] [varchar](max) NULL,
 CONSTRAINT [PK_ArticleID] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 14/04/2021 23:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_CategoryID] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (1, 1)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (3, 1)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (4, 2)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (5, 6)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (6, 3)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (7, 5)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (8, 7)
GO
INSERT [dbo].[ArticleCategories] ([ArticleID], [CategoryID]) VALUES (9, 4)
GO
SET IDENTITY_INSERT [dbo].[Articles] ON 
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (1, N'Senado brasileño aprueba acuerdo de visados.', N'El Senado brasileño aprobó el acuerdo de eliminación de visados entre ambos países.', N'El Senado brasileño aprobó el acuerdo de eliminación de visados entre ambos países,  el cual había sido validado por el Congreso Nacional de la República Dominicana, informó la embajadora dominicana en Brasil, Patricia Villegas.

La aprobación fue realizada el pasado ocho de abril, donde también se aprobó un acuerdo de servicios aéreos. En febrero los brasileños aprobaron un acuerdo en el área de defensa con República Dominicana.', N'Listin Diario', N'https://images2.listindiario.com/n/content/666/665670/p/680x460/202104131912121.jpeg')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (3, N'Exportaciones superan expectativas con crecimiento.', N'Las exportaciones de bienes superaron las expectativas de crecimiento al llegar a la cifra récord de US$1,116.4 millones en marzo con un incremento de 37% con respecto al 2020.', N'Las exportaciones de bienes superaron las expectativas de crecimiento al llegar a la cifra récord de US$1,116.4 millones en marzo con un incremento de 37% con respecto al 2020, así lo informó la directora ejecutiva del Centro de Exportación e Inversión (ProDominicana), Biviana Riveiro Disla.

La funcionaria informó que el destino que adquirió mayor volumen de productos dominicanos fue el mercado estadounidense, el cual reflejó un incremento de US$170.9 millones, lo que equivale a un crecimiento interanual de 44%.', N'Alfredo Martinez', N'https://images2.listindiario.com/n/content/666/665534/p/680x460/202104122319391.jpeg')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (4, N'Rafael Dolis gana, Guerrero Jr. se va de 4-2 en triunfo de Toronto sobre Yankees', N'Bo Bichette sacudió un par de jonrones, incluyendo el batazo que sentenció el juego.', N'DUNEDIN, Florida.- Bo Bichette sacudió un par de jonrones, incluyendo el batazo que sentenció el juego, y los Azulejos de Toronto vencieron este miércoles por 5-4 a los Yankees de Nueva York.

Bichette desapareció un lanzamiento de Chad Green (0-2) por banda contraria, hacia el jardín derecho-central, para dejar tendidos a los Yankees. T

oronto se llevó dos de tres juegos en la serie. El mexicano Alejandro Kirk también la sacó del parque por los Azulejos.', N'Omar Vilorio', N'https://images2.listindiario.com/n/content/666/665854/p/680x460/202104142139371.jpeg')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (5, N'Descubren el chorro cósmico más distante a 13.000 millones de años luz', N'Debieron recorrerse 13.000 millones de años para que la luz de los poderosos chorros de un objeto distante nos alcanzaran.', N'Debieron recorrerse 13.000 millones de años para que la luz de los poderosos chorros de un objeto distante nos alcanzaran.

Este chorro cósmico es la fuente de emisión de radio más distante que se conoce hasta la fecha. Y provienen de un cuásar descubierto recientemente que existió cuando el universo tenía apenas 780 millones de años. Lo que equivale a ser un adolescente en la escala de tiempo astronómica.', N'Guillermo Rodriguez', N'https://cnnespanol.cnn.com/wp-content/uploads/2021/03/chorro-co%CC%81smico-cua%CC%81sar.jpg?quality=100&strip=info&w=300&h=170&crop=1')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (6, N'Kanye West pide la custodia compartida de sus hijos con Kim Kardashian en proceso de divorcio', N'Kanye West respondió a la solicitud de divorcio de Kim Kardashian.En su respuesta, presentada el viernes pasado y obtenida por CNN, West solicitó la custodia legal y física compartida de sus cuatro hijos', N'Kanye West respondió a la solicitud de divorcio de Kim Kardashian.En su respuesta, presentada el viernes pasado y obtenida por CNN, West solicitó la custodia legal y física compartida de sus cuatro hijos

Ninguna de las partes solicita manutención conyugal.

Los representantes de West no hicieron comentarios.

Kardashian solicitó el divorcio en febrero. CNN se ha puesto en contacto con su representante para obtener comentarios.

La pareja llevaba varios meses viviendo separada, con West viviendo en Wyoming y Kardashian en su casa de California.', N'Chloe Melas', N'https://cnnespanol.cnn.com/wp-content/uploads/2021/04/210219153353-kim-kardashian-kanye-west-file-2020-super-tease.jpg?quality=100&strip=info&w=300&h=170&crop=1')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (7, N'MSP aborda apertura semipresencial de año escolar y su repercusión en la salud mental', N'El Departamento de Salud Mental del Ministerio de Salud abordó este martes en su acostumbrado conversatorio, el tema de las repercusiones en la Salud Mental de padres, alumnos y maestros a propósito de la apertura del año escolar semipresencial en momentos en que la pandemia de la COVID-19 continúa incidiendo.', N'El Departamento de Salud Mental del Ministerio de Salud abordó este martes en su acostumbrado conversatorio, el tema de las repercusiones en la Salud Mental de padres, alumnos y maestros a propósito de la apertura del año escolar semipresencial en momentos en que la pandemia de la COVID-19 continúa incidiendo.
El encuentro estuvo encabezado por el doctor Alejandro Uribe, encargado del Departamento de Salud Mental, quien se refirió al nivel de estrés que genera para los padres la exposición de sus vástagos con el reintegro a las clases presenciales.
Destacó que el temor al contagio del coronavirus, en un principio podría resultar en ausencia de los alumnos y que a medida que pasen los días aumentaría la confianza y seguridad en los protocolos de prevención.', N'Cesar Soriano', N'https://www.msp.gob.do/web/wp-content/uploads/2021/04/DSC_2897-720x480.jpg')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (8, N'Yahoo Respuestas, uno de los pioneros de la web, será eliminado en mayo', N'Yahoo Respuestas, una plataforma de preguntas y respuestas que fue lanzada hace más de 15 años y se convirtió en una de las mayores fuentes de información (y de desinformación) de internet, será eliminada el 4 de mayo.', N'Yahoo Respuestas, una plataforma de preguntas y respuestas que fue lanzada hace más de 15 años y se convirtió en una de las mayores fuentes de información (y de desinformación) de internet, será eliminada el 4 de mayo.

El sitio web, propiedad de Verizon, anunció el lunes la cancelación de la plataforma con un escueto comunicado en la página principal de Yahoo Respuestas. El portal entrará en modo «solo lectura» el 20 de abril. Los usuarios que lo deseen tendrán hasta el 30 de junio para descargar el contenido, explicó Yahoo en su página de ayuda.', N'Jordan Valinsky', N'https://cnnespanol.cnn.com/wp-content/uploads/2021/04/210406100921-yahoo-answers-stock-exlarge-169.jpg?quality=100&strip=info&w=300&h=170&crop=1')
GO
INSERT [dbo].[Articles] ([ArticleID], [Title], [Descripcion], [Content], [Author], [UrlImage]) VALUES (9, N'Fate/stay night: Heaven''s Feel se consagra como la mejor trilogia ', N'Heaven''s Feel es actualmente la mejor trilogia del mundo del anime.', N'Heaven''s Feel es una de las rutas de Fate/stay night. La heroína de esta ruta es Sakura Matou. Heaven''s Feel es la tercera y última ruta que se puede desbloquear al jugar Fate/stay night. Sólo se puede acceder a ella si las dos rutas anteriores, Fate y Unlimited Blade Works, han sido completadas, apareciendo la opción a la noche del primer día contrario a la noche del tercero como en Unlimited Blade Works.', N'Omar Vilorio', N'https://pulpfictioncine.com/download/multimedia.normal.9d8cee92655066ac.466174652053746179204e69676874202048656176656e73204665656c2049495f6e6f726d616c2e6a7067.jpg')
GO
SET IDENTITY_INSERT [dbo].[Articles] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Economy')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Sports')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Entertaiment')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'General')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Health')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Science')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Technology')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
ALTER TABLE [dbo].[ArticleCategories]  WITH CHECK ADD  CONSTRAINT [FK_ArticleID] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[ArticleCategories] CHECK CONSTRAINT [FK_ArticleID]
GO
ALTER TABLE [dbo].[ArticleCategories]  WITH CHECK ADD  CONSTRAINT [FK_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[ArticleCategories] CHECK CONSTRAINT [FK_Category]
GO
/****** Object:  StoredProcedure [dbo].[GetAllArticles]    Script Date: 14/04/2021 23:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllArticles]
AS 
BEGIN
	SET NOCOUNT ON
	SELECT [ArticleID],
		[Title],
		[Descripcion],
		[Content],
		[Author],
		[UrlImage]
		
	FROM [Articles]
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllArticlesById]    Script Date: 14/04/2021 23:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllArticlesById]
(
	@ArticleId INT
)
AS 
BEGIN
		SET NOCOUNT ON
		SELECT [ArticleId],
		[Title],
		[Title],
		[Descripcion],
		[Content],
		[Author],
		[UrlImage]
	FROM [Articles]
	WHERE [ArticleId] = @ArticleId
	

END
GO
/****** Object:  StoredProcedure [dbo].[GetArticleCategoriesById]    Script Date: 14/04/2021 23:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticleCategoriesById]
(
	@ArticleId INT
)
AS
BEGIN

	SELECT [CategoryId], [CategoryName] FROM [Categories] WHERE [CategoryId] IN (SELECT [CategoryId]
											 FROM [ArticleCategories]
											 WHERE [ArticleId] = @ArticleId) 

END

GO
/****** Object:  StoredProcedure [dbo].[GetArticlesByCategory]    Script Date: 14/04/2021 23:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticlesByCategory]
(
	@CategoryId INT
	
)
AS 
BEGIN
	SELECT * FROM [Articles] 
	WHERE [ArticleId] IN (SELECT [ArticleId] 
								 FROM [ArticleCategories] 
								 WHERE [CategoryId] = @CategoryId)
								 
END
GO
/****** Object:  StoredProcedure [dbo].[GetArticlesByTitle]    Script Date: 14/04/2021 23:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticlesByTitle]
(
	@Title VARCHAR(255) 
)
AS 
BEGIN
	SELECT [ArticleId], 
		[Title],
		[Descripcion],
		[Content],
		[Author],
		[UrlImage] 
	FROM [Articles]
	WHERE UPPER([Title]) LIKE '%' + UPPER(@Title) + '%'
			
END
GO
USE [master]
GO
ALTER DATABASE [NewsAPI] SET  READ_WRITE 
GO
