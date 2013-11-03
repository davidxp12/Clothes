USE [Roupa]
GO
/****** Object:  Table [dbo].[Acessorio]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Acessorio](
	[IdAcessorio] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](max) NULL,
	[Preco] [decimal](10, 2) NOT NULL,
	[Parcelas] [int] NULL,
 CONSTRAINT [PK_Acessorio] PRIMARY KEY CLUSTERED 
(
	[IdAcessorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'00000000-0000-0000-0000-000000000000', N'asasa', N'asasas', CAST(12.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'f3c0ab98-2045-4750-82b9-60110eaaf94d', N'tteste', N'dasdsadsa', CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'ed355fd2-79d3-46f5-b275-be8cbd2c0db9', N'dsadsa', N'dsadsadsadsa', CAST(10.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'27e6e7a9-d60e-4edb-92b7-c101d299b683', N'Carteira Couro', N'A Fasolo é uma marca que atua há mais de 90 anos no mercado de acessórios masculinos especializado em couro. A qualidade dos produtos é conhecida internacionalmente por estar em sintonia com as últimas tendências da moda. A Carteira em Couro Fasolo é mais um item moderno que agrega sofisticação e estilo e atitude aos homens brasileiros. Com abertura rápida, porta níquel, compartimentos internos independentes de cartões, notas, documentos e cheque, a carteira é ideal para ter praticidade no dia a dia. Aproveite o melhor preço aqui na Le Postiche!', CAST(40.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'2d23d761-78b1-4499-b86d-d00a6f2fdd3a', N'asasassasa', N'sxasaxaxa', CAST(50.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Acessorio] ([IdAcessorio], [Nome], [Descricao], [Preco], [Parcelas]) VALUES (N'76453ea5-1cc6-4ee9-a6e5-d37180da7a7e', N'Test22222e', N'testedes121212', CAST(50.00 AS Decimal(10, 2)), 8)
/****** Object:  Table [dbo].[Informacoes]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacoes](
	[IdInformacoes] [uniqueidentifier] NOT NULL,
	[InformacoesSite] [varchar](50) NULL,
	[MaisInformacao] [varchar](max) NULL,
 CONSTRAINT [PK_Informacoes] PRIMARY KEY CLUSTERED 
(
	[IdInformacoes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cor]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cor](
	[IdCor] [uniqueidentifier] NOT NULL,
	[Cor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cor_1] PRIMARY KEY CLUSTERED 
(
	[IdCor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'82a9b3cf-4a5f-4569-91ac-2c1a24fa06ef', N'Branco')
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'5092ab5a-2d6b-424d-8493-2dc696ee1511', N'Azul-Marinho')
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'b8935698-1c93-49fe-8004-3d8f5cbea90e', N'Preto')
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'dca32a25-08bd-4e39-8262-65f9665b725f', N'Azul')
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'2031d835-2034-49be-9be9-673c8056f719', N'Cinza')
INSERT [dbo].[Cor] ([IdCor], [Cor]) VALUES (N'17b72d2f-875b-4703-a75e-cb86e6e51c6a', N'Marrom')
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cpf] [varchar](50) NOT NULL,
	[Cnpj] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Cpf], [Cnpj]) VALUES (N'621f94f5-5d4e-46df-b3df-e11520e628da', N'David', N'458.898.748-71', NULL)
/****** Object:  Table [dbo].[Categoria]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Nome]) VALUES (N'57f23c81-9d75-475c-8454-16f840371f8f', N'Roupas Masculinas')
INSERT [dbo].[Categoria] ([IdCategoria], [Nome]) VALUES (N'0ff903c9-0a03-4f1b-bea0-3f23ae4f7c13', N'Roupas Infantil')
INSERT [dbo].[Categoria] ([IdCategoria], [Nome]) VALUES (N'47be05a6-a154-427c-b8a4-73c54e65406e', N'Roupas Femininas')
/****** Object:  Table [dbo].[Preco]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preco](
	[IdPreco] [uniqueidentifier] NOT NULL,
	[Preco] [float] NOT NULL,
	[PrecoParcelado] [float] NULL,
	[PrecoQuantidade] [int] NULL,
 CONSTRAINT [PK_Preco] PRIMARY KEY CLUSTERED 
(
	[IdPreco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Preco] ([IdPreco], [Preco], [PrecoParcelado], [PrecoQuantidade]) VALUES (N'fa171d93-0d34-465f-82be-4478aa4af58b', 80, 40, 2)
INSERT [dbo].[Preco] ([IdPreco], [Preco], [PrecoParcelado], [PrecoQuantidade]) VALUES (N'853d8087-e687-40a8-8f52-79d375cbd273', 100, 50, 2)
/****** Object:  Table [dbo].[Material]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Material](
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[Material] [varchar](50) NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'7fa96c9f-802a-47b5-a7a1-261c37682981', N'ZXXX2', N'asass2')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'9783f699-f7be-4f91-a593-43202761a02e', N'asas', N'asasas')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'146478fd-f128-42e4-9d38-439f375c21e1', N'tagsjas', N'asasas')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'80f06904-d4d2-4b1e-9402-7740c437248b', N'Algodão', N'Material resistente')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'079e23d4-0c05-410d-bf9e-868ab15507e8', N'Jeans', N'teste')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'31173419-c0a7-4a1a-ba96-8f523d81a31f', N'Sintético', NULL)
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'ab3916ab-5169-480c-8e87-baf8504b507c', N'asasa', N'asasaasas')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'bd6edf96-6f57-43fb-bab2-bb1244449a57', N'Algodão', N'Material resistente')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'db334601-dc92-4534-80f0-eb8942d7656e', N'teste2222', N'teste 21212')
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'12fde21c-1403-4dd2-9d90-eccdf610c0e8', N'Têxtil', NULL)
INSERT [dbo].[Material] ([IdMaterial], [Material], [Descricao]) VALUES (N'e7dc320d-81eb-4913-9f7b-f1d0af5793f9', N'Borracha', NULL)
/****** Object:  Table [dbo].[Marca]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [uniqueidentifier] NOT NULL,
	[Marca] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Marca_1] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'00000000-0000-0000-0000-000000000000', N'asasasaxadadad')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'344ede55-0dbf-4b8c-9365-03738541d6c1', N'Calvin Klein')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'988e435d-aea7-4538-bcd8-0d6e6f40a707', N'QuikSilver')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'26e3039c-9047-4cef-baec-52f10c034fc5', N'TNG')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'91e862cc-8d9a-4749-a3ff-57bc248e2022', N'xxxxx')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'ae82cddb-cbc4-4da1-87d1-61846c5c86a0', N'Nike')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'7074e47d-a55a-4f02-9bc5-7b210287182d', N'Polo ')
INSERT [dbo].[Marca] ([IdMarca], [Marca]) VALUES (N'373bb995-b401-416f-873a-9a9dabfecf81', N'Addidas')
/****** Object:  Table [dbo].[Tema]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tema](
	[IdTema] [int] NOT NULL,
	[Tema] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tema] PRIMARY KEY CLUSTERED 
(
	[IdTema] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tamanho]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tamanho](
	[IdTamanho] [uniqueidentifier] NOT NULL,
	[Tamanho] [nchar](10) NULL,
 CONSTRAINT [PK_Tamanho] PRIMARY KEY CLUSTERED 
(
	[IdTamanho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tamanho] ([IdTamanho], [Tamanho]) VALUES (N'5ddc3913-b08f-433a-a793-c63677f652f7', N'19-20     ')
/****** Object:  Table [dbo].[Roupa]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roupa](
	[IdRoupa] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[IdCategoria] [uniqueidentifier] NULL,
	[IdCor] [uniqueidentifier] NULL,
	[IdMaterial] [uniqueidentifier] NULL,
	[Idtamanho] [uniqueidentifier] NULL,
	[IdPreco] [uniqueidentifier] NULL,
	[IdAcessorio] [uniqueidentifier] NULL,
	[IdInformacoes] [uniqueidentifier] NULL,
	[IdMarca] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Roupa_1] PRIMARY KEY CLUSTERED 
(
	[IdRoupa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Roupa] ([IdRoupa], [Nome], [IdCategoria], [IdCor], [IdMaterial], [Idtamanho], [IdPreco], [IdAcessorio], [IdInformacoes], [IdMarca]) VALUES (N'453be9f2-c4cd-4850-82ec-b4191a2c29a0', N'Bermuda', N'57f23c81-9d75-475c-8454-16f840371f8f', N'82a9b3cf-4a5f-4569-91ac-2c1a24fa06ef', N'079e23d4-0c05-410d-bf9e-868ab15507e8', N'5ddc3913-b08f-433a-a793-c63677f652f7', N'fa171d93-0d34-465f-82be-4478aa4af58b', N'27e6e7a9-d60e-4edb-92b7-c101d299b683', NULL, N'988e435d-aea7-4538-bcd8-0d6e6f40a707')
/****** Object:  Table [dbo].[Item]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[IdItem] [uniqueidentifier] NOT NULL,
	[IdRoupa] [uniqueidentifier] NOT NULL,
	[IdAcessorio] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Item_1] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Item] ([IdItem], [IdRoupa], [IdAcessorio]) VALUES (N'91e371e6-d583-4eff-8b27-23b90517ec5d', N'453be9f2-c4cd-4850-82ec-b4191a2c29a0', N'27e6e7a9-d60e-4edb-92b7-c101d299b683')
/****** Object:  Table [dbo].[Carrinho]    Script Date: 12/26/2012 15:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrinho](
	[IdCarrinho] [uniqueidentifier] NOT NULL,
	[IdItem] [uniqueidentifier] NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[TipoPagamento] [nchar](10) NULL,
	[TotalConta] [float] NULL,
 CONSTRAINT [PK_Carrinho_1] PRIMARY KEY CLUSTERED 
(
	[IdCarrinho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Carrinho] ([IdCarrinho], [IdItem], [IdCliente], [TipoPagamento], [TotalConta]) VALUES (N'09288150-1740-4bc5-b5c0-2db4296a6523', N'91e371e6-d583-4eff-8b27-23b90517ec5d', N'621f94f5-5d4e-46df-b3df-e11520e628da', N'Dinheiro  ', NULL)
/****** Object:  Default [DF_Acessorio_IdAcessorio]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Acessorio] ADD  CONSTRAINT [DF_Acessorio_IdAcessorio]  DEFAULT (newid()) FOR [IdAcessorio]
GO
/****** Object:  Default [DF_Carrinho_IdCarrinho]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Carrinho] ADD  CONSTRAINT [DF_Carrinho_IdCarrinho]  DEFAULT (newid()) FOR [IdCarrinho]
GO
/****** Object:  Default [DF_Categoria_Idcategoria]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Categoria] ADD  CONSTRAINT [DF_Categoria_Idcategoria]  DEFAULT (newid()) FOR [IdCategoria]
GO
/****** Object:  Default [DF_Cliente_IdCliente]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_IdCliente]  DEFAULT (newid()) FOR [IdCliente]
GO
/****** Object:  Default [DF_Cor_idCor]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Cor] ADD  CONSTRAINT [DF_Cor_idCor]  DEFAULT (newid()) FOR [IdCor]
GO
/****** Object:  Default [DF_Informacoes_IdInformacoes]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Informacoes] ADD  CONSTRAINT [DF_Informacoes_IdInformacoes]  DEFAULT (newid()) FOR [IdInformacoes]
GO
/****** Object:  Default [DF_Item_IdItem]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF_Item_IdItem]  DEFAULT (newid()) FOR [IdItem]
GO
/****** Object:  Default [DF_Marca_IdMarc]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Marca] ADD  CONSTRAINT [DF_Marca_IdMarc]  DEFAULT (newid()) FOR [IdMarca]
GO
/****** Object:  Default [DF_Material_IdMaterial]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Material] ADD  CONSTRAINT [DF_Material_IdMaterial]  DEFAULT (newid()) FOR [IdMaterial]
GO
/****** Object:  Default [DF_Preco_IdPreco]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Preco] ADD  CONSTRAINT [DF_Preco_IdPreco]  DEFAULT (newid()) FOR [IdPreco]
GO
/****** Object:  Default [DF_Roupa_IdRoupa]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa] ADD  CONSTRAINT [DF_Roupa_IdRoupa]  DEFAULT (newid()) FOR [IdRoupa]
GO
/****** Object:  Default [DF_Tamanho_IdTamanho]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Tamanho] ADD  CONSTRAINT [DF_Tamanho_IdTamanho]  DEFAULT (newid()) FOR [IdTamanho]
GO
/****** Object:  ForeignKey [FK_Carrinho_Cliente]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Carrinho]  WITH CHECK ADD  CONSTRAINT [FK_Carrinho_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Carrinho] CHECK CONSTRAINT [FK_Carrinho_Cliente]
GO
/****** Object:  ForeignKey [FK_Carrinho_Item]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Carrinho]  WITH CHECK ADD  CONSTRAINT [FK_Carrinho_Item] FOREIGN KEY([IdItem])
REFERENCES [dbo].[Item] ([IdItem])
GO
ALTER TABLE [dbo].[Carrinho] CHECK CONSTRAINT [FK_Carrinho_Item]
GO
/****** Object:  ForeignKey [FK_Item_Acessorio]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Acessorio] FOREIGN KEY([IdAcessorio])
REFERENCES [dbo].[Acessorio] ([IdAcessorio])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Acessorio]
GO
/****** Object:  ForeignKey [FK_Item_Roupa]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Roupa] FOREIGN KEY([IdRoupa])
REFERENCES [dbo].[Roupa] ([IdRoupa])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Roupa]
GO
/****** Object:  ForeignKey [FK_Roupa_Categoria]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Categoria]
GO
/****** Object:  ForeignKey [FK_Roupa_Cor]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Cor] FOREIGN KEY([IdCor])
REFERENCES [dbo].[Cor] ([IdCor])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Cor]
GO
/****** Object:  ForeignKey [FK_Roupa_Informacoes]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Informacoes] FOREIGN KEY([IdInformacoes])
REFERENCES [dbo].[Informacoes] ([IdInformacoes])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Informacoes]
GO
/****** Object:  ForeignKey [FK_Roupa_Marca]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Marca] FOREIGN KEY([IdMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Marca]
GO
/****** Object:  ForeignKey [FK_Roupa_Preco]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Preco] FOREIGN KEY([IdPreco])
REFERENCES [dbo].[Preco] ([IdPreco])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Preco]
GO
/****** Object:  ForeignKey [FK_Roupa_Tamanho]    Script Date: 12/26/2012 15:39:20 ******/
ALTER TABLE [dbo].[Roupa]  WITH CHECK ADD  CONSTRAINT [FK_Roupa_Tamanho] FOREIGN KEY([Idtamanho])
REFERENCES [dbo].[Tamanho] ([IdTamanho])
GO
ALTER TABLE [dbo].[Roupa] CHECK CONSTRAINT [FK_Roupa_Tamanho]
GO
