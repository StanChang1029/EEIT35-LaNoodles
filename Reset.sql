/*--會員--*/
DROP TABLE IF EXISTS [dbo].[MEMBER]
GO
DROP TABLE IF EXISTS [dbo].[MEMBER_PROFILE]
GO

CREATE TABLE [dbo].[MEMBER_PROFILE](
	[MEMBER_PROFILE_ID] [int] IDENTITY(1,1) NOT NULL,
	[MEMBER_ACCOUNT] [varchar](20) NOT NULL,
	[MEMBER_NAME] [nvarchar](20) NOT NULL,
	[MEMBER_EMAIL] [varchar](100) NOT NULL,
	[MEMBER_PHONE] [varchar](20) NOT NULL,
	[MEMBER_BIRTHDAY] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MEMBER_PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MEMBER](
	[MEMBER_ID] [int] IDENTITY(1,1) NOT NULL,
	[MEMBER_ACCOUNT] [varchar](20) NOT NULL,
	[MEMBER_PASSWORD] [varchar](2000) NOT NULL,
	[MEMBER_TYPE] [varchar](2) NOT NULL,
	[FK_MEMBER_PROFILE_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MEMBER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD FOREIGN KEY([FK_MEMBER_PROFILE_ID])
REFERENCES [dbo].[MEMBER_PROFILE] ([MEMBER_PROFILE_ID])
GO

/*--預約--*/
DROP TABLE IF EXISTS [dbo].[Foodquantity]
GO
DROP TABLE IF EXISTS [dbo].[Food]
GO
DROP TABLE IF EXISTS [dbo].[foodstock]
GO

CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[time] [nvarchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[mail] [varchar](50) NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foodquantity]    Script Date: 2022/2/12 下午 06:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foodquantity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[img] [varchar](50) NULL,
	[quantity] [int] NULL,
	[namech] [varchar](50) NULL,
	[low] [int] NULL,
	[classification] [varchar](50) NULL,
	[itn] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foodstock]    Script Date: 2022/2/12 下午 06:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foodstock](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[BOS] [varchar](50) NULL,
	[greenonion] [int] NULL,
	[garlic] [int] NULL,
	[egg] [int] NULL,
	[kelp] [int] NULL,
	[seasoningpack] [int] NULL,
	[alkalinewater] [int] NULL,
	[miso] [int] NULL,
	[salt] [int] NULL,
	[sesame] [int] NULL,
	[mushroom] [int] NULL,
	[onion] [int] NULL,
	[chinesecabbage] [int] NULL,
	[bambooshoots] [int] NULL,
	[noodle] [int] NULL,
	[beefbone] [int] NULL,
	[porkbone] [int] NULL,
	[beef] [int] NULL,
	[pork] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3009, N'李世麒', N'2022-02-15', N'11:00', N'0972950626', 5, N'eddytommy30@gmail.com')
INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3010, N'李世麒', N'2022-02-11', N'11:00', N'0939511342', 2, N'eddytommy30@gmail.com')
INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3011, N'李世麒', N'2022-02-11', N'11:00', N'0939511342', 2, N'eddytommy30@gmail.com')
INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3012, N'李世麒', N'2022-02-05', N'11:00', N'0939511342', 4, N'eddytommy30@gmail.com')
INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3018, N'李世麒', N'2022-02-13', N'11:00', N'0939511342', 9, N'eddytommy30@gmail.com')
INSERT [dbo].[Food] ([id], [name], [date], [time], [phone], [quantity], [mail]) VALUES (3022, N'李世麒', N'2022-02-16', N'13:00', N'0972950626', 3, N'eddytommy30@gmail.com')
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[foodstock] ON 

INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (137, CAST(N'2022-02-14' AS Date), N'入庫', 17, 25, 34, 15, 10, 27, 16, 29, 17, 27, 15, 26, 13, 27, 20, 35, 16, 28)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (138, CAST(N'2022-02-14' AS Date), N'出庫', 10, 25, 37, 23, 11, 15, 26, 8, 2, 11, 24, 25, 16, 23, 7, 8, 10, 23)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (139, CAST(N'2022-02-15' AS Date), N'入庫', 35, 15, 20, 25, 37, 33, 15, 15, 23, 26, 12, 16, 50, 27, 29, 35, 40, 10)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (140, CAST(N'2022-02-15' AS Date), N'出庫', 27, 27, 16, 26, 37, 33, 23, 15, 2, 26, 16, 29, 23, 27, 29, 29, 23, 10)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (145, CAST(N'2022-02-16' AS Date), N'入庫', 45, 37, 17, 23, 17, 31, 41, 10, 26, 17, 49, 26, 35, 23, 15, 16, 8, 27)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (146, CAST(N'2022-02-16' AS Date), N'出庫', 48, 17, 26, 17, 18, 23, 28, 23, 47, 23, 27, 16, 52, 34, 27, 29, 42, 18)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (147, CAST(N'2022-02-14' AS Date), N'入庫', 42, 27, 23, 31, 5, 26, 29, 0, 0, 8, 12, 13, 21, 16, 27, 15, 17, 26)
INSERT [dbo].[foodstock] ([id], [Date], [BOS], [greenonion], [garlic], [egg], [kelp], [seasoningpack], [alkalinewater], [miso], [salt], [sesame], [mushroom], [onion], [chinesecabbage], [bambooshoots], [noodle], [beefbone], [porkbone], [beef], [pork]) VALUES (148, CAST(N'2022-02-14' AS Date), N'出庫', 35, 15, 20, 25, 6, 33, 15, 15, 23, 26, 12, 16, 24, 27, 29, 35, 27, 10)
SET IDENTITY_INSERT [dbo].[foodstock] OFF
GO

