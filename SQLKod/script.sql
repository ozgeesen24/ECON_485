USE [ECON485]
GO
/****** Object:  Table [dbo].[Fatura]    Script Date: 17.01.2022 15:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fatura](
	[FaturaID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[UrunID] [int] NULL,
	[ToplamFiyat] [int] NULL,
 CONSTRAINT [PK_Fatura] PRIMARY KEY CLUSTERED 
(
	[FaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 17.01.2022 15:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullanciAdi] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
	[Adres_1] [varchar](250) NULL,
	[Adres_2] [varchar](250) NULL,
	[Fatura_adres_1] [varchar](250) NULL,
	[Fatura_Adres_2] [varchar](250) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 17.01.2022 15:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[SepetID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Sepet] PRIMARY KEY CLUSTERED 
(
	[SepetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urun]    Script Date: 17.01.2022 15:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [varchar](100) NULL,
	[UrunBaslik] [varchar](50) NULL,
	[UrunAciklama] [text] NULL,
	[UrunFiyat] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fatura] ON 

INSERT [dbo].[Fatura] ([FaturaID], [KullaniciID], [UrunID], [ToplamFiyat]) VALUES (1, 1, 2, 6500)
INSERT [dbo].[Fatura] ([FaturaID], [KullaniciID], [UrunID], [ToplamFiyat]) VALUES (3, 1, 3, 5600)
SET IDENTITY_INSERT [dbo].[Fatura] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([KullaniciID], [KullanciAdi], [Sifre], [Adres_1], [Adres_2], [Fatura_adres_1], [Fatura_Adres_2]) VALUES (1, N'Ozge Esen', N'ozgesen_06', N'Ankara', N'İstanbul', N'Çankaya/Ankara', N'Nişantaşı/İstanbul')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Sepet] ON 

INSERT [dbo].[Sepet] ([SepetID], [UrunID], [KullaniciID]) VALUES (1, 3, 1)
INSERT [dbo].[Sepet] ([SepetID], [UrunID], [KullaniciID]) VALUES (2, 2, 1)
INSERT [dbo].[Sepet] ([SepetID], [UrunID], [KullaniciID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[Sepet] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunBaslik], [UrunAciklama], [UrunFiyat]) VALUES (1, N'Telefon Xiaomi', N'Xiaomi X3 GT', N'2021 yılında çıkan Xiaomi X3 GT 256 Gb dahili hafıza ve 8 GB ram ile kullanıcıya sunulmuştur', 1210)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunBaslik], [UrunAciklama], [UrunFiyat]) VALUES (2, N'Bilgisayar', N'Asus Bilgisayar', N'2021 yılında piyasaya sürülmüş oyun bilgisayarı', 12000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [UrunBaslik], [UrunAciklama], [UrunFiyat]) VALUES (3, N'Saç Şekillendirici', N'Dyson', N'Rüzgar etkisi kullanarak saçları yıpratmadan şekillendirir.', 5600)
SET IDENTITY_INSERT [dbo].[Urun] OFF