SET IDENTITY_INSERT [dbo].[Foodquantity] ON 
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (1, N'greenonion', N'greenonion.jpg', 0, N'蔥', 50, N'A', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (2, N'garlic', N'garlic.jpg', 0, N'蒜', 10, N'A', N'捆')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (3, N'egg', N'egg.jpg', 20, N'蛋', 10, N'A', N'打')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (4, N'kelp', N'kelp.jpg', 20, N'海帶', 10, N'A', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (5, N'seasoningpack', N'seasoningpack.jpg', 30, N'調味包', 10, N'B', N'包')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (6, N'alkalinewater', N'alkalinewater.jpg', 20, N'鹼水', 10, N'A', N'公升')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (7, N'miso', N'miso.jpg', 20, N'味噌', 10, N'A', N'升')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (8, N'salt', N'salt.jpg', 20, N'鹽', 10, N'B', N'袋')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (9, N'sesame', N'sesame.jpg', 20, N'芝麻', 10, N'B', N'mg')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (10, N'mushroom', N'mushroom.jpg', 20, N'香菇', 10, N'A', N'袋')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (11, N'onion', N'onion.jpg', 21, N'洋蔥', 10, N'A', N'顆')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (12, N'chinesecabbage', N'chinesecabbage.jpg', 20, N'白菜', 10, N'A', N'顆')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (13, N'bambooshoots', N'bambooshoots.jpg', 21, N'筍', 10, N'A', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (14, N'noodle', N'noodle.jpg', 36, N'麵條', 10, N'C', N'捆')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (15, N'beefbone', N'beefbone.jpg', 22, N'牛骨', 10, N'C', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (16, N'porkbone', N'porkbone.jpg', 22, N'豬骨', 10, N'C', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (17, N'beef', N'beef.jpg', 23, N'牛肉', 10, N'C', N'斤')
INSERT [dbo].[Foodquantity] ([id], [name], [img], [quantity], [namech], [low], [classification], [itn]) VALUES (18, N'pork', N'pork.jpg', 24, N'豬肉', 10, N'C', N'斤')
SET IDENTITY_INSERT [dbo].[Foodquantity] OFF
GO


/*-- 菜單 --*/
DROP TABLE IF EXISTS [dbo].[Menu]
GO

CREATE TABLE [dbo].[Menu](
	[Id][int] NOT NULL identity(1,1) PRIMARY KEY,
	[Dish] [nchar](15) NULL,
	[Photo] [nchar](200) NULL,
	[Price] [int] NULL,
	[Item] [nchar](200) NULL,
	[Feature] [nchar](200) NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO

INSERT INTO Menu
VALUES ('爆走次郎拉麵','1.jpg',100,'豚骨,豬肉,糖心蛋,蔥花,筍乾,海苔','將以味噌調味的醬汁作為湯頭使用。味噌拉麵的最大特色為濃厚且深層的濃密口感。據說是1961年時，由北海道札幌市的人氣拉麵店「味之三平」的店主最先研發而成的。',50),
('巴東牛雜拉麵','2.jpg',110,'醬油,牛肉,玉米,蔥花,筍乾,海苔','由廚師手工現場將麵團拉抻製成麵條後下鍋煮熟，出鍋後加入牛肉老湯，撒上小塊牛肉、辣椒油、香菜、蒜苗而完成，用老湯加水烹煮牛肉、羊肝，再加入傳統佐料，熬製而成。',50),
('大蔥鴨醬油拉麵','3.jpg',120,'醬油,鴨肉,糖心蛋,蔥花,海苔','將以鹽進行調味所製的醬汁作為湯頭使用。與其他的拉麵相比，較能直接突顯出高湯本身的美味。由於味道清爽且容易入口，因此深受大眾喜愛。',50),
('老母雞湯醬油拉麵','4.jpg',130,'醬油,雞肉,糖心蛋,玉米,蔥花,筍乾,海苔','醬油拉麵 是日本拉麵最經典口味，加入大豆、小麥等調味料製作出深色系湯底，帶來看似重口味卻散發清香的傳統日式風味。',50),
('魚介豚骨沾麵','5.jpg',140,'魚介,海鮮,糖心蛋,蔥花,筍乾,海苔','將採用乾燥過後的柴魚、昆布及小魚乾等各式各樣海鮮所萃取出的醬汁作為高湯使用。其特徵為有著深層的美味及風味。',50),
('濃厚豚骨拉麵','6.jpg',150,'豚骨,豬肉,玉米,糖心蛋,蔥花,筍乾,海苔','採用將豚骨長時間燉煮後萃取出的高湯作為湯頭使用。最大的特徵是有著獨特的香氣及濃厚的口感。最具代表性的是九州博多拉麵，最常可見的是白濁的湯頭。',50),
('麻辣魚介沾麵','7.jpg',160,'麻辣,魚介,海鮮,蔥花,筍乾,海苔','此系列拉麵最大的特徵為，以雞、豚骨、海鮮等高湯做基底，並添加味噌、辣椒、蒜頭等調味而成的辣口味湯頭。其中也有能指定辣度的店家。',50),
('濃厚麻辣豚骨拉麵','8.jpg',170,'麻辣豚骨,豬肉,玉米,糖心蛋,蔥花,筍乾,海苔','此系列拉麵最大的特徵為，以雞、豚骨、海鮮等高湯做基底，並添加味噌、辣椒、蒜頭等調味而成的辣口味湯頭。其中也有能指定辣度的店家。',50),
('香味牛醬油沾麵','9.jpg',180,'味噌,牛肉,玉米,蔥花,筍乾,海苔','將麵條水煮過後再過冷水，並沾著放入別的器碗中的沾汁後享用。依照店鋪不同，也有會使用將過冷水後的麵再一次放入熱水中稍微攪拌加熱的麵條。沾汁會比一般的拉麵湯頭的味道還要濃厚。',50),
('黑蒜豚骨拉麵','10.jpg',190,'豚骨,豬肉,糖心蛋,蔥花,筍乾,海苔','將水煮過的麵與加在容器的「以黑蒜為基底的濃厚醬汁＋油」相互攪拌後享用。配料有叉燒?筍乾?蔥末等。也能依照喜好添加辣油或醋等調味料，混合攪拌後享用。',50);
GO

/*--評論--*/
DROP TABLE IF EXISTS [dbo].COMMENT
GO
DROP TABLE IF EXISTS [dbo].CMTRECORD
GO
DROP TABLE IF EXISTS [dbo].CMTREPORT
GO

CREATE TABLE COMMENT(
ID INT PRIMARY KEY IDENTITY(1,1),
COMMENT_TIME DATETIME,
NAME VARCHAR(50),
MEMBER_ID INT,
MEAL VARCHAR(50),
SCORE INT,
COMMENT_WORD VARCHAR(4096),
PHOTO VARBINARY(max),
)

CREATE TABLE CMTRECORD(
ID INT PRIMARY KEY IDENTITY(1,1),
COMMENT_TIME DATETIME,
NAME VARCHAR(50),
MEMBER_ID INT,
MEAL VARCHAR(50),
SCORE INT,
COMMENT_WORD VARCHAR(4096),
PHOTO VARBINARY(max),
STATUS INT,
COMMENT_ID INT,
MODIFIED_TIME DATETIME,
)

CREATE TABLE CMTREPORT(
ID INT PRIMARY KEY IDENTITY(1,1),
REPORTCOMMENT_TIME DATETIME,
REPORTNAME VARCHAR(50),
REPORTMEMBER_ID INT,
REPORTCOMMENT_WORD VARCHAR(4096),
COMMENT_ID INT,
COMMENT_TIME DATETIME,
NAME VARCHAR(50),
MEMBER_ID INT,
MEAL VARCHAR(50),
SCORE INT,
COMMENT_WORD VARCHAR(4096),
PHOTO VARBINARY(max),
)

INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-24 00:00:00.000','conpansate Li','1001','濃厚豚骨拉麵','5','麵體偏細 湯體濃郁稠厚 這個搭配讓湯可以附在麵上 讓我覺得是吃沾麵 配料有木耳 蔥 完整一顆溏心蛋 整體來說很不錯 叉燒大概整碗麵是比較弱的環節 但我可以為了湯跟麵的組合再吃一次',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-22 00:00:00.000','洪小龍','1002','黑蒜豚骨拉麵','3','多年前在山仔頂品嚐到美味的黑蒜拉麵，一吃就喜歡，因為有跟老闆聊天，知道他對於日式拉麵的堅持，以及自學，所以持續支持也介紹很多朋友，後來搬家到内壢，開幕的時侯有去吃，老闆依然陽光有朝氣，店內雖是日式風格，但跛為乾淨，店裡也有許多員工，後來因為住得比較遠，很久沒去了 …',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-21 00:00:00.000','lucas Shi','1003','黑蒜豚骨拉麵','5','黑蒜豚骨味道濃郁，黑蒜初入口蒜味豐富，尾韻帶堅果風味，使濃郁湯頭舒服不膩口。沾麵辣味刺激卻不暴走，點綴沾麵湯頭鮮味！大推！！！',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-20 00:00:00.000','アオバ','1004','濃厚豚骨拉麵','5','老闆很辛苦，趁還能吃到的時候趕快吃QQ',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-18 00:00:00.000','Casbar Hsu','1005','爆走次郎拉麵','5','2021最後一天點了暴走次郎拉麵$270 第一次來就感覺老闆非常親切，還沒開店就讓我進店裡等候，還和我分享日本的一些習俗，像是新的一年就是要吃像山一樣的食物。',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-18 00:00:00.000','張哲淵','1006','濃厚豚骨拉麵','4','其實是三訪了 麵屋豚介跟日本一樣用販賣機點單 之後在拿單給店員 我自己很喜歡這樣',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-15 00:00:00.000','Last Night','1007','黑蒜豚骨拉麵','4','好吃，農、淳、厚的拉麵湯頭，這次吃的的是黑蒜豚骨拉麵，黑蒜香氣十足，嚐起來微帶焦香，對喜歡吃蒜的朋友來說是加分的，口味也有為了台灣人降低鹹度，順便一提溏心蛋是給整顆，普普的，不過可惜這次沒吃到原版叉燒，這次吃的是特製叉燒，雖然也很美味',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-13 00:00:00.000','葉明','1008','濃厚豚骨拉麵','5','湯頭濃厚，店內氣氛也很好，店員都會有精神的打招呼，整體令人心情愉快',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-12 00:00:00.000','李世宏','1009','濃厚豚骨拉麵','5','這家麵屋豚介，他的拉麵湯頭濃郁，麵條軟Q有彈性，比我去日本吃的一蘭拉麵還好吃，大推這家麵屋豚介，喜歡吃拉麵的朋友，可以去試試喔。',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-10 00:00:00.000','王秉蕙','1010','濃厚豚骨拉麵','4','終於吃到了！味道不錯，下次試試看魚介！',NULL);
INSERT COMMENT (COMMENT_TIME,NAME,MEMBER_ID,MEAL,SCORE,COMMENT_WORD,PHOTO) values('2022-01-08 00:00:00.000','jason chang','1011','黑蒜豚骨拉麵','4','不錯的拉麵店，雖然用餐環境普通，但是老闆對拉麵的堅持有感受到，口味算是有迎合台灣的味道，吃的是黑蒜豚骨拉麵，湯頭濃郁卻不死鹹，這點很適合我！',NULL);
GO

/*--購物車--*/
DROP TABLE IF EXISTS [dbo].[cart]
GO

CREATE TABLE [dbo].[cart](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ACCOUNT] [varchar](20) NULL,
	[SP_NAME] [varchar](20) NULL,
	[SP_PRICE] [int] NULL,
	[BUY_NUM] [int] NULL,
	[COUNT] [int] NULL,
)
GO

DROP TABLE IF EXISTS [dbo].OrderDetail
GO
DROP TABLE IF EXISTS [dbo].CustomerOrder
GO

CREATE TABLE CustomerOrder(
	oid int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	userid nvarchar(30) NOT NULL,
	odate datetime NOT NULL,
	amount int NOT NULL,
	oprice int NOT NULL
)
GO

CREATE TABLE OrderDetail(
	Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	OrderId int NOT NULL FOREIGN KEY REFERENCES CustomerOrder(oid) ON DELETE CASCADE,
	Name nvarchar(20) NOT NULL,
	Price int NOT NULL,
	Quantity int NOT NULL,
	Psum int NOT NULL
)
GO

INSERT INTO CustomerOrder
VALUES ('eeit350403','2022-02-15 20:33:17.197',5,680),
('eeit350403','2022-02-15 20:33:28.820',3,440),
('eeit350401','2022-02-15 20:34:06.737',4,710),
('eeit350405','2022-02-15 20:34:37.100',6,800),
('eeit350402','2022-02-15 20:35:06.727',3,310),
('eeit350404','2022-02-15 20:35:22.167',3,410),
('eeit350401','2022-02-15 20:40:36.313',2,310),
('eeit350403','2022-02-15 20:40:53.673',2,290),
('eeit350403','2022-02-15 20:41:34.857',3,550),
('eeit350405','2022-02-15 20:42:12.757',4,570),
('eeit350402','2022-02-15 20:42:30.623',2,320)
GO

INSERT INTO OrderDetail
VALUES (1,'爆走次郎拉麵',100,1,100),(1,'麻辣魚介沾麵',160,1,160),(1,'濃厚麻辣豚骨拉麵',170,1,170),
(1,'大蔥鴨醬油拉麵',120,1,120),(1,'老母雞湯醬油拉麵',130,1,130),(2,'濃厚麻辣豚骨拉麵',170,1,170),
(2,'濃厚豚骨拉麵',190,1,190),(2,'大蔥鴨醬油拉麵',120,1,120),(3,'香味牛醬油沾麵',180,2,360),
(3,'黑蒜豚骨拉麵',100,1,100),(3,'麻辣魚介沾麵',160,1,160),(4,'巴東牛雜拉麵',110,1,110),
(4,'老母雞湯醬油拉麵',130,1,260),(4,'大蔥鴨醬油拉麵',120,1,120),(4,'魚介豚骨沾麵',140,1,140),
(4,'濃厚麻辣豚骨拉麵',170,1,170),(5,'爆走次郎拉麵',100,2,200),(5,'巴東牛雜拉麵',110,1,110),
(6,'魚介豚骨沾麵',140,1,140),(6,'麻辣魚介沾麵',160,1,160),(6,'巴東牛雜拉麵',110,1,110),
(7,'濃厚豚骨拉麵',150,1,150),(7,'麻辣魚介沾麵',160,1,160),(8,'魚介豚骨沾麵',140,1,140),
(8,'濃厚豚骨拉麵',150,1,150),(9,'香味牛醬油沾麵',180,2,360),(9,'黑蒜豚骨拉麵',190,1,190),
(10,'黑蒜豚骨拉麵',190,1,190),(10,'大蔥鴨醬油拉麵',120,2,240),(10,'魚介豚骨沾麵',140,1,140),
(11,'濃厚麻辣豚骨拉麵',170,1,170),(11,'濃厚豚骨拉麵',150,1,150)
GO
