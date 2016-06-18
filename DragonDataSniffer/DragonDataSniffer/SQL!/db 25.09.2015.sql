/*
Navicat SQL Server Data Transfer

Source Server         : mssql
Source Server Version : 110000
Source Host           : GOTHIC-PC\SQLEXPRESS:1433
Source Database       : tunnel
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2015-09-25 15:21:19
*/


-- ----------------------------
-- Table structure for [dbo].[MapInfo]
-- ----------------------------
DROP TABLE [dbo].[MapInfo]
GO
CREATE TABLE [dbo].[MapInfo] (
[ID] int NOT NULL ,
[MapName] varchar(32) NULL ,
[RegenX] int NULL ,
[RegenY] int NULL ,
[MapType] int NULL ,
[InSide] int NULL ,
[ViewRange] int NULL 
)


GO

-- ----------------------------
-- Records of MapInfo
-- ----------------------------
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'0', N'Rou', N'5323', N'4501', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'1', N'RouCos01', N'10443', N'7049', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'2', N'RouCos02', N'16373', N'5849', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'3', N'RouCos03', N'12935', N'9278', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'5', N'RouVal01', N'12879', N'3852', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'6', N'RouVal02', N'6097', N'4582', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'7', N'RouTemDn01', N'6270', N'389', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'8', N'RouTemDn02', N'5217', N'927', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'9', N'Eld', N'17214', N'13445', N'0', N'0', N'2000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'10', N'EldCem01', N'11166', N'1388', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'11', N'EldCem02', N'2063', N'2540', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'12', N'EldGbl01', N'6358', N'6976', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'13', N'EldPri01', N'9935', N'10604', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'14', N'EldPriDn01', N'2816', N'8117', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'15', N'EldFor01', N'7591', N'19060', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'16', N'EldSleep01', N'8809', N'8736', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'17', N'Urg', N'6293', N'5477', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'30', N'KDPrtShip', N'11069', N'8456', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'31', N'KDEddyHill', N'1740', N'11070', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'32', N'EchoCave', N'22810', N'22724', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'33', N'KDTrDn', N'1031', N'471', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'34', N'KDUnHall', N'2397', N'2555', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'35', N'KDEnMaze', N'1903', N'870', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'36', N'KDGoldHill', N'7222', N'6151', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'37', N'EldPri', N'896', N'1122', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'38', N'Job1_Dn01', N'1028', N'575', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'39', N'WindyCave', N'22810', N'22724', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'40', N'KDMDragon', N'987', N'1211', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'41', N'EldPriDn02', N'441', N'5018', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'42', N'Job2_Dn01', N'1028', N'575', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'43', N'Job2_Dn02', N'9355', N'11456', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'44', N'Job2_TimeG', N'3189', N'3232', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'45', N'ValDn01', N'1159', N'11349', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'46', N'CemDn01', N'8029', N'1765', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'47', N'GblDn01', N'5094', N'533', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'48', N'ElfDn01', N'2660', N'6901', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'49', N'GoldCave', N'22810', N'22724', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'50', N'PriDn01', N'12208', N'4514', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'51', N'ForDn01', N'5825', N'6128', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'52', N'KDHero', N'2397', N'2555', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'53', N'KDKingkong', N'10136', N'6183', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'54', N'KDHoneying', N'1740', N'11070', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'55', N'KDSpider', N'2397', N'2555', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'56', N'GblDn02', N'5081', N'6146', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'57', N'ElfDn02', N'5230', N'3741', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'58', N'PriDn02', N'5243', N'5059', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'59', N'UrgFire01', N'2411', N'24635', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'60', N'GuildT01', N'2929', N'2192', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'61', N'GuildT02', N'3198', N'4009', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'62', N'GuildT03', N'1384', N'2150', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'63', N'FireDn01', N'6358', N'6865', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'64', N'SwaDn01', N'6030', N'11347', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'65', N'UrgFireDn01', N'2337', N'11350', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'66', N'UrgSwaDn01', N'5666', N'6808', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'67', N'Fbattle01', N'2915', N'2215', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'68', N'Fbattle02', N'3230', N'1882', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'69', N'Fbattle03', N'1561', N'2188', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'70', N'MHBasic', N'5658', N'4244', N'2', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'72', N'R_Helga01', N'3225', N'3614', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'73', N'UrgSwa01', N'3463', N'4389', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'74', N'CemDn02', N'5847', N'15541', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'75', N'EldGbl02', N'9129', N'8213', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'76', N'EldPri02', N'6021', N'7540', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'77', N'Wedding', N'549', N'626', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'78', N'OX_field', N'6467', N'4771', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'79', N'Linkfield01', N'6881', N'3433', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'80', N'Linkfield02', N'2896', N'5861', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'81', N'BFGate01', N'1487', N'1517', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'82', N'BFGate02', N'1487', N'1517', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'83', N'ValDn02', N'5742', N'5724', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'84', N'ForDn02', N'5825', N'6128', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'85', N'FireDn02', N'6358', N'6865', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'86', N'KDHDragon', N'987', N'1211', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'87', N'KDHBat1', N'2397', N'2555', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'88', N'UrgDragon', N'887', N'5862', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'90', N'KDVictor', N'6144', N'1033', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'91', N'KDAntiHenis', N'1740', N'11070', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'92', N'Urg_Alruin', N'5000', N'5000', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'93', N'SwaDn02', N'6030', N'11347', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'94', N'Tower01', N'1182', N'7218', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'95', N'GuildT04', N'6516', N'6778', N'0', N'0', N'2400');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'96', N'Tower02', N'1182', N'7218', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'97', N'Leviathan', N'3006', N'5422', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'98', N'IDGate01', N'380', N'1143', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'99', N'QField01', N'1442', N'1385', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'100', N'QField02', N'775', N'872', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'101', N'QField03', N'1103', N'1046', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'102', N'QField04', N'557', N'1378', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'103', N'B_Cracker', N'3324', N'2787', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'104', N'GBHouse', N'1264', N'1622', N'7', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'105', N'UrgDark01', N'21400', N'2134', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'106', N'AlDn01', N'10651', N'2544', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'107', N'AlDn02', N'10651', N'2544', N'4', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'108', N'BFGate03', N'1487', N'1517', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'109', N'Tower03', N'8765', N'11255', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'110', N'BH_Helga', N'1558', N'2241', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'111', N'BH_Cracker', N'3324', N'2787', N'6', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'112', N'PsyIn', N'11877', N'14645', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'113', N'PsyOut', N'11877', N'14179', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'114', N'AdlF', N'2312', N'9961', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'115', N'KDMine', N'6911', N'5097', N'1', N'1', N'3000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'116', N'Adl', N'15181', N'12132', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'117', N'PsyInDn02', N'11877', N'14645', N'4', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'118', N'BFGate04', N'1487', N'1517', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'119', N'BerKal01', N'6219', N'4627', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'120', N'Bera', N'6532', N'1529', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'121', N'WarN', N'4102', N'1159', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'122', N'AdlThorn01', N'11459', N'11393', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'123', N'KDSpring', N'3653', N'2942', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'124', N'Gate', N'1487', N'1517', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'128', N'WarBL', N'1314', N'1366', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'129', N'KDEgg', N'11014', N'13463', N'1', N'0', N'3000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'130', N'WarL', N'1870', N'6993', N'3', N'1', N'6000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'132', N'RouT', N'6460', N'10405', N'3', N'0', N'6000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'135', N'BerFrz01', N'5782', N'22890', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'136', N'WarH', N'1269', N'12325', N'3', N'1', N'6000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'137', N'KDArena', N'3790', N'3254', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'138', N'KDGreenHill', N'1740', N'11070', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'139', N'E_Hwin', N'914', N'238', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'140', N'ArkDn01', N'2442', N'7042', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'141', N'Siren', N'11373', N'11868', N'3', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'142', N'ArkDn02', N'2442', N'7042', N'4', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'143', N'B_Albi', N'1600', N'155', N'0', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'144', N'E_Olympic', N'5463', N'22711', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'145', N'BerVale01', N'1091', N'11472', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'146', N'KDSoccer', N'6400', N'4500', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'147', N'AdlFH', N'2312', N'9961', N'3', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'148', N'KDWater', N'6334', N'5422', N'1', N'1', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'149', N'KDFargels', N'10900', N'1100', N'1', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'150', N'RouN', N'6445', N'8630', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'151', N'AdlVal01', N'28193', N'20110', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'153', N'Fbattle04', N'1768', N'2391', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'154', N'SD_Vale01', N'5620', N'6850', N'3', N'0', N'1600');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'155', N'KDSoccer_W', N'6400', N'4500', N'1', N'0', N'2000');
GO
INSERT INTO [dbo].[MapInfo] ([ID], [MapName], [RegenX], [RegenY], [MapType], [InSide], [ViewRange]) VALUES (N'158', N'KDCake', N'6391', N'5537', N'1', N'0', N'2000');
GO

-- ----------------------------
-- Table structure for [dbo].[MobInfo]
-- ----------------------------
DROP TABLE [dbo].[MobInfo]
GO
CREATE TABLE [dbo].[MobInfo] (
[ID] int NOT NULL ,
[InxName] text NOT NULL ,
[Name] text NOT NULL ,
[Level] int NOT NULL ,
[MaxHP] int NOT NULL ,
[WalkSpeed] int NOT NULL ,
[RunSpeed] int NOT NULL ,
[IsNPC] int NOT NULL ,
[Size] int NOT NULL ,
[WeaponType] int NOT NULL ,
[ArmorType] int NOT NULL ,
[GradeType] int NOT NULL ,
[Type] int NOT NULL ,
[IsPlayerSide] int NOT NULL ,
[AbsoluteSize] int NOT NULL 
)


GO

-- ----------------------------
-- Records of MobInfo
-- ----------------------------
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'0', N'Slime', N'Schleim', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1', N'MushRoom', N'Pilz', N'2', N'38', N'30', N'105', N'0', N'1000', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2', N'Imp', N'Imp', N'4', N'67', N'40', N'105', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3', N'Crab', N'Krabbe', N'6', N'107', N'20', N'105', N'0', N'1000', N'7', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4', N'Honeying', N'Bienchen', N'10', N'171', N'40', N'110', N'0', N'1000', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5', N'HungryWolf', N'Hungriger Wolf', N'10', N'171', N'30', N'110', N'0', N'1000', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6', N'Phino', N'Phino', N'11', N'188', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7', N'PhinoFlie', N'Phina', N'12', N'137', N'40', N'110', N'0', N'1000', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8', N'Ratman', N'Rattenmensch', N'13', N'272', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9', N'Boar', N'Eber', N'14', N'320', N'50', N'105', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10', N'Boogy', N'Schildie', N'15', N'366', N'30', N'95', N'0', N'1000', N'8', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'11', N'MaraCrew', N'MaraPirat', N'16', N'421', N'40', N'115', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12', N'MaraElite', N'MaraMatrose', N'17', N'479', N'40', N'115', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'13', N'MaraSailor', N'MaraElite', N'18', N'541', N'40', N'115', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'14', N'Mara', N'Mara', N'19', N'5458', N'50', N'120', N'0', N'1300', N'12', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'15', N'Kebing', N'Kebing', N'20', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'16', N'TombRaider', N'Grabr?uber', N'21', N'772', N'40', N'110', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'17', N'MageBook', N'Magiebuch', N'22', N'532', N'40', N'110', N'0', N'1000', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'18', N'MarloneArcher', N'MarloneBogensch?tze', N'23', N'702', N'40', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'19', N'MarloneMegaton', N'MarloneMegaton', N'24', N'989', N'50', N'110', N'0', N'1000', N'6', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'20', N'MarloneFighter', N'MarloneK?mpfer', N'25', N'1050', N'40', N'127', N'0', N'1300', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'21', N'MarloneCaptain', N'MarloneKapit?n', N'26', N'1102', N'40', N'127', N'0', N'1100', N'4', N'7', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'22', N'Marlone', N'Marlone', N'26', N'9917', N'40', N'133', N'0', N'1300', N'1', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'23', N'Skeleton', N'Skelett', N'23', N'928', N'30', N'110', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'24', N'SkelArcher', N'Skelettbogensch?tze', N'25', N'785', N'40', N'127', N'0', N'1000', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'25', N'SkelWarrior', N'Skelettkrieger', N'27', N'1164', N'40', N'115', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'26', N'SkelKnight', N'Skelettritter', N'34', N'14297', N'40', N'120', N'0', N'1300', N'7', N'5', N'1', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'27', N'EldItemMctNina', N'H?ndlerin Nina', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'28', N'RouSmithJames', N'Schmied James', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'29', N'RouSoulMctJulia', N'Heilerin Julia', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'30', N'RouGaianMaria', N'Templerin Maria', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'31', N'RouSkillRubi', N'Lehrmeisterin Ruby', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'32', N'MapLinkGate', N'Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'33', N'Bat', N'Fledermaus', N'28', N'1218', N'40', N'110', N'0', N'1300', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'34', N'ArchMageBook', N'Erzmagiebuch', N'30', N'841', N'40', N'110', N'0', N'1500', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'35', N'Spider', N'Spinne', N'31', N'1401', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'36', N'FlyingStaff', N'Fliegender Stab', N'32', N'1465', N'30', N'110', N'0', N'1500', N'3', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'37', N'Zombie', N'Zombie', N'33', N'1532', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'38', N'OldFox', N'Grabfuchs', N'34', N'1589', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'39', N'FireViVi', N'Feuervivi', N'37', N'1132', N'30', N'110', N'0', N'1200', N'20', N'1', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'40', N'Ghost', N'Geist', N'37', N'1784', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'41', N'Robo', N'Robo', N'39', N'17297', N'40', N'133', N'0', N'1300', N'1', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'42', N'Hob', N'Hob', N'38', N'1852', N'35', N'115', N'0', N'1250', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'43', N'BoneImp', N'Knochenimp', N'39', N'1922', N'30', N'110', N'0', N'1650', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'44', N'Goblin', N'Goblin', N'41', N'2054', N'35', N'110', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'45', N'Prock', N'Prock', N'42', N'1613', N'40', N'110', N'0', N'1400', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'46', N'GoblinSwordman', N'Goblinschwertk?mpfer', N'43', N'2189', N'40', N'127', N'0', N'1000', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'47', N'WereBear', N'Werb?r', N'44', N'2261', N'50', N'110', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'48', N'GoblinMage', N'Goblinmagier', N'45', N'1484', N'40', N'110', N'0', N'1500', N'20', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'49', N'GoblinCaptain', N'Goblinkapit?n', N'47', N'2475', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50', N'GobleKing', N'Goblink?nig', N'48', N'22860', N'40', N'133', N'0', N'1300', N'7', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'51', N'WeakenedOgre', N'Geschw?chter Oger', N'51', N'2762', N'30', N'110', N'0', N'1200', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'52', N'KingCall', N'K?nigColl', N'52', N'2841', N'50', N'110', N'0', N'1000', N'7', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'53', N'Harkan', N'Harkan', N'50', N'2695', N'40', N'110', N'0', N'1200', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'54', N'VampireBat', N'Vampirfledermaus', N'54', N'2989', N'50', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'55', N'Prisoner', N'Gefangener', N'55', N'3068', N'40', N'127', N'0', N'1200', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'56', N'Torturer', N'Folterer', N'56', N'3150', N'30', N'110', N'0', N'1000', N'7', N'7', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'57', N'KaraSolider', N'Karasiansoldat', N'58', N'3303', N'40', N'110', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'58', N'KaraTempler', N'KarasianTempler', N'59', N'2174', N'40', N'110', N'0', N'1000', N'20', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'59', N'Navar', N'Navar', N'71', N'4491', N'40', N'110', N'0', N'1500', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'60', N'RatmanKnight', N'Rattenritter', N'61', N'4111', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'61', N'GoldenBat', N'Goldene Fledermaus', N'76', N'3648', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'62', N'KingSpider', N'K?nigsspinne', N'60', N'3469', N'30', N'110', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'63', N'Nox', N'Nox', N'64', N'3829', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'64', N'JewelKeeper', N'Juwelenw?chter', N'68', N'4211', N'40', N'127', N'0', N'1400', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'65', N'RunningBas', N'Verfluchtes Schwert', N'76', N'3221', N'30', N'127', N'0', N'1600', N'1', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'66', N'GhostKnight', N'D?monenritter', N'78', N'30154', N'50', N'133', N'0', N'1300', N'7', N'0', N'1', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'67', N'Pixy', N'Pixy', N'60', N'3469', N'30', N'127', N'0', N'1300', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'68', N'Pinky', N'Pinky', N'61', N'2719', N'30', N'110', N'0', N'1200', N'20', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'69', N'Greenky', N'Gr?nling', N'65', N'3925', N'30', N'127', N'0', N'1300', N'7', N'7', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'70', N'LizardMan', N'Echsenmann', N'68', N'4211', N'40', N'127', N'0', N'1200', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'71', N'LizardManKnight', N'Echsenritter', N'79', N'5298', N'40', N'127', N'0', N'1100', N'7', N'4', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'72', N'KingMushRoom', N'K?nigspilz', N'62', N'3648', N'30', N'127', N'0', N'1750', N'7', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'73', N'ElvenTree', N'Elfenbaum', N'69', N'4299', N'40', N'110', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'74', N'NaiadSoul', N'Naiadseele', N'66', N'2590', N'40', N'127', N'0', N'1200', N'20', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'75', N'LegendaryTree', N'Legend?rer Baum', N'74', N'43107', N'50', N'110', N'0', N'1200', N'7', N'6', N'1', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'76', N'Shylph', N'Sylphe', N'75', N'4895', N'30', N'127', N'0', N'1500', N'11', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'77', N'Lips', N'Maulpflanze', N'64', N'2923', N'40', N'110', N'0', N'1500', N'20', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'78', N'ElfKnightSoul', N'Beseelter Elfenritter', N'69', N'4299', N'40', N'127', N'0', N'1300', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'79', N'CloverTrumpy', N'Kreuztrumpf', N'67', N'4111', N'40', N'127', N'0', N'1000', N'1', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'80', N'HeartTrumpy', N'Herztrumpf', N'69', N'2771', N'40', N'105', N'0', N'1200', N'11', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'81', N'SpadeTrumpy', N'Piktrumpf', N'77', N'5095', N'40', N'138', N'0', N'1300', N'12', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'82', N'DiaTrumpy', N'Karotrumpf', N'76', N'3810', N'40', N'110', N'0', N'1300', N'2', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'83', N'JokerTrumpy', N'Jokertrumpf', N'79', N'4050', N'40', N'127', N'0', N'1200', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'84', N'Orc', N'Ork', N'61', N'3562', N'40', N'127', N'0', N'2000', N'1', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'85', N'OrcCaptain', N'Orkkapit?n', N'73', N'4685', N'40', N'138', N'0', N'1400', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'86', N'EldSoulMctAvon', N'Heiler Avon', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'87', N'EldSmithKarls', N'Schmied Karl', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'88', N'RouWeaponTitleMctZach', N'Waffentitelh?ndler Zach', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'89', N'EldStoreKyle', N'Lagerverwalter Kyle', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'90', N'EldWeaponTitleMctBran', N'Waffentitelh?ndler Bran', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'92', N'RouTownChiefRoumenus', N'Stadtmeister Roumenus', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'93', N'RouItemMctPey', N'H?ndlerin Pey', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'94', N'EldWarSkillMarty', N'Kriegermeister Marty', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'95', N'EldPalSkillKeest', N'Paladinmeisterin Keast', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'96', N'EldScoSkillDeikid', N'Sp?hermeister Deikid', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'97', N'EldWizSkillWishis', N'Zaubermeisterin Wishis', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'98', N'EldGuardCaptainShutian', N'Wachkapit?n Shutian', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'99', N'EldGuardNus', N'Wache Nus', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'100', N'EldArcGuard01', N'Bogenwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'101', N'EldArcGuard02', N'Bogenwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'102', N'EldArcGuard03', N'Wandernder H?ndler', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'103', N'EldSpeGuard01', N'Speerwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'104', N'EldSpeGuard02', N'Speerwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'105', N'EldSpeGuard03', N'Schlachtfeldwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'106', N'EldKidWorze', N'Kind Woz', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'107', N'WeddingDreian', N'Dreian Uriel', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'108', N'RouStoreRaina', N'Lagerverwalterin Raina', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'110', N'RouGuildBrom', N'Gildenmeister Brom', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'111', N'RouRookieGuideRaemi', N'Helferin Remi', N'0', N'0', N'0', N'0', N'1', N'900', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'112', N'EldItemMctKenton', N'H?ndler Kenton', N'0', N'0', N'0', N'0', N'1', N'900', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'114', N'EldGaianBjurin', N'Templerin Beth', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'115', N'EldCastleLordElderiss', N'Elfenlord Elderis', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'116', N'EldMrsMisen', N'Myzen', N'0', N'0', N'0', N'0', N'1', N'800', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'117', N'EldGuildPredrick', N'Gildenmeister Sir Predrick', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'118', N'RouDiggerPalmers', N'Bergarbeiter Palmers', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'119', N'EldDiggerRoyquin', N'Bergarbeiter Royquin', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'120', N'RouGrandfatherRobin', N'Robin', N'0', N'0', N'0', N'0', N'1', N'900', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'126', N'HednisFigGuard01', N'Sandh?gelLagerwache', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'127', N'HednisArcGuard01', N'Sandh?gelLagerwache', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'128', N'HednisClericMan', N'Julian', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'129', N'HednisMageWoman', N'Silver Allon', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'130', N'HednisSkillGrunt', N'Lehrmeister Grunt', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'131', N'HednisSmithRohan', N'Schmied Rohan', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'132', N'HednisSoulKeroll', N'Heilerin Carol', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'133', N'HednisStoreDrein', N'Lagerverwalterin Drein', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'135', N'Ec_PhinoFlie', N'VerleumderPhina', N'12', N'137', N'30', N'105', N'0', N'1300', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'136', N'Ec_ArchMageBook', N'H?hlenErzmagiebuch', N'30', N'841', N'40', N'105', N'0', N'1300', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'137', N'Dragon', N'Desi der Babydrache ', N'0', N'0', N'0', N'0', N'0', N'1000', N'7', N'6', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'138', N'OX_GateSpeGuard', N'OXQuizWache', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'142', N'RouDiggerDolTurn', N'Bergarbeiter DolTurn', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'143', N'GrandMasterShone', N'Meister Sean', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'144', N'Wd_Prock', N'H?hlenprock', N'42', N'1613', N'40', N'105', N'0', N'1400', N'20', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'145', N'Q_SandRatman', N'Sandratte', N'48', N'2540', N'45', N'127', N'0', N'1300', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'146', N'UruSmithHans', N'Schmied Hans', N'0', N'0', N'0', N'0', N'1', N'1300', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'147', N'UruItemMctVellon', N'H?ndler Vellon', N'0', N'0', N'0', N'0', N'1', N'1300', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'148', N'UruTownChiefAdrien', N'Stadtmeisterin Adrien', N'0', N'0', N'0', N'0', N'1', N'1300', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'149', N'UruSoulPooring', N'Heilerin Pooring', N'0', N'0', N'0', N'0', N'1', N'1400', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'150', N'UruGuildLump', N'Gildenmeister Lump', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'151', N'UruFurnitureForestTeem', N'M?belverk?ufer Forest Tim', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'152', N'UruStoreCurly', N'Lagerverwalter Curly', N'0', N'0', N'0', N'0', N'1', N'1400', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'153', N'UruSkillChyburn', N'Lehrmeister Cyburn', N'0', N'0', N'0', N'0', N'1', N'1400', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'154', N'Wd_Pinky', N'H?hlenpinky', N'61', N'2719', N'40', N'105', N'0', N'1300', N'20', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'155', N'Wd_Lips', N'H?hlenmaulpflanze', N'76', N'3810', N'45', N'127', N'0', N'1800', N'20', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'156', N'TempSoul', N'Wandernder Seelensteinh?ndler', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'157', N'TempSkill', N'Wandernder Lehrmeister', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'158', N'FbattleSoul', N'Seelensteinh?ndler', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'159', N'FbattleGate', N'KampfzonenTorw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'160', N'GodEnide', N'Unbekannter Dunkelelf', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'161', N'Vietree', N'Vietree', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'162', N'VegetarianGoblin', N'Vegetarischer Goblin', N'0', N'0', N'0', N'0', N'1', N'1000', N'7', N'7', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'163', N'SpyGoblin', N'Goblin', N'0', N'0', N'0', N'0', N'1', N'1100', N'7', N'7', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'164', N'PatrolGuardianPolmon', N'W?chter Polmon', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'165', N'DustAdventurer01', N'Verwundeter Abenteurer', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'166', N'DustAdventurer02', N'Verwundeter Abenteurer', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'167', N'PillarofLight', N'Kissen des Lichts', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'168', N'MctMasterMaxUtter', N'H?ndlermeister Max Utter', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'169', N'ItemMctJelluin', N'H?ndler Jelluin', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'170', N'StoneMctTomson', N'Steinh?ndler Tomson', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'171', N'mercenary01', N'Handelss?ldner 1', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'172', N'mercenary02', N'Handelss?ldner 2', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'173', N'OX_gate', N'OXTor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'174', N'DustAdventurer03', N'?ngstlicher Abenteurer Roy', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'175', N'PriestMediang', N'Priestersch?lerin Median', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'176', N'DustAdventurer04', N'Gefangener Abenteurer Watson', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'177', N'SecretaryCleo', N'Cleo', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'178', N'ChristmasTree', N'Weihnachtsbaum', N'0', N'0', N'0', N'0', N'1', N'1600', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'179', N'UrgSwaItemMct', N'H?ndler der J?gerunion', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'180', N'AlruinChiefKiera', N'Stadtmeisterin Kiera', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'181', N'AlruinSmithMacurdos', N'Schmied Marcudos', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'182', N'AlruinStoreRel', N'Lagerverwalterin Rell', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'183', N'AlruinSoulRunadilla', N'Heilerin Runadilla', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'184', N'AlruinItemMctGeric', N'ItemH?ndler Geric', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'185', N'AlruinSkillPaela', N'Lehrmeisterin Paella', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'186', N'AlruinTeiler', N'Taylor', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'187', N'PledgeBook', N'Buch des Eides', N'0', N'0', N'0', N'0', N'1', N'1100', N'20', N'1', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'188', N'InvisibleMan', N'Unsichtbarer NPC', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'189', N'EldFurnitureForestTall', N'M?belverk?ufer Forest Tall', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'190', N'RouFurnitureForestTom', N'M?belverk?ufer Forest Tom', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'191', N'Gate_Town', N'Teleporter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'192', N'AlruinRick', N'Rick', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'193', N'Alruin_EarthStone', N'Erdstein', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'194', N'Alruin_FireStone', N'Feuerstein', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'195', N'Alruin_TreeStone', N'Waldstein', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'196', N'Alruin_WaterStone', N'Wasserstein', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'197', N'Alruin_WindStone', N'Windstein', N'0', N'0', N'0', N'0', N'1', N'1500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'198', N'BeraChiefValiere', N'Stadtmeister Balier', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'199', N'BeraMargentia', N'Priesterin Magentia', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'200', N'BeraEtty', N'Junge Priesterin Etti', N'0', N'0', N'0', N'0', N'1', N'900', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'201', N'BeraDuskin', N'?ltester Duskin', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'202', N'BeraAmelie', N'Floristin Amelia', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'203', N'BeraItemMilly', N'Obsth?ndlerin Milly', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'204', N'BeraItemEdmong', N'H?ndler Edmond', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'205', N'BeraSmithMcDilan', N'Schmied McDilan', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'206', N'BeraSkillHal', N'Lehrmeister Hal', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'207', N'BeraStoreShane', N'Lagerverwalterin Lily ', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'208', N'BeraSoulOlivia', N'Heilerin Olivia', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'209', N'BeraVillager', N'Einwohnerin Dini', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'210', N'BeraGuardArcher', N'Bogenwache', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'211', N'IDMapLinkGate01', N'Instanzeingang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'212', N'IDMapLinkGate02', N'Instanzausgang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'213', N'DBossDoor00', N'Tor zum Boss', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'214', N'DBossDoor01', N'1. Tor zum Zwischenboss 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'215', N'DBossDoor02', N'1. Tor zum Zwischenboss 2', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'216', N'DBossDoor03', N'1. Tor zum Zwischenboss 3', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'217', N'DBossDoor04', N'1. Tor zum Zwischenboss 4', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'218', N'IDMapLinkGate00', N'Ausgang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'219', N'DBossDoor01_1', N'2. Tor zum Zwischenboss 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'220', N'DBossDoor04_1', N'2. Tor zum Zwischenboss 4', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'221', N'SecretaryClio', N'Clio', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'222', N'LevelGuard20', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'223', N'LevelGuard30', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'224', N'LevelGuard40', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'225', N'LevelGuard50', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'226', N'LevelGuard60', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'227', N'LevelGuard70', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'228', N'LevelGuard80', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'229', N'LevelGuard90', N'Abyssw?chter', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'230', N'Raphael', N'Raphael', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'231', N'IDMapLinkGate03', N'Eingang des LeviathanNests', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'232', N'MapLinkGate01', N'Eingang zum Geheimen Keller', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'233', N'IDLeviathanGate01', N'Steintor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'234', N'GuildItemMct', N'Gildenitemh?ndler', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'14', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'235', N'GuildGate00', N'Nicht benutzbares Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'236', N'GuildGate01', N'Wachturm', N'0', N'0', N'0', N'0', N'1', N'2000', N'0', N'0', N'5', N'11', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'237', N'GuildGate02', N'Leuchtfeuer', N'0', N'0', N'0', N'0', N'1', N'2000', N'0', N'0', N'5', N'11', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'238', N'GuildGate03', N'Turmspitze', N'0', N'0', N'0', N'0', N'1', N'2000', N'0', N'0', N'5', N'11', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'239', N'GuildGate04', N'Windm?hle', N'0', N'0', N'0', N'0', N'1', N'2000', N'0', N'0', N'5', N'11', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'240', N'GuildGate05', N'Altar', N'0', N'0', N'0', N'0', N'1', N'2000', N'0', N'0', N'5', N'11', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'241', N'GT_TargetGate_Blue', N'Zieltor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'242', N'GT_TargetGate_Red', N'Zieltor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'243', N'GT_TargetGate_Normal', N'Zieltor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'244', N'Blue_Flag00', N'Wachturm', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'245', N'Red_Flag00', N'Wachturm', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'246', N'Normal_Flag00', N'Wachturm', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'247', N'Blue_Flag01', N'Leuchtfeuer', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'248', N'Red_Flag01', N'Leuchtfeuer', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'249', N'Normal_Flag01', N'Leuchtfeuer', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'250', N'Blue_Flag02', N'Turmspitze', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'251', N'Red_Flag02', N'Turmspitze', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'252', N'Normal_Flag02', N'Turmspitze', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'253', N'Blue_Flag03', N'Windm?hle', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'254', N'Red_Flag03', N'Windm?hle', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'255', N'Normal_Flag03', N'Windm?hle', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'256', N'Blue_Flag04', N'Altar', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'257', N'Red_Flag04', N'Altar', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'258', N'Normal_Flag04', N'Altar', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'15', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'259', N'GT_BigGate', N'Holzzaun', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'260', N'DiceGameInfo', N'?? ???', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'261', N'EldStoreFranz', N'Lagerverwalter Franz', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'263', N'LevelGuard110', N'Schlachtfeldwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'264', N'LevelGuard120', N'Schlachtfeldwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'300', N'SpeedySlime', N'Schneller Schleim', N'3', N'47', N'60', N'135', N'0', N'700', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'301', N'SlowSlime', N'Langsamer Schleim', N'6', N'107', N'10', N'90', N'0', N'1200', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'302', N'FireMushRoom', N'Feuerpilz', N'5', N'90', N'30', N'100', N'0', N'1000', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'303', N'GangImp', N'Gangimp', N'7', N'123', N'40', N'105', N'0', N'1200', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'304', N'SubImp', N'Gelangweilter Imp', N'5', N'90', N'40', N'95', N'0', N'1100', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'305', N'BlueCrab', N'Blaue Krabbe', N'8', N'140', N'25', N'85', N'0', N'1000', N'7', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'306', N'SpeedyHoneying', N'Nerv?ses Bienchen', N'7', N'123', N'60', N'125', N'0', N'900', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'307', N'SmartPhino', N'Smarter Phino', N'19', N'606', N'40', N'102', N'0', N'1300', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'308', N'SharpBoar', N'Starker Eber', N'17', N'479', N'60', N'120', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'309', N'SubBoar', N'Gelangweilter Eber', N'15', N'366', N'60', N'110', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'310', N'SpeedyBoogy', N'Schnelle Schildie', N'18', N'541', N'60', N'110', N'0', N'800', N'8', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'311', N'JokeKebing', N'JokerKebing', N'19', N'606', N'40', N'100', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'312', N'PunchMageBook', N'Handgreifliches Magiebuch', N'22', N'532', N'40', N'115', N'0', N'1500', N'20', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'313', N'MarloneSoldier', N'MarloneSoldat', N'26', N'1102', N'40', N'127', N'0', N'1400', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'314', N'SkelSoldier', N'Skelettsoldat', N'26', N'1102', N'40', N'115', N'0', N'1200', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'315', N'BabyBat', N'Babyfledermaus', N'22', N'867', N'40', N'135', N'0', N'800', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'316', N'EarthSpider', N'Erdspinne', N'40', N'1982', N'40', N'133', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'317', N'KingStaff', N'K?nigsstab', N'34', N'1589', N'20', N'85', N'0', N'2500', N'3', N'1', N'0', N'1', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'318', N'MasicStaff', N'Magiestab', N'33', N'966', N'40', N'110', N'0', N'1000', N'3', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'319', N'Fox', N'Fuchs', N'37', N'1784', N'60', N'110', N'0', N'1300', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'320', N'SubFox', N'Gelangweilter Fuchs', N'35', N'1656', N'60', N'100', N'0', N'1000', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'321', N'IceViVi', N'Eisvivi', N'29', N'806', N'50', N'115', N'0', N'1000', N'20', N'1', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'322', N'LightingViVi', N'Lichtvivi', N'53', N'1863', N'50', N'109', N'0', N'1400', N'20', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'323', N'BabyWereBear', N'BabyWerb?r', N'36', N'1723', N'30', N'105', N'0', N'800', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'324', N'DisHarkan', N'Desharkan', N'58', N'3303', N'40', N'105', N'0', N'1500', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'325', N'SeniorTorturer', N'Oberfolterer', N'57', N'3220', N'40', N'105', N'0', N'1300', N'7', N'7', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'326', N'NavarHenter', N'Navarj?ger', N'74', N'4790', N'40', N'130', N'0', N'1300', N'1', N'4', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'327', N'LittleRunningBas', N'Kleines verfluchtes Schwert', N'62', N'2345', N'30', N'90', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'328', N'GiantSparkDog', N'Riesiger Funkenhund', N'71', N'2894', N'30', N'100', N'0', N'1800', N'20', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'329', N'MiniJewelKeeper', N'Kleiner Juwelenw?chter', N'61', N'3562', N'40', N'130', N'0', N'1000', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'330', N'RedStonie', N'Roter Findling', N'70', N'4401', N'30', N'105', N'0', N'1300', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'331', N'ArchonJuinor', N'Junger Archon', N'60', N'3469', N'40', N'130', N'0', N'1150', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'332', N'OldArchon', N'Alter Archon', N'76', N'4988', N'30', N'110', N'0', N'1500', N'8', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'333', N'GiantPixy', N'Riesenpixy', N'72', N'4594', N'30', N'95', N'0', N'1500', N'1', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'334', N'OrcHunter', N'Orkj?ger', N'63', N'3742', N'40', N'100', N'0', N'2020', N'1', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'335', N'BlueCloverTrumpy', N'Blauer Kreuztrumpf', N'71', N'4491', N'40', N'130', N'0', N'1500', N'1', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'336', N'ElfKnightDemon', N'D?monischer Elfenritter', N'77', N'5095', N'40', N'130', N'0', N'1200', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'337', N'NaiadDemon', N'Naiadd?mon', N'74', N'3093', N'40', N'130', N'0', N'1300', N'20', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'338', N'MiniLips', N'Kleine Maulpflanze', N'49', N'1997', N'30', N'110', N'0', N'1000', N'20', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'339', N'GreedyLizardMan', N'Gieriger Echsenmann', N'74', N'4790', N'40', N'138', N'0', N'1250', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'340', N'LittleHob', N'Kleiner Hob', N'9', N'154', N'40', N'110', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'341', N'MiniGreenky', N'Kleiner Gr?nling', N'11', N'188', N'40', N'110', N'0', N'800', N'7', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'342', N'MiniPinky', N'MiniPinky', N'17', N'353', N'40', N'105', N'0', N'800', N'20', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'343', N'LittleLizardMan', N'Kleiner Echsenmann', N'20', N'684', N'40', N'105', N'0', N'800', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'344', N'ProckZone', N'Prockzone', N'21', N'578', N'30', N'105', N'0', N'1000', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'345', N'GoldrySlime', N'Goldener Schleim', N'24', N'989', N'40', N'110', N'0', N'1300', N'8', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'346', N'GlowWolf', N'Gl?hender Wolf', N'25', N'1050', N'40', N'115', N'0', N'1200', N'7', N'6', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'347', N'SilverySlime', N'Silberschleim', N'24', N'989', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'348', N'ScareImp', N'Wilder Imp', N'32', N'1465', N'40', N'115', N'0', N'1400', N'7', N'9', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'349', N'CemWolf', N'Grabwolf', N'35', N'1656', N'40', N'115', N'0', N'1400', N'7', N'4', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'350', N'SandMushroom', N'Sandpilz', N'46', N'2399', N'45', N'115', N'0', N'1600', N'7', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'351', N'DeadTreeSoul', N'Tote Baumseele', N'56', N'3150', N'20', N'95', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'352', N'DesertWolf', N'Wilder ?dlandwolf', N'34', N'1589', N'40', N'115', N'0', N'1300', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'353', N'DesertTree', N'Ruheloser Baum', N'29', N'1282', N'45', N'127', N'0', N'1300', N'7', N'6', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'354', N'DesertArchon', N'Wilder ?dlandarchon', N'33', N'1532', N'20', N'95', N'0', N'1000', N'20', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'355', N'Mandragora', N'Mandragora', N'3', N'47', N'60', N'135', N'0', N'100', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'500', N'NoxHunter', N'Noxj?ger', N'75', N'4895', N'30', N'127', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'501', N'GoldJewelKeeper', N'Kronjuwelenw?chter', N'72', N'4594', N'30', N'127', N'0', N'1700', N'7', N'6', N'0', N'1', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'502', N'Stonie', N'Findling', N'66', N'4013', N'30', N'127', N'0', N'1000', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'503', N'AncientStonie', N'Alter Findling', N'78', N'5190', N'30', N'127', N'0', N'1200', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'504', N'SparkDog', N'Funkenhund', N'68', N'2710', N'30', N'138', N'0', N'1300', N'20', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'505', N'Archon', N'Archon', N'65', N'3925', N'30', N'127', N'0', N'1000', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'506', N'Incubus', N'Inkubus', N'64', N'2462', N'30', N'127', N'0', N'1200', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'507', N'BlackIncubus', N'Schwarzer Inkubus', N'78', N'3350', N'30', N'127', N'0', N'1000', N'3', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'508', N'SpadeGuardTrumpy', N'Piktrumpfwache', N'73', N'4685', N'30', N'138', N'0', N'1000', N'12', N'4', N'0', N'1', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'509', N'DiaMaster', N'Karomeister', N'82', N'32637', N'40', N'133', N'0', N'1500', N'7', N'6', N'1', N'1', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'511', N'FireNix', N'Feuernix', N'80', N'5395', N'40', N'138', N'0', N'1500', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'512', N'FireSpirit', N'Feuergeist', N'81', N'5505', N'40', N'138', N'0', N'1300', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'513', N'FlameHoneying', N'Flammenbienchen', N'81', N'5505', N'40', N'138', N'0', N'2500', N'8', N'9', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'514', N'CoreGuardianU', N'Kernw?chter', N'82', N'5602', N'40', N'125', N'0', N'1300', N'6', N'6', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'515', N'MineMole', N'Minenmaulwurf', N'83', N'5713', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'516', N'RubyGuardianU', N'Rubinw?chter', N'84', N'5823', N'40', N'138', N'0', N'1200', N'8', N'4', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'517', N'FlameSpirit', N'Flammengeist', N'85', N'3830', N'40', N'138', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'518', N'KidMon', N'Kidmon', N'86', N'6037', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'0', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'519', N'Miner', N'Bergarbeiter', N'86', N'4610', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'520', N'UndeadMiner', N'Bergarbeiterskelett', N'87', N'6140', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'521', N'KartMiner', N'Lorenarbeiter', N'87', N'6140', N'40', N'138', N'0', N'1600', N'1', N'4', N'0', N'0', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'522', N'LavaVivi', N'Lavavivi', N'88', N'4049', N'40', N'138', N'0', N'2300', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'523', N'JewelTree', N'Juwelenbaum', N'88', N'4049', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'524', N'MagmaTon', N'Magmaton', N'89', N'6357', N'40', N'138', N'0', N'1000', N'8', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'525', N'FlameMinemole', N'Flammenmaulwurf', N'89', N'6357', N'40', N'138', N'0', N'1800', N'7', N'9', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'526', N'RedNix', N'Roter Nix', N'90', N'6472', N'40', N'138', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'527', N'CrystalGuardianU', N'Kristallw?chter', N'90', N'6472', N'40', N'138', N'0', N'1400', N'7', N'6', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'528', N'LavaMagmaton', N'Lavamagmaton', N'91', N'6578', N'40', N'138', N'0', N'1200', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'529', N'GuardianMaster', N'Wachvorsteher', N'91', N'16445', N'40', N'138', N'0', N'800', N'1', N'4', N'4', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'530', N'Gagoyle', N'Lavagargoyle', N'92', N'6694', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'531', N'GiantMagmaton', N'Riesenmagmaton', N'92', N'66937', N'40', N'138', N'0', N'1700', N'8', N'6', N'1', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'532', N'BellowKnight', N'Verfluchter Ritter', N'92', N'6694', N'40', N'138', N'0', N'1200', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'533', N'BellowKnightS', N'Verfluchter Silberritter', N'93', N'6813', N'40', N'138', N'0', N'1250', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'534', N'CaimanJunior', N'Juniorkaiman', N'93', N'7637', N'40', N'138', N'0', N'1100', N'7', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'535', N'BellowKnightG', N'Verfluchter Goldritter', N'94', N'17296', N'40', N'138', N'0', N'1300', N'1', N'4', N'4', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'536', N'Caiman', N'Kaiman', N'94', N'10023', N'40', N'138', N'0', N'1000', N'7', N'2', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'537', N'Rhinoce', N'Rhino', N'94', N'10023', N'40', N'138', N'0', N'800', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'538', N'BellowknightRord', N'Verfluchter Ritterf?rst', N'95', N'70389', N'40', N'138', N'0', N'1500', N'1', N'4', N'1', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'539', N'MudMan', N'Matschmensch', N'95', N'10524', N'40', N'138', N'0', N'1700', N'8', N'9', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'540', N'Mandrake', N'Alraune', N'95', N'10524', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'541', N'MantrapPlant', N'Fallenpflanze', N'96', N'11050', N'40', N'138', N'0', N'1200', N'7', N'9', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'542', N'WereBoar', N'Werkeiler', N'97', N'11603', N'40', N'138', N'0', N'1300', N'5', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'543', N'LivingTotem', N'Pink Pig', N'98', N'9746', N'40', N'138', N'0', N'1500', N'20', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'544', N'Slug', N'Schnecke', N'99', N'12792', N'40', N'138', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'545', N'Shadow', N'Schatten', N'100', N'13432', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'546', N'RhinoceLord', N'Rhinof?rst', N'100', N'13432', N'40', N'138', N'0', N'900', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'547', N'MadSlug', N'Verr?ckte Schnecke', N'100', N'13432', N'40', N'138', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'548', N'RedShadow', N'Roter Schatten', N'101', N'14103', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'549', N'Raplan', N'Laplan', N'101', N'14103', N'40', N'138', N'0', N'1400', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'550', N'BigMudMan', N'Gro?er Matschmensch', N'102', N'11847', N'40', N'138', N'0', N'2000', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'551', N'LivingStatue', N'Lebende Statue', N'103', N'15549', N'40', N'138', N'0', N'1700', N'2', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'552', N'Phouch', N'Phouch', N'103', N'15549', N'40', N'138', N'0', N'1300', N'8', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'553', N'LivingStone', N'Lebender Stein', N'104', N'16327', N'40', N'138', N'0', N'1800', N'7', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'554', N'Weasel', N'Wiesel', N'104', N'16327', N'40', N'138', N'0', N'1500', N'8', N'9', N'0', N'3', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'555', N'RhinoceHunter', N'Rhinoj?ger', N'105', N'13714', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'556', N'CaimanGiant', N'Riesenkaiman', N'105', N'51429', N'40', N'138', N'0', N'1300', N'7', N'6', N'1', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'557', N'ShadowMaster', N'Schattenmeister', N'105', N'51429', N'40', N'138', N'0', N'2000', N'1', N'1', N'1', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'558', N'BlackShadow', N'Schwarzer Schatten', N'105', N'34286', N'40', N'138', N'0', N'1500', N'1', N'1', N'4', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'559', N'BlackBear', N'Schwarzb?r', N'106', N'18000', N'40', N'138', N'0', N'1300', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'560', N'RedBear', N'Braunb?r', N'107', N'18900', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'3', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'561', N'FireShella', N'Feuershella', N'108', N'19845', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'562', N'FireTaitan', N'Feuertitan', N'109', N'16670', N'40', N'138', N'0', N'1500', N'14', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'563', N'WaterAlca', N'WassergeistAlki', N'109', N'20837', N'40', N'138', N'0', N'1200', N'14', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'564', N'WaterBaridon', N'Wasserbaridon', N'110', N'21879', N'40', N'138', N'0', N'1300', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'565', N'EarthCalerben', N'Erdkalerben', N'111', N'22973', N'40', N'138', N'0', N'1200', N'7', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'566', N'MagriteImp', N'MagriteImp', N'111', N'22973', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'567', N'EarthNerpa', N'Erdnerpa', N'112', N'19298', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'568', N'MagriteHoneying', N'MagriteBienchen', N'112', N'24122', N'40', N'138', N'0', N'2100', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'569', N'WindNepilim', N'Windnepilim', N'113', N'20262', N'40', N'138', N'0', N'2000', N'14', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'570', N'Seidhunter', N'Sektenanh?nger', N'113', N'20262', N'40', N'138', N'0', N'1500', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'571', N'WindLence', N'Windlence', N'114', N'26595', N'40', N'138', N'0', N'2000', N'7', N'0', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'572', N'Seidstar', N'Sektenj?ger', N'114', N'26595', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'573', N'Seidwarrior', N'Sektenkrieger', N'114', N'26595', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'574', N'Magrite', N'Magrite', N'115', N'67018', N'40', N'138', N'0', N'1200', N'7', N'1', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'575', N'Ruga', N'Ruga', N'116', N'29321', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'576', N'BabyPhouch', N'BabyPhouch', N'114', N'29321', N'40', N'138', N'0', N'800', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'577', N'Vehimoth', N'Behemoth', N'114', N'30787', N'40', N'138', N'0', N'1500', N'8', N'9', N'0', N'4', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'578', N'PoisonMantrapPlant', N'Giftige Fallenpflanze', N'117', N'30787', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'579', N'RedCondor', N'Roter Kondor', N'118', N'32326', N'40', N'138', N'0', N'1500', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'580', N'Raplansia', N'Laplansia', N'118', N'32326', N'40', N'138', N'0', N'1700', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'581', N'GiantRedCondor', N'Roter Riesenkondor', N'119', N'33942', N'40', N'138', N'0', N'1500', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'582', N'PoisonMandrake', N'Giftige Alraune', N'119', N'33942', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'583', N'Kruge', N'Kruger', N'120', N'35300', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'584', N'Shella', N'Shella', N'114', N'26595', N'40', N'138', N'0', N'1600', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'585', N'Baridon', N'Baridon', N'108', N'21830', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'586', N'Nerpa', N'Nerpa', N'123', N'1', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'587', N'Alka', N'Alki', N'106', N'19800', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'588', N'KaraWarrior', N'KarawanenKrieger', N'124', N'1', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'589', N'KaraDarkTempler', N'Dunkler KarawanenTempler', N'125', N'1', N'40', N'138', N'0', N'1300', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'590', N'Pergy', N'Pergy', N'112', N'24122', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'591', N'LeoPard', N'Leopard', N'111', N'22973', N'40', N'138', N'0', N'1300', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'592', N'Ape', N'Ape', N'111', N'22973', N'40', N'138', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'593', N'BattleBeak', N'Kampfschnauze', N'111', N'22973', N'40', N'138', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'594', N'OldLeipoon', N'Alter Leipoon', N'131', N'1', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'595', N'Leipoon', N'Leipoon', N'130', N'1', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'596', N'BabyLeipoon', N'BabyLeipoon', N'129', N'1', N'40', N'138', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'597', N'Psyken', N'Psyken', N'133', N'1', N'40', N'138', N'0', N'1700', N'7', N'1', N'1', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'598', N'PsykenDog', N'Psykens Hund', N'132', N'1', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'599', N'VehimothUndeath', N'Untoter Behemoth', N'114', N'79785', N'50', N'110', N'0', N'1000', N'8', N'6', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'600', N'BlueCrabA', N'Blaue Krabbe', N'9', N'154', N'25', N'85', N'0', N'1000', N'7', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'601', N'BlueCrabB', N'Blaue Krabbe', N'10', N'169', N'25', N'85', N'0', N'1000', N'7', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'602', N'HoneyingA', N'Bienchen', N'11', N'186', N'40', N'110', N'0', N'1100', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'603', N'HoneyingB', N'Bienchen', N'12', N'205', N'40', N'110', N'0', N'1200', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'604', N'BoogyA', N'Schildie', N'12', N'205', N'30', N'95', N'0', N'1000', N'8', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'605', N'BoogyB', N'Schildie', N'13', N'226', N'30', N'95', N'0', N'1000', N'8', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'606', N'RatmanA', N'Rattenmensch', N'14', N'248', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'607', N'BoogyC', N'Schildie', N'14', N'248', N'30', N'95', N'0', N'1000', N'8', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'608', N'RatmanB', N'Rattenmensch', N'15', N'365', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'609', N'BoarA', N'Keiler', N'15', N'365', N'50', N'105', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'610', N'BoarB', N'Keiler', N'16', N'420', N'50', N'105', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'611', N'JokeKebingA', N'JokerKebing', N'17', N'483', N'40', N'100', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'612', N'JokeKebingB', N'JokerKebing', N'18', N'556', N'40', N'100', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'613', N'KebingA', N'Kebing', N'19', N'639', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'614', N'TombRaiderA', N'Grabr?uber', N'22', N'711', N'40', N'110', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'615', N'SkeletonA', N'Skelett', N'22', N'711', N'30', N'110', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'616', N'SilverySlimeA', N'Silberschleim', N'22', N'711', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'617', N'MarloneMegatonA', N'MarloneMegaton', N'23', N'725', N'50', N'110', N'0', N'1000', N'6', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'618', N'SilverySlimeB', N'Siberschleim', N'23', N'725', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'619', N'SkeletonB', N'Skelett', N'24', N'740', N'30', N'110', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'620', N'GoldrySlimeA', N'Goldschleim', N'25', N'755', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'621', N'SkelSoldierA', N'Skelettkrieger', N'25', N'755', N'40', N'115', N'0', N'1200', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'622', N'GoldrySlimeB', N'Goldschleim', N'26', N'770', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'623', N'SkelArcherA', N'Skelettbogensch?tze', N'27', N'628', N'40', N'127', N'0', N'1000', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'624', N'SkelSoldierB', N'Skelettkrieger', N'27', N'785', N'40', N'115', N'0', N'1200', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'625', N'MarloneCaptainA', N'MarloneKapit?n', N'27', N'785', N'40', N'127', N'0', N'1100', N'4', N'7', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'626', N'SkelWarriorA', N'Skelettk?mpfer', N'28', N'801', N'40', N'115', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'627', N'BatA', N'Fledermaus', N'29', N'817', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'628', N'BatB', N'Fledermaus', N'30', N'841', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'629', N'SpiderA', N'Spinne', N'30', N'841', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'630', N'SpiderB', N'Spinne', N'32', N'999', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'631', N'ScareImpA', N'Wilder Imp', N'33', N'1089', N'40', N'115', N'0', N'1450', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'632', N'ZombieA', N'Zombie', N'34', N'1187', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'633', N'DesertArchonA', N'?dlandarchon', N'34', N'1187', N'20', N'95', N'0', N'1050', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'634', N'ScareImpB', N'Wilder Imp', N'34', N'1187', N'40', N'115', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'635', N'DesertWolfA', N'Wilder W?stenwolf', N'34', N'1187', N'40', N'115', N'0', N'1300', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'636', N'CemWolfA', N'Grabwolf', N'34', N'1187', N'40', N'115', N'0', N'1300', N'7', N'4', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'637', N'ZombieB', N'Zombie', N'35', N'1294', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'638', N'OldFoxA', N'Grabfuchs', N'35', N'1294', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'639', N'DesertWolfB', N'Wilder W?stenwolf', N'35', N'1294', N'40', N'127', N'0', N'1400', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'640', N'DesertWolfC', N'Wilder W?stenwolf', N'35', N'1294', N'40', N'115', N'0', N'1400', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'641', N'OldFoxB', N'Grabfuchs', N'36', N'1410', N'30', N'110', N'0', N'1000', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'642', N'CemWolfB', N'Grabwolf', N'36', N'1410', N'40', N'127', N'0', N'1200', N'7', N'4', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'643', N'DesertWolfD', N'Wilder W?stenwolf', N'36', N'1410', N'40', N'115', N'0', N'1500', N'7', N'2', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'644', N'DesertWolfE', N'Wilder W?stenwolf', N'36', N'1410', N'40', N'115', N'0', N'1500', N'7', N'2', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'645', N'GhostA', N'Geist', N'36', N'1410', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'646', N'BabyWereBearA', N'BabyWerb?r', N'37', N'1537', N'30', N'105', N'0', N'900', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'647', N'HobA', N'Hob', N'37', N'1537', N'35', N'115', N'0', N'1200', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'648', N'GhostB', N'Geist', N'38', N'1675', N'40', N'115', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'649', N'FoxA', N'Fuchs', N'38', N'1675', N'60', N'110', N'0', N'1300', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'650', N'BabyWereBearB', N'BabyWerb?r', N'38', N'1675', N'30', N'105', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'651', N'FoxB', N'Fuchs', N'39', N'1826', N'60', N'110', N'0', N'1300', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'652', N'HobB', N'Hob', N'39', N'1826', N'35', N'127', N'0', N'1300', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'653', N'GoblinA', N'Goblin', N'39', N'1826', N'35', N'110', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'654', N'BoneImpA', N'Knochenimp', N'40', N'1982', N'30', N'110', N'0', N'1700', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'655', N'GoblinB', N'Goblin', N'40', N'1982', N'35', N'110', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'656', N'EarthSpiderA', N'Erdspinne', N'41', N'2041', N'40', N'120', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'657', N'GoblinC', N'Goblin', N'42', N'2103', N'35', N'110', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'658', N'EarthSpiderB', N'Erdspinne', N'42', N'2103', N'40', N'138', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'659', N'WereBearA', N'Werb?r', N'43', N'2166', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'660', N'GoblinSwordmanA', N'GoblinSchwertk?mpfer', N'44', N'2231', N'40', N'127', N'0', N'1000', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'661', N'GoblinSwordmanB', N'GoblinSchwertk?mpfer', N'45', N'2298', N'40', N'127', N'0', N'1000', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'662', N'WereBearB', N'Werb?r', N'45', N'2298', N'50', N'110', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'663', N'SandMushroomA', N'Sandpilz', N'45', N'2298', N'45', N'115', N'0', N'1500', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'664', N'GoblinSwordmanC', N'GoblinSchwertk?mpfer', N'46', N'2367', N'40', N'127', N'0', N'1000', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'665', N'ZombieC', N'Zombie', N'46', N'2367', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'666', N'ZombieD', N'Zombie', N'47', N'2438', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'667', N'SandMushroomB', N'Sandpilz', N'47', N'2438', N'45', N'127', N'0', N'1700', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'668', N'Q_SandRatmanA', N'Sandratte', N'47', N'2438', N'45', N'127', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'669', N'GoblinCaptainA', N'GoblinKapit?n', N'48', N'2511', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'670', N'ZombieE', N'Zombie', N'48', N'2511', N'30', N'130', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'671', N'HarkanA', N'Harkan', N'48', N'2511', N'40', N'110', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'672', N'GoblinCaptainB', N'GoblinKapit?n', N'49', N'2586', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'673', N'Q_SandRatmanB', N'Sandratte', N'49', N'2586', N'45', N'127', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'674', N'HarkanB', N'Harkan', N'49', N'2586', N'40', N'110', N'0', N'900', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'675', N'WeakenedOgreA', N'Geschw?chter Oger', N'50', N'2694', N'30', N'110', N'0', N'1200', N'7', N'1', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'676', N'HarkanC', N'Harkan', N'51', N'2762', N'40', N'110', N'0', N'1300', N'7', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'677', N'WeakenedOgreB', N'Geschw?chter Oger', N'52', N'2831', N'30', N'110', N'0', N'1200', N'7', N'1', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'678', N'KingCallA', N'K?nigColl', N'53', N'2901', N'50', N'110', N'0', N'1000', N'7', N'7', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'679', N'KingCallB', N'K?nigColl', N'54', N'2974', N'50', N'110', N'0', N'1000', N'7', N'7', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'680', N'VampireBatA', N'Vampirfledermaus', N'55', N'3048', N'50', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'681', N'VampireBatB', N'Vampirfledermaus', N'56', N'3124', N'50', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'682', N'PrisonerA', N'Gefangener', N'56', N'3124', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'683', N'PrisonerB', N'Gefangener', N'57', N'3203', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'684', N'TorturerA', N'Folterer', N'57', N'3203', N'30', N'110', N'0', N'1000', N'7', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'685', N'DeadTreeSoulA', N'Tote Baumseele', N'57', N'3203', N'20', N'95', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'686', N'TorturerB', N'Folterer', N'58', N'3283', N'30', N'110', N'0', N'1000', N'7', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'687', N'DeadTreeSoulB', N'Tote Baumseele', N'58', N'3283', N'20', N'95', N'0', N'1700', N'7', N'6', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'688', N'SeniorTorturerA', N'Oberfolterer', N'58', N'3283', N'40', N'105', N'0', N'1300', N'7', N'7', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'689', N'SeniorTorturerB', N'Oberfolterer', N'59', N'3365', N'40', N'105', N'0', N'1300', N'7', N'7', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'690', N'KaraSoliderA', N'Karasiansoldat', N'59', N'3365', N'40', N'110', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'691', N'DisHarkanA', N'Desharkan', N'59', N'3365', N'40', N'105', N'0', N'1600', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'692', N'KaraSoliderB', N'Karasiansoldat', N'60', N'3469', N'40', N'110', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'693', N'DisHarkanB', N'Desharkan', N'60', N'3469', N'40', N'105', N'0', N'1700', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'694', N'KaraTemplerA', N'Karasiantempler', N'60', N'2775', N'40', N'110', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'695', N'KaraTemplerB', N'Karasiantempler', N'61', N'2842', N'40', N'110', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'696', N'PixyA', N'Pixy', N'61', N'3552', N'30', N'127', N'0', N'800', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'697', N'ArchonJuinorA', N'Junger Archon', N'61', N'3552', N'40', N'130', N'0', N'1200', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'698', N'KingSpiderA', N'K?nigsspinne', N'61', N'3552', N'30', N'110', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'699', N'PixyB', N'Pixy', N'62', N'3637', N'30', N'127', N'0', N'800', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'700', N'ArchonJuinorB', N'Junger Archon', N'62', N'3637', N'40', N'130', N'0', N'1250', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'701', N'KingSpiderB', N'K?nigsspinne', N'62', N'3637', N'30', N'110', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'702', N'PinkyA', N'Pinky', N'62', N'2910', N'30', N'110', N'0', N'800', N'14', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'703', N'RatmanKnightA', N'Rattenmenschritter', N'62', N'3637', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'704', N'OrcA', N'Ork', N'62', N'3637', N'40', N'127', N'0', N'2000', N'1', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'705', N'MiniJewelKeeperA', N'Kleiner Juwelenw?chter', N'62', N'3637', N'40', N'130', N'0', N'1100', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'706', N'PinkyB', N'Pinky', N'63', N'2979', N'30', N'110', N'0', N'800', N'14', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'707', N'RatmanKnightB', N'Rattenmenschritter', N'63', N'3724', N'50', N'110', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'708', N'OrcB', N'Ork', N'63', N'3724', N'40', N'127', N'0', N'2020', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'709', N'MiniJewelKeeperB', N'Kleiner Juwelenw?chter', N'63', N'3724', N'40', N'130', N'0', N'1200', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'710', N'KingMushRoomA', N'K?nigspilz', N'63', N'3724', N'30', N'115', N'0', N'1800', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'711', N'LittleRunningBasA', N'Kleines verfluchtes Schwert', N'63', N'2979', N'30', N'90', N'0', N'1100', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'712', N'KingMushRoomB', N'K?nigspilz', N'64', N'3814', N'30', N'127', N'0', N'1900', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'713', N'LittleRunningBasB', N'Kleines verfluchtes Schwert', N'64', N'3051', N'30', N'90', N'0', N'1200', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'714', N'OrcHunterA', N'Orkj?ger', N'64', N'3814', N'40', N'100', N'0', N'2040', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'715', N'OrcHunterB', N'Orkj?ger', N'65', N'3905', N'40', N'100', N'0', N'2060', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'716', N'NoxA', N'Nox', N'65', N'3905', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'717', N'LipsA', N'Maulpflanze', N'65', N'3124', N'40', N'110', N'0', N'1550', N'20', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'718', N'IncubusA', N'Inkubus', N'65', N'3124', N'30', N'127', N'0', N'1300', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'719', N'NoxB', N'Nox', N'66', N'3999', N'40', N'127', N'0', N'1200', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'720', N'LipsB', N'Maulpflanze', N'66', N'3199', N'40', N'110', N'0', N'1600', N'20', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'721', N'IncubusB', N'Inkubus', N'66', N'3199', N'30', N'127', N'0', N'1400', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'722', N'ArchonA', N'Archon', N'66', N'3999', N'30', N'127', N'0', N'1350', N'8', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'723', N'GreenkyA', N'Gr?nling', N'66', N'3999', N'30', N'127', N'0', N'1400', N'7', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'724', N'ArchonB', N'Archon', N'67', N'4095', N'30', N'127', N'0', N'1400', N'8', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'725', N'GreenkyB', N'Gr?nling', N'67', N'4095', N'30', N'127', N'0', N'1500', N'7', N'7', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'726', N'StonieA', N'Findling', N'67', N'4095', N'30', N'127', N'0', N'1100', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'727', N'NaiadSoulA', N'Naiadseele', N'67', N'3276', N'40', N'127', N'0', N'1000', N'14', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'728', N'StonieB', N'Findling', N'68', N'4193', N'30', N'127', N'0', N'1200', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'729', N'NaiadSoulB', N'Naiadseele', N'68', N'3354', N'40', N'127', N'0', N'1000', N'14', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'730', N'CloverTrumpyA', N'Kreuztrumpf', N'68', N'4193', N'40', N'127', N'0', N'1350', N'1', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'731', N'CloverTrumpyB', N'Kreuztrumpf', N'69', N'4294', N'40', N'127', N'0', N'1400', N'1', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'732', N'JewelKeeperA', N'Juwelenw?chter', N'69', N'4294', N'40', N'127', N'0', N'1500', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'733', N'LizardManA', N'Echsenmann', N'69', N'4294', N'40', N'127', N'0', N'1150', N'7', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'734', N'SparkDogA', N'Funkenhund', N'69', N'3435', N'30', N'138', N'0', N'1600', N'20', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'735', N'JewelKeeperB', N'Juwelenw?chter', N'70', N'4400', N'40', N'127', N'0', N'1600', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'736', N'LizardManB', N'Echsenmann', N'70', N'4400', N'40', N'127', N'0', N'1200', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'737', N'SparkDogB', N'Funkenhund', N'70', N'3520', N'30', N'138', N'0', N'1700', N'20', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'738', N'ElfKnightSoulA', N'Beseelter Elfenritter', N'70', N'4400', N'40', N'127', N'0', N'1000', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'739', N'ElvenTreeA', N'Elfenbaum', N'70', N'4400', N'40', N'110', N'0', N'1000', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'740', N'HeartTrumpyA', N'Herztrumpf', N'70', N'4400', N'40', N'105', N'0', N'1000', N'11', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'741', N'ElfKnightSoulB', N'Beseelter Elfenritter', N'71', N'4488', N'40', N'127', N'0', N'1000', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'742', N'ElvenTreeB', N'Elfenbaum', N'71', N'4488', N'40', N'110', N'0', N'1000', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'743', N'HeartTrumpyB', N'Herztrumpf', N'71', N'4488', N'40', N'105', N'0', N'1000', N'11', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'744', N'RedStonieA', N'Roter Findling', N'71', N'4488', N'30', N'105', N'0', N'1400', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'745', N'RedStonieB', N'Roter Findling', N'72', N'4578', N'30', N'105', N'0', N'1500', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'746', N'NavarA', N'Navar', N'72', N'4578', N'40', N'110', N'0', N'1500', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'747', N'GiantSparkDogA', N'Riesiger Funkenhund', N'72', N'3662', N'30', N'100', N'0', N'1900', N'20', N'1', N'0', N'3', N'0', N'650');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'748', N'BlueCloverTrumpyA', N'Blauer Kreuztrumpf', N'72', N'4578', N'40', N'130', N'0', N'1550', N'1', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'749', N'NavarB', N'Navar', N'73', N'4670', N'40', N'110', N'0', N'1500', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'750', N'GiantSparkDogB', N'Riesiger Funkenhund', N'73', N'3736', N'30', N'100', N'0', N'2000', N'20', N'1', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'751', N'BlueCloverTrumpyB', N'Blauer Kreuztrumpf', N'73', N'4670', N'40', N'130', N'0', N'1600', N'1', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'752', N'GiantPixyA', N'Riesenpixy', N'73', N'4670', N'30', N'95', N'0', N'1500', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'753', N'GoldJewelKeeperA', N'Goldener Juwelenw?chter', N'73', N'4670', N'30', N'127', N'0', N'1800', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'754', N'GiantPixyB', N'Riesenpixy', N'74', N'4763', N'30', N'95', N'0', N'1500', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'755', N'GoldJewelKeeperB', N'Goldener Juwelenw?chter', N'74', N'4763', N'30', N'127', N'0', N'1900', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'756', N'OrcCaptainA', N'Orkkapit?n', N'74', N'4763', N'40', N'138', N'0', N'1420', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'757', N'SpadeGuardTrumpyA', N'Piktrumpfwache', N'74', N'4763', N'30', N'138', N'0', N'1000', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'758', N'OrcCaptainB', N'Orkkapit?n', N'75', N'4858', N'40', N'138', N'0', N'1440', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'759', N'SpadeGuardTrumpyB', N'Piktrumpfwache', N'75', N'4858', N'30', N'138', N'0', N'1000', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'760', N'NaiadDemonA', N'Naiadd?mon', N'75', N'3886', N'40', N'130', N'0', N'1350', N'14', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'761', N'NavarHenterA', N'Navarj?ger', N'75', N'4858', N'40', N'130', N'0', N'1300', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'762', N'GreedyLizardManA', N'Gieriger Echsenmann', N'75', N'4858', N'40', N'138', N'0', N'1300', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'763', N'NaiadDemonB', N'Naiadd?mon', N'76', N'3965', N'40', N'130', N'0', N'1400', N'14', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'764', N'NavarHenterB', N'Navarj?ger', N'76', N'4956', N'40', N'130', N'0', N'1300', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'765', N'GreedyLizardManB', N'Gieriger Echsenmann', N'76', N'4956', N'40', N'138', N'0', N'1400', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'766', N'ShylphA', N'Sylphe', N'76', N'4956', N'30', N'127', N'0', N'1000', N'11', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'767', N'NoxHunterA', N'Noxj?ger', N'76', N'4956', N'30', N'127', N'0', N'1400', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'768', N'ShylphB', N'Sylphe', N'77', N'5055', N'30', N'127', N'0', N'1000', N'11', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'769', N'NoxHunterB', N'Noxj?ger', N'77', N'5055', N'30', N'127', N'0', N'1500', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'770', N'OldArchonA', N'Alter Archon', N'77', N'5055', N'30', N'110', N'0', N'1550', N'8', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'771', N'GoldenBatA', N'Goldfledermaus', N'77', N'5055', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'772', N'RunningBasA', N'Verfluchtes Schwert', N'77', N'4044', N'30', N'127', N'0', N'1700', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'773', N'DiaTrumpyA', N'Diamanttrumpf', N'77', N'4044', N'40', N'110', N'0', N'1000', N'2', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'774', N'OldArchonB', N'Alter Archon', N'78', N'5156', N'30', N'110', N'0', N'1600', N'8', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'775', N'GoldenBatB', N'Goldfledermaus', N'78', N'5156', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'776', N'RunningBasB', N'Verfluchtes Schwert', N'78', N'4125', N'30', N'127', N'0', N'1800', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'777', N'DiaTrumpyB', N'Diamanttrumpf', N'78', N'4125', N'40', N'110', N'0', N'1000', N'2', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'778', N'ElfKnightDemonA', N'D?monischer Elfenritter', N'78', N'5156', N'40', N'130', N'0', N'1300', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'779', N'SpadeTrumpyA', N'Piktrumpf', N'78', N'5156', N'40', N'138', N'0', N'1000', N'12', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'780', N'ElfKnightDemonB', N'D?monischer Elfenritter', N'79', N'5259', N'40', N'130', N'0', N'1400', N'1', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'781', N'SpadeTrumpyB', N'Piktrumpf', N'79', N'5259', N'40', N'138', N'0', N'1000', N'12', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'782', N'AncientStonieA', N'Alter Findling', N'79', N'5259', N'30', N'127', N'0', N'1300', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'783', N'BlackIncubusA', N'Schwarzer Inkubus', N'79', N'4207', N'30', N'127', N'0', N'1100', N'3', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'784', N'AncientStonieB', N'Alter Findling', N'80', N'5394', N'30', N'127', N'0', N'1400', N'5', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'785', N'BlackIncubusB', N'Schwarzer Inkubus', N'80', N'4315', N'30', N'127', N'0', N'1200', N'3', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'786', N'LizardManKnightA', N'Echsenritter', N'80', N'5394', N'40', N'127', N'0', N'1300', N'7', N'4', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'787', N'JokerTrumpyA', N'Jokertrumpf', N'80', N'4315', N'40', N'127', N'0', N'1000', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'788', N'LizardManKnightB', N'Echsenritter', N'81', N'5491', N'40', N'127', N'0', N'1400', N'7', N'4', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'789', N'JokerTrumpyB', N'Jokertrumpf', N'81', N'4393', N'40', N'127', N'0', N'1000', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'790', N'FireNixA', N'Feuernix', N'81', N'5491', N'40', N'138', N'0', N'1600', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'791', N'FireNixB', N'Feuernix', N'82', N'5590', N'40', N'138', N'0', N'1700', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'792', N'FireSpiritA', N'Feuergeist', N'82', N'5590', N'40', N'138', N'0', N'1500', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'793', N'FlameHoneyingA', N'Flammenbienchen', N'82', N'5590', N'40', N'138', N'0', N'2600', N'8', N'9', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'794', N'FireSpiritB', N'Feuergeist', N'83', N'5691', N'40', N'138', N'0', N'1700', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'795', N'FlameHoneyingB', N'Flammenbienchen', N'83', N'5691', N'40', N'138', N'0', N'2700', N'8', N'9', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'796', N'CoreGuardianUA', N'Kernw?chter', N'83', N'5691', N'40', N'138', N'0', N'1400', N'6', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'797', N'CoreGuardianUB', N'Kernw?chter', N'84', N'5793', N'40', N'138', N'0', N'1500', N'6', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'798', N'MineMoleA', N'Minenmaulwurf', N'84', N'5793', N'40', N'138', N'0', N'1600', N'7', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'799', N'MineMoleB', N'Minenmaulwurf', N'85', N'5897', N'40', N'138', N'0', N'1700', N'7', N'9', N'0', N'3', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'800', N'RubyGuardianUA', N'Rubinw?chter', N'85', N'5897', N'40', N'138', N'0', N'1300', N'8', N'4', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'801', N'RubyGuardianUB', N'Rubinw?chter', N'86', N'6004', N'40', N'138', N'0', N'1400', N'8', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'802', N'FlameSpiritA', N'Flammengeist', N'86', N'4803', N'40', N'138', N'0', N'1100', N'7', N'11', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'803', N'FlameSpiritB', N'Flammengeist', N'87', N'4890', N'40', N'138', N'0', N'1200', N'7', N'11', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'804', N'MinerA', N'Bergarbeiter', N'87', N'4890', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'805', N'MinerB', N'Bergarbeiter', N'88', N'4978', N'40', N'138', N'0', N'1700', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'806', N'UndeadMinerA', N'Bergarbeiterskelett', N'88', N'6222', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'807', N'LavaViviA', N'Lavavivi', N'89', N'5067', N'40', N'138', N'0', N'2400', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'808', N'UndeadMinerB', N'Bergarbeiterskelett', N'89', N'6334', N'40', N'138', N'0', N'1700', N'7', N'1', N'0', N'5', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'809', N'JewelTreeA', N'Juwelenbaum', N'89', N'5067', N'40', N'138', N'0', N'1500', N'7', N'6', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'810', N'LavaViviB', N'Lavavivi', N'90', N'5177', N'40', N'138', N'0', N'2500', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'811', N'JewelTreeB', N'Juwelenbaum', N'90', N'5177', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'812', N'MagmaTonA', N'Magmaton', N'90', N'6471', N'40', N'138', N'0', N'1100', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'813', N'FlameMinemoleA', N'Flammenmaulwurf', N'90', N'6471', N'40', N'138', N'0', N'1900', N'7', N'9', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'814', N'MagmaTonB', N'Magmaton', N'91', N'6601', N'40', N'138', N'0', N'1200', N'8', N'11', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'815', N'FlameMinemoleB', N'Flammenmaulwurf', N'91', N'6601', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'816', N'RedNixA', N'Roter Nix', N'91', N'6601', N'40', N'138', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'817', N'CrystalGuardianUA', N'Kristallw?chter', N'91', N'6601', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'818', N'RedNixB', N'Roter Nix', N'92', N'6733', N'40', N'138', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'819', N'CrystalGuardianUB', N'Kristallw?chter', N'92', N'6733', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'820', N'LavaMagmatonA', N'Lavamagmaton', N'92', N'6733', N'40', N'138', N'0', N'1300', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'821', N'LavaMagmatonB', N'Lavamagmaton', N'93', N'6867', N'40', N'138', N'0', N'1400', N'8', N'6', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'822', N'GagoyleA', N'Lavagargoyle', N'93', N'6867', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'823', N'BellowKnightA', N'Verfluchter Ritter', N'93', N'6867', N'40', N'138', N'0', N'1250', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'824', N'GagoyleB', N'Lavagargoyle', N'94', N'7005', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'825', N'BellowKnightB', N'Verfluchter Ritter', N'94', N'7005', N'40', N'138', N'0', N'1300', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'826', N'CaimanJuniorA', N'Juniorkaiman', N'94', N'5604', N'40', N'138', N'0', N'1200', N'7', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'827', N'BellowKnightC', N'Verfluchter Ritter', N'95', N'7145', N'40', N'138', N'0', N'1350', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'828', N'BellowKnightSA', N'Verfluchter Silberritter', N'94', N'7005', N'40', N'138', N'0', N'1300', N'1', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'829', N'CaimanJuniorB', N'Juniorkaiman', N'95', N'5716', N'40', N'138', N'0', N'1300', N'7', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'830', N'CaimanA', N'Kaiman', N'95', N'7145', N'40', N'138', N'0', N'1100', N'7', N'2', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'831', N'RhinoceA', N'Rhino', N'95', N'7145', N'40', N'138', N'0', N'900', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'832', N'BellowKnightSB', N'Verfluchter Silberritter', N'95', N'7145', N'40', N'138', N'0', N'1350', N'1', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'833', N'CaimanB', N'Kaiman', N'96', N'7288', N'40', N'138', N'0', N'1200', N'7', N'2', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'834', N'RhinoceB', N'Rhino', N'96', N'7288', N'40', N'138', N'0', N'1000', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'835', N'MudManA', N'Matschmensch', N'96', N'7288', N'40', N'138', N'0', N'1800', N'8', N'9', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'836', N'MandrakeA', N'Alraune', N'96', N'7288', N'40', N'138', N'0', N'1100', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'837', N'BellowKnightSC', N'Verfluchter Silberritter', N'96', N'7288', N'40', N'138', N'0', N'1400', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'838', N'MudManB', N'Matschmensch', N'97', N'7434', N'40', N'138', N'0', N'1900', N'8', N'9', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'839', N'MandrakeB', N'Alraune', N'97', N'7434', N'40', N'138', N'0', N'1200', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'840', N'MantrapPlantA', N'Fallenpflanze', N'97', N'7434', N'40', N'138', N'0', N'1300', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'841', N'BellowKnightSD', N'Verfluchter Silberritter', N'97', N'7434', N'40', N'138', N'0', N'1450', N'1', N'4', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'842', N'MantrapPlantB', N'Fallenpflanze', N'98', N'7582', N'40', N'138', N'0', N'1400', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'843', N'WereBoarA', N'Werkeiler', N'98', N'7582', N'40', N'138', N'0', N'1400', N'5', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'844', N'WereBoarB', N'Werkeiler', N'99', N'7734', N'40', N'138', N'0', N'1500', N'5', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'845', N'LivingTotemA', N'Pink Pig', N'99', N'6187', N'40', N'138', N'0', N'1600', N'20', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'846', N'LivingTotemB', N'Pink Pig', N'100', N'6373', N'40', N'138', N'0', N'1700', N'20', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'847', N'SlugA', N'Schnecke', N'100', N'7966', N'40', N'138', N'0', N'1100', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'848', N'SlugB', N'Schnecke', N'101', N'8205', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'849', N'ShadowA', N'Schatten', N'101', N'8205', N'40', N'138', N'0', N'1400', N'1', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'850', N'RhinoceLordA', N'Rhinof?rst', N'101', N'8205', N'40', N'138', N'0', N'1000', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'851', N'MadSlugA', N'Verr?ckte Schnecke', N'101', N'8205', N'40', N'138', N'0', N'1100', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'852', N'ShadowB', N'Schatten', N'102', N'8451', N'40', N'138', N'0', N'1500', N'1', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'853', N'RhinoceLordB', N'Rhinof?rst', N'102', N'8451', N'40', N'138', N'0', N'1100', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'854', N'MadSlugB', N'Verr?ckte Schnecke', N'102', N'8451', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'855', N'RedShadowA', N'Roter Schatten', N'102', N'8451', N'40', N'138', N'0', N'1400', N'1', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'856', N'RaplanA', N'Laplan', N'102', N'8451', N'40', N'138', N'0', N'1500', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'857', N'RedShadowB', N'Roter Schatten', N'103', N'8705', N'40', N'138', N'0', N'1500', N'1', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'858', N'RaplanB', N'Laplan', N'103', N'8705', N'40', N'138', N'0', N'1600', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'859', N'BigMudManA', N'Gro?er Matschmensch', N'103', N'8705', N'40', N'138', N'0', N'2100', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'860', N'BigMudManB', N'Gro?er Matschmensch', N'104', N'8966', N'40', N'138', N'0', N'2200', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'861', N'LivingStatueA', N'Lebende Statue', N'104', N'8966', N'40', N'138', N'0', N'1800', N'2', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'862', N'PhouchA', N'Phouch', N'104', N'8966', N'40', N'138', N'0', N'1400', N'8', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'863', N'LivingStatueB', N'Lebende Statue', N'105', N'9235', N'40', N'138', N'0', N'1900', N'2', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'864', N'PhouchB', N'Phouch', N'105', N'9235', N'40', N'138', N'0', N'1500', N'8', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'865', N'LivingStoneA', N'Lebender Stein', N'105', N'7388', N'40', N'138', N'0', N'1900', N'7', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'866', N'WeaselA', N'Wiesel', N'105', N'9235', N'40', N'138', N'0', N'1600', N'8', N'9', N'0', N'3', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'867', N'LivingStoneB', N'Lebender Stein', N'106', N'7610', N'40', N'138', N'0', N'2000', N'7', N'6', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'868', N'WeaselB', N'Wiesel', N'106', N'9512', N'40', N'138', N'0', N'1700', N'8', N'9', N'0', N'3', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'869', N'RhinoceHunterA', N'Rhinoj?ger', N'106', N'7610', N'40', N'138', N'0', N'1100', N'7', N'6', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'870', N'RhinoceHunterB', N'Rhinoj?ger', N'107', N'7838', N'40', N'138', N'0', N'1200', N'7', N'6', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'871', N'BlackBearA', N'Schwarzb?r', N'107', N'9797', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'872', N'BlackBearB', N'Schwarzb?r', N'108', N'10091', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'873', N'RedBearA', N'Rotb?r', N'108', N'10091', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'874', N'RedBearB', N'Rotb?r', N'109', N'10394', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'875', N'FireShellaA', N'Feuershella', N'109', N'10394', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'876', N'FireShellaB', N'Feuershella', N'110', N'10706', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'877', N'FireTaitanA', N'Feuertitan', N'110', N'8565', N'40', N'138', N'0', N'1600', N'14', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'878', N'WaterAlcaA', N'WassergeistAlki', N'110', N'10706', N'40', N'138', N'0', N'1300', N'14', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'879', N'FireTaitanB', N'Feuertitan', N'111', N'8822', N'40', N'138', N'0', N'1700', N'14', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'880', N'WaterAlcaB', N'WassergeistAlki', N'111', N'11027', N'40', N'138', N'0', N'1400', N'14', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'881', N'WaterBaridonA', N'Wasserbaridon', N'111', N'11027', N'40', N'138', N'0', N'1300', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'882', N'WaterBaridonB', N'Wasserbaridon', N'112', N'11358', N'40', N'138', N'0', N'1400', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'883', N'MagriteImpA', N'MagriteImp', N'112', N'11358', N'40', N'138', N'0', N'2100', N'7', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'884', N'EarthCalerbenA', N'Erdkalerben', N'112', N'11358', N'40', N'138', N'0', N'1300', N'7', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'885', N'MagriteImpB', N'MagriteImp', N'113', N'11698', N'40', N'138', N'0', N'2200', N'7', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'886', N'EarthCalerbenB', N'Erdkalerben', N'113', N'11698', N'40', N'138', N'0', N'1400', N'7', N'6', N'0', N'2', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'887', N'MagriteHoneyingA', N'MagriteBienchen', N'113', N'11698', N'40', N'138', N'0', N'2200', N'8', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'888', N'EarthNerpaA', N'Erdnerpa', N'113', N'9358', N'40', N'138', N'0', N'1600', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'889', N'MagriteHoneyingB', N'MagriteBienchen', N'114', N'12049', N'40', N'138', N'0', N'2300', N'8', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'890', N'EarthNerpaB', N'Erdnerpa', N'114', N'9639', N'40', N'138', N'0', N'1700', N'7', N'9', N'0', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'891', N'SeidhunterA', N'Sektenanh?nger', N'114', N'9639', N'40', N'138', N'0', N'1600', N'2', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'892', N'WindNepilimA', N'Windnepilim', N'114', N'9639', N'40', N'138', N'0', N'2000', N'14', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'893', N'SeidhunterB', N'Sektenanh?nger', N'115', N'9929', N'40', N'138', N'0', N'1700', N'2', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'894', N'WindNepilimB', N'Windnepilim', N'115', N'9929', N'40', N'138', N'0', N'2000', N'14', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'895', N'SeidstarA', N'Sektenj?ger', N'115', N'12411', N'40', N'138', N'0', N'1300', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'896', N'SeidwarriorA', N'Sektenkrieger', N'115', N'12411', N'40', N'138', N'0', N'1400', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'897', N'WindLenceA', N'Windlence', N'115', N'12411', N'40', N'138', N'0', N'2200', N'7', N'0', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'898', N'SeidstarB', N'Sektenj?ger', N'116', N'12783', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'899', N'SeidwarriorB', N'Sektenkrieger', N'116', N'12783', N'40', N'138', N'0', N'1500', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'900', N'WindLenceB', N'Windlence', N'116', N'12783', N'40', N'138', N'0', N'2400', N'7', N'0', N'0', N'2', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'901', N'RugaA', N'Ruga', N'117', N'13167', N'40', N'138', N'0', N'1300', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'902', N'BabyPhouchA', N'BabyPhouch', N'117', N'13167', N'40', N'138', N'0', N'900', N'8', N'1', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'903', N'RugaB', N'Ruga', N'118', N'13562', N'40', N'138', N'0', N'1400', N'8', N'9', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'904', N'BabyPhouchB', N'BabyPhouch', N'118', N'13562', N'40', N'138', N'0', N'1000', N'8', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'905', N'VehimothA', N'Behemoth', N'118', N'13562', N'40', N'138', N'0', N'1600', N'8', N'9', N'0', N'4', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'906', N'PoisonMantrapPlantA', N'Giftige Fallenpflanze', N'106', N'19800', N'40', N'138', N'0', N'1600', N'7', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'907', N'VehimothB', N'Behemoth', N'119', N'33942', N'40', N'138', N'0', N'1700', N'8', N'9', N'0', N'4', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'908', N'PoisonMantrapPlantB', N'Giftige Fallenpflanze', N'107', N'20790', N'40', N'138', N'0', N'1700', N'7', N'9', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'909', N'RedCondorA', N'Roter Kondor', N'107', N'20790', N'40', N'138', N'0', N'1600', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'910', N'RaplansiaA', N'Laplansia', N'106', N'19800', N'40', N'138', N'0', N'1800', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'911', N'RedCondorB', N'Roter Kondor', N'108', N'21830', N'40', N'138', N'0', N'1700', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'912', N'RaplansiaB', N'Laplansia', N'107', N'20790', N'40', N'138', N'0', N'1900', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'913', N'GiantRedCondorA', N'Roter Riesenkondor', N'109', N'22921', N'40', N'138', N'0', N'1600', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'914', N'PoisonMandrakeA', N'Giftige Alraune', N'108', N'21830', N'40', N'138', N'0', N'1600', N'7', N'9', N'0', N'1', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'915', N'GiantRedCondorB', N'Roter Riesenkondor', N'110', N'24067', N'40', N'138', N'0', N'1700', N'8', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'916', N'PoisonMandrakeB', N'Giftige Alraune', N'109', N'22921', N'40', N'138', N'0', N'1700', N'7', N'9', N'0', N'1', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'917', N'KrugeA', N'Kruger', N'121', N'1', N'40', N'138', N'0', N'1300', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'918', N'KrugeB', N'Kruger', N'122', N'1', N'40', N'138', N'0', N'1400', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'919', N'ShellaA', N'Shella', N'122', N'1', N'40', N'138', N'0', N'1600', N'7', N'4', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'920', N'ShellaB', N'Shella', N'123', N'1', N'40', N'138', N'0', N'1600', N'7', N'4', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'921', N'BaridonA', N'Baridon', N'109', N'22921', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'922', N'BaridonB', N'Baridon', N'110', N'24067', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'923', N'NerpaA', N'Nerpa', N'124', N'1', N'40', N'138', N'0', N'2100', N'7', N'6', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'924', N'NerpaB', N'Nerpa', N'125', N'1', N'40', N'138', N'0', N'2200', N'7', N'6', N'0', N'2', N'0', N'650');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'925', N'AlkaA', N'Alki', N'107', N'20790', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'926', N'KaraWarriorA', N'KarawanenKrieger', N'125', N'1', N'40', N'138', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'927', N'AlkaB', N'Alki', N'108', N'21830', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'928', N'KaraWarriorB', N'KarawanenKrieger', N'126', N'1', N'40', N'138', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'929', N'KaraDarkTemplerA', N'Dunkler KarawanenTempler', N'126', N'1', N'40', N'138', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'930', N'PergyA', N'Pergy', N'126', N'1', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'931', N'KaraDarkTemplerB', N'Dunkler KarawanenTempler', N'127', N'1', N'40', N'138', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'932', N'PergyB', N'Pergy', N'127', N'1', N'40', N'138', N'0', N'1700', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'933', N'LeoPardA', N'Leopard', N'127', N'1', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'934', N'LeoPardB', N'Leopard', N'128', N'1', N'40', N'138', N'0', N'1500', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'935', N'ApeA', N'Ape', N'128', N'1', N'40', N'138', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'936', N'ApeB', N'Ape', N'129', N'1', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'937', N'BattleBeakA', N'Kampfschnauze', N'129', N'1', N'40', N'138', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'938', N'BattleBeakB', N'Kampfschnauze', N'130', N'1', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'939', N'BabyLeipoonA', N'BabyLeipoon', N'130', N'1', N'40', N'138', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'940', N'BabyLeipoonB', N'BabyLeipoon', N'113', N'25328', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'941', N'LeipoonA', N'Leipoon', N'113', N'25328', N'40', N'138', N'0', N'1300', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'942', N'LeipoonB', N'Leipoon', N'132', N'1', N'40', N'138', N'0', N'1400', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'943', N'OldLeipoonA', N'Alter Leipoon', N'132', N'1', N'40', N'138', N'0', N'1600', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'944', N'OldLeipoonB', N'Alter Leipoon', N'114', N'79785', N'40', N'138', N'0', N'1700', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1000', N'EventManagerA', N'Eventleiter A', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1023', N'Gate_ID_Exit', N'Teleporter', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1024', N'Gate_ID_Complete', N'Teleporter', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1026', N'EventManagerZ', N'Eventleiter Z', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1027', N'KQ_Slime', N'Powerschleim', N'7', N'339', N'30', N'115', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1028', N'KQ_MushRoom', N'Springender Pilz', N'7', N'339', N'30', N'110', N'0', N'1300', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1029', N'KQ_Imp', N'Wilder Imp', N'8', N'386', N'40', N'110', N'0', N'1300', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1030', N'KQ_Honeying', N'Tapferes Bienchen', N'9', N'423', N'30', N'110', N'0', N'950', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1031', N'KQ_HungryWolf', N'Hungriger Wolf', N'10', N'471', N'40', N'110', N'0', N'1000', N'7', N'9', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1032', N'KQ_FireSlime', N'Feuerschleim', N'11', N'518', N'30', N'115', N'0', N'1200', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1033', N'KQ_IronSlime', N'Eisenschleim', N'12', N'629', N'40', N'110', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1034', N'KQ_Ratman', N'Rattenmensch', N'13', N'748', N'30', N'115', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1035', N'KQ_Boar', N'Kampfeber', N'14', N'880', N'50', N'115', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1036', N'KQ_SilverSlime', N'Silberschleim', N'14', N'960', N'50', N'110', N'0', N'1400', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1037', N'KQ_Boogy', N'MaraPiratenSchildie', N'16', N'1157', N'30', N'100', N'0', N'1100', N'8', N'9', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1038', N'KQ_GoldSlime', N'Goldschleim', N'15', N'1097', N'30', N'115', N'0', N'1700', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1039', N'KQ_MaraCrew', N'MaraPiratenGruppe', N'17', N'1316', N'40', N'115', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1040', N'KQ_PrinceSlime', N'Prinz von Schleim', N'16', N'1367', N'30', N'115', N'0', N'2500', N'8', N'9', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1041', N'KQ_MaraElite', N'MaraMarinepirat', N'18', N'1488', N'40', N'115', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1042', N'KQ_QueenSlime', N'Schleimk?nigin', N'17', N'1675', N'40', N'110', N'0', N'2700', N'8', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1043', N'KQ_MaraSailor', N'MaraElitepirat', N'19', N'1668', N'40', N'115', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1044', N'KQ_Mara', N'Charismatische Mara', N'26', N'17355', N'40', N'120', N'0', N'1000', N'1', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1045', N'KQ_KingSlime', N'Schleimk?nig', N'17', N'9571', N'50', N'115', N'0', N'3200', N'8', N'9', N'1', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1046', N'KQ_GiantMushRoom', N'Riesenpilz', N'33', N'3829', N'40', N'115', N'0', N'1350', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1047', N'KQ_MarloneArcher', N'MarloneBogensch?tze', N'21', N'1590', N'40', N'115', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1048', N'KQ_TrueMara', N'Charismatische Mara', N'26', N'17355', N'40', N'115', N'0', N'1000', N'12', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1049', N'KQ_StoneImp', N'Dunkler Imp', N'34', N'3971', N'30', N'120', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1050', N'KQ_MarloneMegaton', N'MarloneMegaton', N'24', N'2718', N'40', N'115', N'0', N'1000', N'6', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1051', N'KQ_DesertWolf', N'Faschingswolf', N'35', N'4141', N'40', N'115', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1052', N'KQ_MarloneFighter', N'MarloneK?mpfer', N'25', N'2887', N'40', N'115', N'0', N'1200', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1053', N'KQ_Marlone', N'Legend?rer Marlone', N'26', N'17355', N'40', N'115', N'0', N'1000', N'6', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1054', N'KQ_Skeleton', N'Tapferes Skelett', N'36', N'4308', N'40', N'115', N'0', N'1300', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1055', N'KQ_WildKebing', N'H?hlenkebing', N'37', N'4459', N'40', N'115', N'0', N'1300', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1056', N'KQ_SkelArcher', N'Skelettbogensch?tze', N'38', N'3519', N'40', N'127', N'0', N'1500', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1057', N'KQ_TrueMarlone', N'Legend?rer Marlone', N'26', N'17355', N'40', N'115', N'0', N'1000', N'6', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1058', N'KQ_RapidBoar', N'Schneller Eber', N'39', N'4805', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1059', N'KQ_SkelWarrior', N'Starker Skelettkrieger', N'40', N'4956', N'40', N'115', N'0', N'1500', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1060', N'KQ_SkelKnight', N'Dunkler Skelettritter', N'41', N'5135', N'40', N'115', N'0', N'1500', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1061', N'KQ_SmallProck', N'Kleiner Prock', N'49', N'4992', N'40', N'115', N'0', N'1000', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1062', N'KQ_Bat', N'Schweinsfledermaus', N'50', N'6737', N'40', N'115', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1063', N'KQ_KissLips', N'Wilde Maulpflanze', N'51', N'5261', N'40', N'115', N'0', N'1200', N'20', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1064', N'KQ_Spider', N'Hungrige Spinne', N'53', N'7296', N'40', N'115', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1065', N'KQ_Zombie', N'Wahnsinniger Zombie', N'43', N'5472', N'40', N'127', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1066', N'KQ_FireViVi', N'W?tende Feuervivi', N'44', N'3608', N'40', N'127', N'0', N'1400', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1067', N'KQ_SandRatman', N'Gro?e Sandratte', N'55', N'7670', N'40', N'115', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1068', N'KQ_BossRobo', N'MillenniumRobo', N'46', N'77972', N'40', N'127', N'0', N'1600', N'1', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1069', N'KQ_GorDon', N'Seelenloser Gordon', N'0', N'0', N'40', N'115', N'0', N'1000', N'7', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1070', N'KQ_GorDonMaster', N'Gordonmeister', N'0', N'0', N'40', N'115', N'0', N'2000', N'7', N'0', N'5', N'6', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1071', N'KQ_RookieSkeleton', N'Skelettrekrut', N'7', N'401', N'40', N'120', N'0', N'1300', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1072', N'KQ_Core01', N'Goldh?gelErz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1073', N'KQ_Core02', N'Goldh?gelErz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1074', N'KQ_Core03', N'Goldh?gelErz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1075', N'KQ_Core04', N'Goldh?gelErz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1076', N'KQ_Gate1', N'Tor', N'1', N'100', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1077', N'KQ_Gate2', N'Tor', N'1', N'100', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1078', N'KQ_Gate3', N'Tor', N'1', N'100', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1079', N'KQ_Gate4', N'Tor', N'1', N'100', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'7', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1080', N'KQ_G_TombRaider', N'Verr?ckter Grabr?uber', N'22', N'2167', N'40', N'127', N'0', N'1300', N'7', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1081', N'KQ_G_JewelKebing', N'Verr?ckter Kebing', N'23', N'2320', N'40', N'127', N'0', N'1300', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1082', N'KQ_G_Magebook', N'VerleumderMagiebuch', N'24', N'1529', N'40', N'127', N'0', N'1300', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1083', N'KQ_G_MarloneArcher', N'Goldsch?rferBogensch?tze', N'25', N'1962', N'40', N'127', N'0', N'1300', N'2', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1084', N'KQ_G_MarloneMegaton', N'Goldsch?rferMegaton', N'26', N'2755', N'40', N'127', N'0', N'1300', N'6', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1085', N'KQ_G_MarloneFighter', N'Goldsch?rferK?mpfer', N'27', N'2911', N'40', N'127', N'0', N'1300', N'1', N'4', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1086', N'KQ_G_Marlone', N'Goldsch?rferMarlone', N'29', N'22427', N'40', N'138', N'0', N'1300', N'1', N'1', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1087', N'KQ_G_Skeleton', N'Skelett', N'29', N'3204', N'40', N'115', N'0', N'1300', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1088', N'KQ_G_SkelArcher', N'Skelettbogensch?tze', N'30', N'2531', N'40', N'127', N'0', N'1300', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1089', N'KQ_G_Bat', N'Goldh?gelFledermaus', N'31', N'3503', N'40', N'127', N'0', N'1300', N'8', N'9', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1090', N'KQ_G_BossTombRaider', N'Anf?hrer der Goldsch?rfer', N'33', N'34463', N'40', N'138', N'0', N'3000', N'7', N'1', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1091', N'KQ_SlimeGate', N'Schlammtor', N'1', N'100', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'6', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1092', N'KQ_Gate5', N'Eistor', N'1', N'100', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1093', N'KQ_MadHob', N'Wahnsinnshob', N'56', N'7874', N'45', N'110', N'0', N'1500', N'7', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1094', N'KQ_HardboneImp', N'Hartknochenimp', N'59', N'8462', N'45', N'110', N'0', N'2000', N'7', N'9', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1095', N'KQ_Werebear', N'Werb?rmeister', N'58', N'57808', N'60', N'135', N'0', N'1500', N'7', N'1', N'1', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1096', N'KQ_HeavyOgre', N'Schwerer Oger', N'57', N'8051', N'50', N'127', N'0', N'1200', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1097', N'KQ_MiniDragon', N'Desi der Babydrache ', N'63', N'243230', N'50', N'127', N'0', N'1500', N'7', N'6', N'1', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1098', N'KQ_G_BossTombRaider2', N'Grabr?ubermeister', N'59', N'67698', N'60', N'140', N'0', N'2000', N'7', N'1', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1099', N'KQ_BossRobo2', N'MillenniumRobo', N'60', N'78056', N'60', N'140', N'0', N'1800', N'1', N'7', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1100', N'KQ_GobleKing', N'GoblinGro?k?nig', N'61', N'89051', N'60', N'140', N'0', N'2000', N'4', N'7', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1101', N'KQ_K_Ogre', N'KingKongOger', N'71', N'11227', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1102', N'KQ_K_KingCall', N'KingKongK?nigcoll', N'71', N'11227', N'40', N'127', N'0', N'1000', N'7', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1103', N'KQ_K_Harkan', N'KingKongHarkan', N'72', N'11485', N'50', N'138', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1104', N'KQ_K_VampireBat', N'KingKongVampirfledermaus', N'72', N'11485', N'40', N'127', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1105', N'KQ_K_Prisoner', N'KingKongGefangener', N'73', N'11713', N'40', N'115', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1106', N'KQ_K_Torturer', N'KingKongFolterer', N'74', N'11974', N'40', N'115', N'0', N'1000', N'7', N'7', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1107', N'KQ_K_Solider', N'KingKongSoldat', N'74', N'11974', N'60', N'135', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1108', N'KQ_K_Templer', N'KingKongTempler', N'75', N'7892', N'40', N'115', N'0', N'1000', N'11', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1109', N'KQ_K_Ratman', N'KingKongRattenritter', N'76', N'12471', N'50', N'125', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1110', N'KQ_K_GoldenBat', N'KingKongGoldfledermaus', N'77', N'12738', N'40', N'115', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1111', N'KQ_K_Spider', N'KingKongSpinne', N'78', N'12975', N'40', N'115', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1112', N'KQ_K_Nox', N'KingKongNox', N'78', N'12975', N'40', N'115', N'0', N'1200', N'1', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1113', N'KQ_K_Mara', N'Zur?ckgekehrte Mara', N'80', N'121379', N'50', N'138', N'0', N'1000', N'12', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1114', N'KQ_K_Marlone', N'Zur?ckgekehrter Marlone', N'80', N'121379', N'50', N'138', N'0', N'1000', N'6', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1115', N'KQ_K_G_Slime', N'Zur?ckgekehrter Geisterschleim', N'80', N'87321', N'40', N'127', N'0', N'3200', N'7', N'0', N'1', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1116', N'KQ_K_Robo', N'Zur?ckgekehrter MillenniumRobo', N'81', N'137613', N'50', N'138', N'0', N'2000', N'1', N'7', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1117', N'KQ_K_PhinoFlie', N'Gigantische Phina', N'81', N'88983', N'50', N'138', N'0', N'3000', N'14', N'6', N'1', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1118', N'KQ_K_BossPhino', N'KingKongPhino', N'83', N'214253', N'40', N'127', N'0', N'1500', N'5', N'6', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1119', N'KQ_H_Kebing', N'Verr?ckter Kebing', N'41', N'5135', N'40', N'115', N'0', N'1200', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1120', N'KQ_H_Mushroom', N'Dreckiger Pilz', N'41', N'5135', N'40', N'115', N'0', N'1400', N'7', N'7', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1121', N'KQ_H_Boogy', N'Hungrige Schildie', N'42', N'5312', N'30', N'105', N'0', N'1500', N'8', N'8', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1122', N'KQ_H_Ratman', N'Wahsinniger Rattenmensch', N'43', N'5472', N'50', N'138', N'0', N'1200', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1123', N'KQ_H_Fox', N'Verr?ckter Fuchs', N'44', N'5652', N'60', N'135', N'0', N'1200', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1124', N'KQ_H_BoneImp', N'Kn?cheriger Imp', N'45', N'5815', N'40', N'127', N'0', N'1800', N'7', N'9', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1125', N'KQ_H_Prock', N'Giftprock', N'46', N'4563', N'40', N'127', N'0', N'1500', N'20', N'9', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1126', N'KQ_H_Bat', N'Grausame Fledermaus', N'47', N'6187', N'40', N'127', N'0', N'2000', N'8', N'7', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1127', N'KQ_H_Wolf', N'Brutaler Wolf', N'49', N'6543', N'50', N'125', N'0', N'1700', N'7', N'2', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1128', N'KQ_H_Honeying', N'Schattenbienchen', N'49', N'6543', N'50', N'133', N'0', N'1500', N'8', N'9', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1129', N'KQ_H_GHoneying', N'Riesenbienchen', N'51', N'75947', N'50', N'133', N'0', N'5000', N'8', N'9', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1130', N'KQ_U_Spider01', N'Kampfspinne', N'60', N'8673', N'50', N'105', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1131', N'KQ_U_Spider02', N'Gewaltt?tige Spinne', N'61', N'8905', N'50', N'105', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1132', N'KQ_U_Spider03', N'Schnelle Spinne', N'62', N'9119', N'50', N'105', N'0', N'1050', N'8', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1133', N'KQ_U_AMageBook', N'Erzmagiebuch', N'63', N'6008', N'50', N'105', N'0', N'1200', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1134', N'KQ_U_Spider05', N'Kannibalenspinne', N'64', N'9573', N'50', N'105', N'0', N'1100', N'8', N'10', N'0', N'3', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1135', N'KQ_U_Lvivi', N'Blitzvivi', N'65', N'6301', N'50', N'105', N'0', N'1600', N'14', N'1', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1136', N'KQ_U_Greenky', N'Unerbittlicher Gr?nling', N'66', N'10033', N'50', N'105', N'0', N'1400', N'7', N'7', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1137', N'KQ_U_Spider04', N'Grimmige Spinne', N'67', N'10277', N'50', N'105', N'0', N'1100', N'8', N'10', N'0', N'3', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1138', N'KQ_U_Ivivi', N'Eisvivi', N'68', N'6776', N'50', N'105', N'0', N'1700', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1139', N'KQ_U_TombRaider', N'Wahnsinniger Grabr?uber', N'69', N'118229', N'50', N'105', N'0', N'2000', N'7', N'1', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1140', N'KQ_U_Uspider', N'Krasse Spinne', N'70', N'11002', N'50', N'105', N'0', N'1200', N'8', N'10', N'1', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1141', N'KQ_U_BabyDragon', N'Desi der Babydrache ', N'73', N'163979', N'50', N'133', N'0', N'1500', N'7', N'6', N'1', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1142', N'KQ_G_Stonie', N'Dunkler Findling', N'80', N'13487', N'60', N'127', N'0', N'1900', N'5', N'6', N'0', N'2', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1143', N'KQ_G_SparkDog', N'Dunkler Funkenhund', N'80', N'13487', N'60', N'138', N'0', N'2500', N'20', N'6', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1144', N'KQ_G_JewelKeeper', N'Dunkler Juwelenw?chter', N'81', N'13761', N'60', N'127', N'0', N'2500', N'7', N'6', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1145', N'KQ_G_Pixy', N'Dunkelpixy', N'82', N'14005', N'60', N'127', N'0', N'800', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1146', N'KQ_G_OrcCaptain', N'Dunkler Orkkapit?n', N'83', N'14284', N'60', N'138', N'0', N'1500', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1147', N'KQ_G_NaiadDemon', N'Dunkler Naiadd?mon', N'84', N'14558', N'60', N'130', N'0', N'1500', N'14', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1148', N'KQ_G_Shylph', N'Dunkle Sylphe', N'85', N'14813', N'60', N'127', N'0', N'1300', N'11', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1149', N'KQ_G_Archon', N'Dunkler Archon', N'86', N'15092', N'60', N'127', N'0', N'2000', N'8', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1150', N'KQ_G_Incubus', N'Dunkler Inkubus', N'87', N'15350', N'60', N'127', N'0', N'1800', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1151', N'KQ_G_Nox', N'Dunkelnox', N'88', N'46896', N'60', N'138', N'0', N'1400', N'1', N'1', N'4', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1152', N'KQ_G_BlackIncubus', N'Dunkler schwarzer Inkubus', N'89', N'15893', N'60', N'127', N'0', N'1400', N'3', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1153', N'KQ_G_AncientStonie', N'Dunkler alter Findling', N'90', N'16179', N'60', N'127', N'0', N'1500', N'6', N'6', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1154', N'KQ_G_Joker', N'Dunkler Joker', N'91', N'16445', N'60', N'127', N'0', N'1300', N'14', N'1', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1155', N'KQ_G_AncientStatue', N'Dunkle alte Steinstatue', N'92', N'16734', N'60', N'100', N'0', N'2000', N'13', N'6', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1156', N'KQ_G_Gordon', N'Seelenloser Gordon', N'90', N'16179', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1157', N'KQ_G_Boss', N'Gordonmeister', N'95', N'175972', N'60', N'127', N'0', N'2000', N'7', N'0', N'2', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1158', N'KQ_GB_Spider', N'Gro?e Spinne', N'73', N'163979', N'60', N'110', N'0', N'1500', N'8', N'10', N'1', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1159', N'KQ_M_Spider', N'Minispinne', N'64', N'3654', N'60', N'133', N'0', N'400', N'8', N'10', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1160', N'KQ_Gate6', N'Tor', N'1', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'4', N'1', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1161', N'KQ_G_AncientStatue01', N'Alte Statue der Finsternis', N'82', N'14005', N'60', N'100', N'1', N'2000', N'0', N'6', N'5', N'6', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1162', N'KQ_G_Hero01', N'Held', N'80', N'14005', N'60', N'100', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1163', N'KQ_H_SmallProck', N'Kleiner Prock', N'49', N'13085', N'40', N'115', N'0', N'1000', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1164', N'KQ_H_Bat2', N'Schweinsfledermaus', N'50', N'13473', N'40', N'115', N'0', N'1000', N'8', N'9', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1165', N'KQ_H_KissLips', N'Wilde Maulpflanze', N'51', N'10521', N'40', N'115', N'0', N'1200', N'20', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1166', N'KQ_H_Spider', N'Hungrige Spinne', N'53', N'14592', N'40', N'115', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1167', N'KQ_H_SandRatman', N'Gro?e Sandratte', N'55', N'15340', N'40', N'115', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1168', N'KQ_H_MadHob', N'Wahnsinnshob', N'56', N'15748', N'45', N'110', N'0', N'1500', N'7', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1169', N'KQ_H_HardboneImp', N'Hartknochenimp', N'59', N'16924', N'45', N'110', N'0', N'2000', N'7', N'9', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1170', N'KQ_H_Werebear', N'Werb?rmeister', N'58', N'115615', N'60', N'135', N'0', N'2000', N'7', N'1', N'1', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1171', N'KQ_H_HeavyOgre', N'Schwerer Oger', N'57', N'16102', N'50', N'115', N'0', N'1200', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1172', N'KQ_H_BossTombRaider2', N'Grabr?ubermeister', N'59', N'135396', N'60', N'140', N'0', N'2000', N'7', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1173', N'KQ_H_BossRobo2', N'10.000 Jahre alter Robo', N'60', N'156112', N'60', N'140', N'0', N'1800', N'1', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1174', N'KQ_H_GobleKing', N'GoblinGro?k?nig', N'61', N'178101', N'60', N'140', N'0', N'2000', N'4', N'7', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1175', N'KQ_H_MiniDragon', N'Desi der Babydrache ', N'63', N'486460', N'50', N'115', N'0', N'1500', N'7', N'6', N'1', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1200', N'KQ_KalBanObeb', N'Kalban Obeb', N'110', N'262548', N'40', N'100', N'0', N'1700', N'1', N'4', N'1', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1201', N'KQ_Kamaris', N'Kamaris der Dunkelheit', N'110', N'43758', N'0', N'0', N'0', N'700', N'14', N'6', N'0', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1202', N'KQ_SK_Sudder', N'Furchterregendes Skelett', N'103', N'31098', N'60', N'105', N'0', N'1700', N'6', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1203', N'KQ_SK_Sudder2', N'Furchterregender Skelettmeister', N'103', N'31098', N'60', N'105', N'0', N'2300', N'6', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1204', N'KQ_SK_Elec', N'Vernichtendes Skelett', N'103', N'31098', N'60', N'105', N'0', N'1600', N'4', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1205', N'KQ_SK_Elec2', N'Vernichtender Skelettmeister', N'103', N'31098', N'60', N'105', N'0', N'2300', N'4', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1206', N'KQ_SK_Dash', N'Furchtloses Skelett', N'103', N'31098', N'60', N'105', N'0', N'2200', N'6', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1207', N'KQ_SK_SkelArcher1', N'Skelettbogensch?tze', N'103', N'31098', N'35', N'127', N'0', N'2000', N'2', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1208', N'KQ_SK_SkelArcher2', N'Skelettbogensch?tze', N'103', N'31098', N'35', N'127', N'0', N'2000', N'2', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1209', N'KQ_SK_SkelArcher3', N'Skelettbogensch?tze', N'103', N'31098', N'35', N'127', N'0', N'2000', N'2', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1210', N'KQ_VGate01', N'Obebs Tor', N'110', N'43758', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'5', N'0', N'3000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1211', N'KQ_VGate02', N'Obebs Tor', N'110', N'43758', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'3000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1212', N'KQ_Kamaris2', N'Kamaris der Dunkelheit', N'110', N'43758', N'0', N'0', N'0', N'700', N'14', N'6', N'0', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1213', N'KQ_Kamaris3', N'Kamaris der Dunkelheit', N'110', N'43758', N'0', N'0', N'0', N'700', N'14', N'6', N'0', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1214', N'KQ_SK_Sudder3', N'Furchterregender Skelettriese', N'103', N'31098', N'60', N'105', N'0', N'2300', N'6', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1215', N'KQ_SK_Elec3', N'Vernichtender Skelettriese', N'103', N'31098', N'60', N'105', N'0', N'2300', N'4', N'5', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1300', N'MINE_ICE', N'Magische Waffenkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1301', N'MINE_MAUL', N'Magische Waffenkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1500', N'Anti_Henis_F01', N'AllianzderHenneathGegner', N'1', N'68', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1501', N'Anti_Henis_C01', N'AllianzderHenneathGegner', N'1', N'68', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1502', N'Anti_Henis_A01', N'AllianzderHenneathGegner', N'1', N'54', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1503', N'Anti_Henis_M01', N'AllianzderHenneathGegner', N'1', N'54', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1504', N'Anti_Henis_F02', N'AllianzderHenneathGegner', N'2', N'88', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1505', N'Anti_Henis_C02', N'AllianzderHenneathGegner', N'2', N'88', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1506', N'Anti_Henis_A02', N'AllianzderHenneathGegner', N'2', N'71', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1507', N'Anti_Henis_M02', N'AllianzderHenneathGegner', N'2', N'71', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1508', N'Anti_Henis_F03', N'AllianzderHenneathGegner', N'3', N'114', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1509', N'Anti_Henis_C03', N'AllianzderHenneathGegner', N'3', N'114', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1510', N'Anti_Henis_A03', N'AllianzderHenneathGegner', N'3', N'92', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1511', N'Anti_Henis_M03', N'AllianzderHenneathGegner', N'3', N'92', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1512', N'Anti_Henis_F04', N'AllianzderHenneathGegner', N'4', N'151', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1513', N'Anti_Henis_C04', N'AllianzderHenneathGegner', N'4', N'151', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1514', N'Anti_Henis_A04', N'AllianzderHenneathGegner', N'4', N'121', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1515', N'Anti_Henis_M04', N'AllianzderHenneathGegner', N'4', N'121', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1516', N'Anti_Henis_F05', N'AllianzderHenneathGegner', N'5', N'198', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1517', N'Anti_Henis_C05', N'AllianzderHenneathGegner', N'5', N'198', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1518', N'Anti_Henis_A05', N'AllianzderHenneathGegner', N'5', N'158', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1519', N'Anti_Henis_M05', N'AllianzderHenneathGegner', N'5', N'158', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1520', N'Anti_Henis_F06', N'AllianzderHenneathGegner', N'6', N'255', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1521', N'Anti_Henis_C06', N'AllianzderHenneathGegner', N'6', N'255', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1522', N'Anti_Henis_A06', N'AllianzderHenneathGegner', N'6', N'204', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1523', N'Anti_Henis_M06', N'AllianzderHenneathGegner', N'6', N'204', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1524', N'Anti_Henis_F07', N'AllianzderHenneathGegner', N'7', N'333', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1525', N'Anti_Henis_C07', N'AllianzderHenneathGegner', N'7', N'333', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1526', N'Anti_Henis_A07', N'AllianzderHenneathGegner', N'7', N'266', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1527', N'Anti_Henis_M07', N'AllianzderHenneathGegner', N'7', N'266', N'60', N'100', N'0', N'1000', N'3', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1528', N'Anti_Henis_F08', N'AllianzderHenneathGegner', N'8', N'364', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1529', N'Anti_Henis_C08', N'AllianzderHenneathGegner', N'8', N'364', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1530', N'Anti_Henis_A08', N'AllianzderHenneathGegner', N'8', N'291', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1531', N'Anti_Henis_M08', N'AllianzderHenneathGegner', N'8', N'291', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1532', N'Anti_Henis_F09', N'AllianzderHenneathGegner', N'9', N'400', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1533', N'Anti_Henis_C09', N'AllianzderHenneathGegner', N'9', N'400', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1534', N'Anti_Henis_A09', N'AllianzderHenneathGegner', N'9', N'320', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1535', N'Anti_Henis_M09', N'AllianzderHenneathGegner', N'9', N'320', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1536', N'Anti_Henis_F10', N'AllianzderHenneathGegner', N'10', N'439', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1537', N'Anti_Henis_C10', N'AllianzderHenneathGegner', N'10', N'439', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1538', N'Anti_Henis_A10', N'AllianzderHenneathGegner', N'10', N'352', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1539', N'Anti_Henis_M10', N'AllianzderHenneathGegner', N'10', N'352', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1540', N'Anti_Henis_F11', N'AllianzderHenneathGegner', N'11', N'484', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1541', N'Anti_Henis_C11', N'AllianzderHenneathGegner', N'11', N'484', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1542', N'Anti_Henis_A11', N'AllianzderHenneathGegner', N'11', N'387', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1543', N'Anti_Henis_M11', N'AllianzderHenneathGegner', N'11', N'387', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1544', N'Anti_Henis_F12', N'AllianzderHenneathGegner', N'12', N'533', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1545', N'Anti_Henis_C12', N'AllianzderHenneathGegner', N'12', N'533', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1546', N'Anti_Henis_A12', N'AllianzderHenneathGegner', N'12', N'426', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1547', N'Anti_Henis_M12', N'AllianzderHenneathGegner', N'12', N'426', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1548', N'Anti_Henis_F13', N'AllianzderHenneathGegner', N'13', N'588', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1549', N'Anti_Henis_C13', N'AllianzderHenneathGegner', N'13', N'588', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1550', N'Anti_Henis_A13', N'AllianzderHenneathGegner', N'13', N'470', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1551', N'Anti_Henis_M13', N'AllianzderHenneathGegner', N'13', N'470', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1552', N'Anti_Henis_F14', N'AllianzderHenneathGegner', N'14', N'645', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1553', N'Anti_Henis_C14', N'AllianzderHenneathGegner', N'14', N'645', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1554', N'Anti_Henis_A14', N'AllianzderHenneathGegner', N'14', N'516', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1555', N'Anti_Henis_M14', N'AllianzderHenneathGegner', N'14', N'516', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1556', N'Anti_Henis_F15', N'AllianzderHenneathGegner', N'15', N'949', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1557', N'Anti_Henis_C15', N'AllianzderHenneathGegner', N'15', N'949', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1558', N'Anti_Henis_A15', N'AllianzderHenneathGegner', N'15', N'759', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1559', N'Anti_Henis_M15', N'AllianzderHenneathGegner', N'15', N'759', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1560', N'Anti_Henis_F16', N'AllianzderHenneathGegner', N'16', N'1092', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1561', N'Anti_Henis_C16', N'AllianzderHenneathGegner', N'16', N'1092', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1562', N'Anti_Henis_A16', N'AllianzderHenneathGegner', N'16', N'874', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1563', N'Anti_Henis_M16', N'AllianzderHenneathGegner', N'16', N'874', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1564', N'Anti_Henis_F17', N'AllianzderHenneathGegner', N'17', N'1256', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1565', N'Anti_Henis_C17', N'AllianzderHenneathGegner', N'17', N'1256', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1566', N'Anti_Henis_A17', N'AllianzderHenneathGegner', N'17', N'1005', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1567', N'Anti_Henis_M17', N'AllianzderHenneathGegner', N'17', N'1005', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1568', N'Anti_Henis_F18', N'AllianzderHenneathGegner', N'18', N'1446', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1569', N'Anti_Henis_C18', N'AllianzderHenneathGegner', N'18', N'1446', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1570', N'Anti_Henis_A18', N'AllianzderHenneathGegner', N'18', N'1156', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1571', N'Anti_Henis_M18', N'AllianzderHenneathGegner', N'18', N'1156', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1572', N'Anti_Henis_F19', N'AllianzderHenneathGegner', N'19', N'1661', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1573', N'Anti_Henis_C19', N'AllianzderHenneathGegner', N'19', N'1661', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1574', N'Anti_Henis_A19', N'AllianzderHenneathGegner', N'19', N'1329', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1575', N'Anti_Henis_M19', N'AllianzderHenneathGegner', N'19', N'1329', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1576', N'Anti_Henis_F20', N'AllianzderHenneathGegner', N'20', N'1776', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1577', N'Anti_Henis_C20', N'AllianzderHenneathGegner', N'20', N'1776', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1578', N'Anti_Henis_A20', N'AllianzderHenneathGegner', N'20', N'1421', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1579', N'Anti_Henis_M20', N'AllianzderHenneathGegner', N'20', N'1421', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1580', N'Anti_Henis_F21', N'AllianzderHenneathGegner', N'21', N'1812', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1581', N'Anti_Henis_C21', N'AllianzderHenneathGegner', N'21', N'1812', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1582', N'Anti_Henis_A21', N'AllianzderHenneathGegner', N'21', N'1450', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1583', N'Anti_Henis_M21', N'AllianzderHenneathGegner', N'21', N'1450', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1584', N'Anti_Henis_F22', N'AllianzderHenneathGegner', N'22', N'1849', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1585', N'Anti_Henis_C22', N'AllianzderHenneathGegner', N'22', N'1849', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1586', N'Anti_Henis_A22', N'AllianzderHenneathGegner', N'22', N'1479', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1587', N'Anti_Henis_M22', N'AllianzderHenneathGegner', N'22', N'1479', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1588', N'Anti_Henis_F23', N'AllianzderHenneathGegner', N'23', N'1885', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1589', N'Anti_Henis_C23', N'AllianzderHenneathGegner', N'23', N'1885', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1590', N'Anti_Henis_A23', N'AllianzderHenneathGegner', N'23', N'1508', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1591', N'Anti_Henis_M23', N'AllianzderHenneathGegner', N'23', N'1508', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1592', N'Anti_Henis_F24', N'AllianzderHenneathGegner', N'24', N'1924', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1593', N'Anti_Henis_C24', N'AllianzderHenneathGegner', N'24', N'1924', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1594', N'Anti_Henis_A24', N'AllianzderHenneathGegner', N'24', N'1539', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1595', N'Anti_Henis_M24', N'AllianzderHenneathGegner', N'24', N'1539', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1596', N'Anti_Henis_F25', N'AllianzderHenneathGegner', N'25', N'1963', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1597', N'Anti_Henis_C25', N'AllianzderHenneathGegner', N'25', N'1963', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1598', N'Anti_Henis_A25', N'AllianzderHenneathGegner', N'25', N'1570', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1599', N'Anti_Henis_M25', N'AllianzderHenneathGegner', N'25', N'1570', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1600', N'Anti_Henis_F26', N'AllianzderHenneathGegner', N'26', N'2002', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1601', N'Anti_Henis_C26', N'AllianzderHenneathGegner', N'26', N'2002', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1602', N'Anti_Henis_A26', N'AllianzderHenneathGegner', N'26', N'1602', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1603', N'Anti_Henis_M26', N'AllianzderHenneathGegner', N'26', N'1602', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1604', N'Anti_Henis_F27', N'AllianzderHenneathGegner', N'27', N'2041', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1605', N'Anti_Henis_C27', N'AllianzderHenneathGegner', N'27', N'2041', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1606', N'Anti_Henis_A27', N'AllianzderHenneathGegner', N'27', N'1633', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1607', N'Anti_Henis_M27', N'AllianzderHenneathGegner', N'27', N'1633', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1608', N'Anti_Henis_F28', N'AllianzderHenneathGegner', N'28', N'2083', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1609', N'Anti_Henis_C28', N'AllianzderHenneathGegner', N'28', N'2083', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1610', N'Anti_Henis_A28', N'AllianzderHenneathGegner', N'28', N'1666', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1611', N'Anti_Henis_M28', N'AllianzderHenneathGegner', N'28', N'1666', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1612', N'Anti_Henis_F29', N'AllianzderHenneathGegner', N'29', N'2124', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1613', N'Anti_Henis_C29', N'AllianzderHenneathGegner', N'29', N'2124', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1614', N'Anti_Henis_A29', N'AllianzderHenneathGegner', N'29', N'1699', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1615', N'Anti_Henis_M29', N'AllianzderHenneathGegner', N'29', N'1699', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1616', N'Anti_Henis_F30', N'AllianzderHenneathGegner', N'30', N'2187', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1617', N'Anti_Henis_C30', N'AllianzderHenneathGegner', N'30', N'2187', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1618', N'Anti_Henis_A30', N'AllianzderHenneathGegner', N'30', N'1749', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1619', N'Anti_Henis_M30', N'AllianzderHenneathGegner', N'30', N'1749', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1620', N'Anti_Henis_F31', N'AllianzderHenneathGegner', N'31', N'2382', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1621', N'Anti_Henis_C31', N'AllianzderHenneathGegner', N'31', N'2382', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1622', N'Anti_Henis_A31', N'AllianzderHenneathGegner', N'31', N'1905', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1623', N'Anti_Henis_M31', N'AllianzderHenneathGegner', N'31', N'1905', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1624', N'Anti_Henis_F32', N'AllianzderHenneathGegner', N'32', N'2597', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1625', N'Anti_Henis_C32', N'AllianzderHenneathGegner', N'32', N'2597', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1626', N'Anti_Henis_A32', N'AllianzderHenneathGegner', N'32', N'2078', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1627', N'Anti_Henis_M32', N'AllianzderHenneathGegner', N'32', N'2078', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1628', N'Anti_Henis_F33', N'AllianzderHenneathGegner', N'33', N'2831', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1629', N'Anti_Henis_C33', N'AllianzderHenneathGegner', N'33', N'2831', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1630', N'Anti_Henis_A33', N'AllianzderHenneathGegner', N'33', N'2265', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1631', N'Anti_Henis_M33', N'AllianzderHenneathGegner', N'33', N'2265', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1632', N'Anti_Henis_F34', N'AllianzderHenneathGegner', N'34', N'3086', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1633', N'Anti_Henis_C34', N'AllianzderHenneathGegner', N'34', N'3086', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1634', N'Anti_Henis_A34', N'AllianzderHenneathGegner', N'34', N'2469', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1635', N'Anti_Henis_M34', N'AllianzderHenneathGegner', N'34', N'2469', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1636', N'Anti_Henis_F35', N'AllianzderHenneathGegner', N'35', N'3364', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1637', N'Anti_Henis_C35', N'AllianzderHenneathGegner', N'35', N'3364', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1638', N'Anti_Henis_A35', N'AllianzderHenneathGegner', N'35', N'2692', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1639', N'Anti_Henis_M35', N'AllianzderHenneathGegner', N'35', N'2692', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1640', N'Anti_Henis_F36', N'AllianzderHenneathGegner', N'36', N'3666', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1641', N'Anti_Henis_C36', N'AllianzderHenneathGegner', N'36', N'3666', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1642', N'Anti_Henis_A36', N'AllianzderHenneathGegner', N'36', N'2933', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1643', N'Anti_Henis_M36', N'AllianzderHenneathGegner', N'36', N'2933', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1644', N'Anti_Henis_F37', N'AllianzderHenneathGegner', N'37', N'3996', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1645', N'Anti_Henis_C37', N'AllianzderHenneathGegner', N'37', N'3996', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1646', N'Anti_Henis_A37', N'AllianzderHenneathGegner', N'37', N'3197', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1647', N'Anti_Henis_M37', N'AllianzderHenneathGegner', N'37', N'3197', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1648', N'Anti_Henis_F38', N'AllianzderHenneathGegner', N'38', N'4355', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1649', N'Anti_Henis_C38', N'AllianzderHenneathGegner', N'38', N'4355', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1650', N'Anti_Henis_A38', N'AllianzderHenneathGegner', N'38', N'3484', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1651', N'Anti_Henis_M38', N'AllianzderHenneathGegner', N'38', N'3484', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1652', N'Anti_Henis_F39', N'AllianzderHenneathGegner', N'39', N'4748', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1653', N'Anti_Henis_C39', N'AllianzderHenneathGegner', N'39', N'4748', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1654', N'Anti_Henis_A39', N'AllianzderHenneathGegner', N'39', N'3798', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1655', N'Anti_Henis_M39', N'AllianzderHenneathGegner', N'39', N'3798', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1656', N'Anti_Henis_F40', N'AllianzderHenneathGegner', N'40', N'5153', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1657', N'Anti_Henis_C40', N'AllianzderHenneathGegner', N'40', N'5153', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1658', N'Anti_Henis_A40', N'AllianzderHenneathGegner', N'40', N'4123', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1659', N'Anti_Henis_M40', N'AllianzderHenneathGegner', N'40', N'4123', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1660', N'Anti_Henis_F41', N'AllianzderHenneathGegner', N'41', N'5307', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1661', N'Anti_Henis_C41', N'AllianzderHenneathGegner', N'41', N'5307', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1662', N'Anti_Henis_A41', N'AllianzderHenneathGegner', N'41', N'4245', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1663', N'Anti_Henis_M41', N'AllianzderHenneathGegner', N'41', N'4245', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1664', N'Anti_Henis_F42', N'AllianzderHenneathGegner', N'42', N'5468', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1665', N'Anti_Henis_C42', N'AllianzderHenneathGegner', N'42', N'5468', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1666', N'Anti_Henis_A42', N'AllianzderHenneathGegner', N'42', N'4374', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1667', N'Anti_Henis_M42', N'AllianzderHenneathGegner', N'42', N'4374', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1668', N'Anti_Henis_F43', N'AllianzderHenneathGegner', N'43', N'5632', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1669', N'Anti_Henis_C43', N'AllianzderHenneathGegner', N'43', N'5632', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1670', N'Anti_Henis_A43', N'AllianzderHenneathGegner', N'43', N'4505', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1671', N'Anti_Henis_M43', N'AllianzderHenneathGegner', N'43', N'4505', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1672', N'Anti_Henis_F44', N'AllianzderHenneathGegner', N'44', N'5801', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1673', N'Anti_Henis_C44', N'AllianzderHenneathGegner', N'44', N'5801', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1674', N'Anti_Henis_A44', N'AllianzderHenneathGegner', N'44', N'4640', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1675', N'Anti_Henis_M44', N'AllianzderHenneathGegner', N'44', N'4640', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1676', N'Anti_Henis_F45', N'AllianzderHenneathGegner', N'45', N'5975', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1677', N'Anti_Henis_C45', N'AllianzderHenneathGegner', N'45', N'5975', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1678', N'Anti_Henis_A45', N'AllianzderHenneathGegner', N'45', N'4780', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1679', N'Anti_Henis_M45', N'AllianzderHenneathGegner', N'45', N'4780', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1680', N'Anti_Henis_F46', N'AllianzderHenneathGegner', N'46', N'6154', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1681', N'Anti_Henis_C46', N'AllianzderHenneathGegner', N'46', N'6154', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1682', N'Anti_Henis_A46', N'AllianzderHenneathGegner', N'46', N'4923', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1683', N'Anti_Henis_M46', N'AllianzderHenneathGegner', N'46', N'4923', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1684', N'Anti_Henis_F47', N'AllianzderHenneathGegner', N'47', N'6339', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1685', N'Anti_Henis_C47', N'AllianzderHenneathGegner', N'47', N'6339', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1686', N'Anti_Henis_A47', N'AllianzderHenneathGegner', N'47', N'5071', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1687', N'Anti_Henis_M47', N'AllianzderHenneathGegner', N'47', N'5071', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1688', N'Anti_Henis_F48', N'AllianzderHenneathGegner', N'48', N'6529', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1689', N'Anti_Henis_C48', N'AllianzderHenneathGegner', N'48', N'6529', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1690', N'Anti_Henis_A48', N'AllianzderHenneathGegner', N'48', N'5223', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1691', N'Anti_Henis_M48', N'AllianzderHenneathGegner', N'48', N'5223', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1692', N'Anti_Henis_F49', N'AllianzderHenneathGegner', N'49', N'6724', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1693', N'Anti_Henis_C49', N'AllianzderHenneathGegner', N'49', N'6724', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1694', N'Anti_Henis_A49', N'AllianzderHenneathGegner', N'49', N'5379', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1695', N'Anti_Henis_M49', N'AllianzderHenneathGegner', N'49', N'5379', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1696', N'Anti_Henis_F50', N'AllianzderHenneathGegner', N'50', N'7004', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1697', N'Anti_Henis_C50', N'AllianzderHenneathGegner', N'50', N'7004', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1698', N'Anti_Henis_A50', N'AllianzderHenneathGegner', N'50', N'5604', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1699', N'Anti_Henis_M50', N'AllianzderHenneathGegner', N'50', N'5604', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1700', N'Anti_Henis_F51', N'AllianzderHenneathGegner', N'51', N'7181', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1701', N'Anti_Henis_C51', N'AllianzderHenneathGegner', N'51', N'7181', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1702', N'Anti_Henis_A51', N'AllianzderHenneathGegner', N'51', N'5745', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1703', N'Anti_Henis_M51', N'AllianzderHenneathGegner', N'51', N'5745', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1704', N'Anti_Henis_F52', N'AllianzderHenneathGegner', N'52', N'7361', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1705', N'Anti_Henis_C52', N'AllianzderHenneathGegner', N'52', N'7361', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1706', N'Anti_Henis_A52', N'AllianzderHenneathGegner', N'52', N'5888', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1707', N'Anti_Henis_M52', N'AllianzderHenneathGegner', N'52', N'5888', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1708', N'Anti_Henis_F53', N'AllianzderHenneathGegner', N'53', N'7543', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1709', N'Anti_Henis_C53', N'AllianzderHenneathGegner', N'53', N'7543', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1710', N'Anti_Henis_A53', N'AllianzderHenneathGegner', N'53', N'6034', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1711', N'Anti_Henis_M53', N'AllianzderHenneathGegner', N'53', N'6034', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1712', N'Anti_Henis_F54', N'AllianzderHenneathGegner', N'54', N'7732', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1713', N'Anti_Henis_C54', N'AllianzderHenneathGegner', N'54', N'7732', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1714', N'Anti_Henis_A54', N'AllianzderHenneathGegner', N'54', N'6186', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1715', N'Anti_Henis_M54', N'AllianzderHenneathGegner', N'54', N'6186', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1716', N'Anti_Henis_F55', N'AllianzderHenneathGegner', N'55', N'7925', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1717', N'Anti_Henis_C55', N'AllianzderHenneathGegner', N'55', N'7925', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1718', N'Anti_Henis_A55', N'AllianzderHenneathGegner', N'55', N'6340', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1719', N'Anti_Henis_M55', N'AllianzderHenneathGegner', N'55', N'6340', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1720', N'Anti_Henis_F56', N'AllianzderHenneathGegner', N'56', N'8122', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1721', N'Anti_Henis_C56', N'AllianzderHenneathGegner', N'56', N'8122', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1722', N'Anti_Henis_A56', N'AllianzderHenneathGegner', N'56', N'6498', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1723', N'Anti_Henis_M56', N'AllianzderHenneathGegner', N'56', N'6498', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1724', N'Anti_Henis_F57', N'AllianzderHenneathGegner', N'57', N'8328', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1725', N'Anti_Henis_C57', N'AllianzderHenneathGegner', N'57', N'8328', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1726', N'Anti_Henis_A57', N'AllianzderHenneathGegner', N'57', N'6662', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1727', N'Anti_Henis_M57', N'AllianzderHenneathGegner', N'57', N'6662', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1728', N'Anti_Henis_F58', N'AllianzderHenneathGegner', N'58', N'8536', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1729', N'Anti_Henis_C58', N'AllianzderHenneathGegner', N'58', N'8536', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1730', N'Anti_Henis_A58', N'AllianzderHenneathGegner', N'58', N'6829', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1731', N'Anti_Henis_M58', N'AllianzderHenneathGegner', N'58', N'6829', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1732', N'Anti_Henis_F59', N'AllianzderHenneathGegner', N'59', N'8749', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1733', N'Anti_Henis_C59', N'AllianzderHenneathGegner', N'59', N'8749', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1734', N'Anti_Henis_A59', N'AllianzderHenneathGegner', N'59', N'6999', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1735', N'Anti_Henis_M59', N'AllianzderHenneathGegner', N'59', N'6999', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1736', N'Anti_Henis_F60', N'AllianzderHenneathGegner', N'60', N'9019', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1737', N'Anti_Henis_C60', N'AllianzderHenneathGegner', N'60', N'9019', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1738', N'Anti_Henis_A60', N'AllianzderHenneathGegner', N'60', N'7216', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1739', N'Anti_Henis_M60', N'AllianzderHenneathGegner', N'60', N'7216', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1740', N'Anti_Henis_F61', N'AllianzderHenneathGegner', N'61', N'9235', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1741', N'Anti_Henis_C61', N'AllianzderHenneathGegner', N'61', N'9235', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1742', N'Anti_Henis_A61', N'AllianzderHenneathGegner', N'61', N'7388', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1743', N'Anti_Henis_M61', N'AllianzderHenneathGegner', N'61', N'7388', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1744', N'Anti_Henis_F62', N'AllianzderHenneathGegner', N'62', N'9456', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1745', N'Anti_Henis_C62', N'AllianzderHenneathGegner', N'62', N'9456', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1746', N'Anti_Henis_A62', N'AllianzderHenneathGegner', N'62', N'7565', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1747', N'Anti_Henis_M62', N'AllianzderHenneathGegner', N'62', N'7565', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1748', N'Anti_Henis_F63', N'AllianzderHenneathGegner', N'63', N'9682', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1749', N'Anti_Henis_C63', N'AllianzderHenneathGegner', N'63', N'9682', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1750', N'Anti_Henis_A63', N'AllianzderHenneathGegner', N'63', N'7746', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1751', N'Anti_Henis_M63', N'AllianzderHenneathGegner', N'63', N'7746', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1752', N'Anti_Henis_F64', N'AllianzderHenneathGegner', N'64', N'9916', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1753', N'Anti_Henis_C64', N'AllianzderHenneathGegner', N'64', N'9916', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1754', N'Anti_Henis_A64', N'AllianzderHenneathGegner', N'64', N'7933', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1755', N'Anti_Henis_M64', N'AllianzderHenneathGegner', N'64', N'7933', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1756', N'Anti_Henis_F65', N'AllianzderHenneathGegner', N'65', N'10153', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1757', N'Anti_Henis_C65', N'AllianzderHenneathGegner', N'65', N'10153', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1758', N'Anti_Henis_A65', N'AllianzderHenneathGegner', N'65', N'8122', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1759', N'Anti_Henis_M65', N'AllianzderHenneathGegner', N'65', N'8122', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1760', N'Anti_Henis_F66', N'AllianzderHenneathGegner', N'66', N'10397', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1761', N'Anti_Henis_C66', N'AllianzderHenneathGegner', N'66', N'10397', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1762', N'Anti_Henis_A66', N'AllianzderHenneathGegner', N'66', N'8318', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1763', N'Anti_Henis_M66', N'AllianzderHenneathGegner', N'66', N'8318', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1764', N'Anti_Henis_F67', N'AllianzderHenneathGegner', N'67', N'10647', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1765', N'Anti_Henis_C67', N'AllianzderHenneathGegner', N'67', N'10647', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1766', N'Anti_Henis_A67', N'AllianzderHenneathGegner', N'67', N'8518', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1767', N'Anti_Henis_M67', N'AllianzderHenneathGegner', N'67', N'8518', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1768', N'Anti_Henis_F68', N'AllianzderHenneathGegner', N'68', N'10902', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1769', N'Anti_Henis_C68', N'AllianzderHenneathGegner', N'68', N'10902', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1770', N'Anti_Henis_A68', N'AllianzderHenneathGegner', N'68', N'8721', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1771', N'Anti_Henis_M68', N'AllianzderHenneathGegner', N'68', N'8721', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1772', N'Anti_Henis_F69', N'AllianzderHenneathGegner', N'69', N'11164', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1773', N'Anti_Henis_C69', N'AllianzderHenneathGegner', N'69', N'11164', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1774', N'Anti_Henis_A69', N'AllianzderHenneathGegner', N'69', N'8932', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1775', N'Anti_Henis_M69', N'AllianzderHenneathGegner', N'69', N'8932', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1776', N'Anti_Henis_F70', N'AllianzderHenneathGegner', N'70', N'11440', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1777', N'Anti_Henis_C70', N'AllianzderHenneathGegner', N'70', N'11440', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1778', N'Anti_Henis_A70', N'AllianzderHenneathGegner', N'70', N'9152', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1779', N'Anti_Henis_M70', N'AllianzderHenneathGegner', N'70', N'9152', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1780', N'Anti_Henis_F71', N'AllianzderHenneathGegner', N'71', N'11705', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1781', N'Anti_Henis_C71', N'AllianzderHenneathGegner', N'71', N'11705', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1782', N'Anti_Henis_A71', N'AllianzderHenneathGegner', N'71', N'9364', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1783', N'Anti_Henis_M71', N'AllianzderHenneathGegner', N'71', N'9364', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1784', N'Anti_Henis_F72', N'AllianzderHenneathGegner', N'72', N'11973', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1785', N'Anti_Henis_C72', N'AllianzderHenneathGegner', N'72', N'11973', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1786', N'Anti_Henis_A72', N'AllianzderHenneathGegner', N'72', N'9578', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1787', N'Anti_Henis_M72', N'AllianzderHenneathGegner', N'72', N'9578', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1788', N'Anti_Henis_F73', N'AllianzderHenneathGegner', N'73', N'12249', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1789', N'Anti_Henis_C73', N'AllianzderHenneathGegner', N'73', N'12249', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1790', N'Anti_Henis_A73', N'AllianzderHenneathGegner', N'73', N'9799', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1791', N'Anti_Henis_M73', N'AllianzderHenneathGegner', N'73', N'9799', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1792', N'Anti_Henis_F74', N'AllianzderHenneathGegner', N'74', N'12529', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1793', N'Anti_Henis_C74', N'AllianzderHenneathGegner', N'74', N'12529', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1794', N'Anti_Henis_A74', N'AllianzderHenneathGegner', N'74', N'10024', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1795', N'Anti_Henis_M74', N'AllianzderHenneathGegner', N'74', N'10024', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1796', N'Anti_Henis_F75', N'AllianzderHenneathGegner', N'75', N'12818', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1797', N'Anti_Henis_C75', N'AllianzderHenneathGegner', N'75', N'12818', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1798', N'Anti_Henis_A75', N'AllianzderHenneathGegner', N'75', N'10254', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1799', N'Anti_Henis_M75', N'AllianzderHenneathGegner', N'75', N'10254', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1800', N'Anti_Henis_F76', N'AllianzderHenneathGegner', N'76', N'13114', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1801', N'Anti_Henis_C76', N'AllianzderHenneathGegner', N'76', N'13114', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1802', N'Anti_Henis_A76', N'AllianzderHenneathGegner', N'76', N'10492', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1803', N'Anti_Henis_M76', N'AllianzderHenneathGegner', N'76', N'10492', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1804', N'Anti_Henis_F77', N'AllianzderHenneathGegner', N'77', N'13416', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1805', N'Anti_Henis_C77', N'AllianzderHenneathGegner', N'77', N'13416', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1806', N'Anti_Henis_A77', N'AllianzderHenneathGegner', N'77', N'10733', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1807', N'Anti_Henis_M77', N'AllianzderHenneathGegner', N'77', N'10733', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1808', N'Anti_Henis_F78', N'AllianzderHenneathGegner', N'78', N'13723', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1809', N'Anti_Henis_C78', N'AllianzderHenneathGegner', N'78', N'13723', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1810', N'Anti_Henis_A78', N'AllianzderHenneathGegner', N'78', N'10978', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1811', N'Anti_Henis_M78', N'AllianzderHenneathGegner', N'78', N'10978', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1812', N'Anti_Henis_F79', N'AllianzderHenneathGegner', N'79', N'14040', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1813', N'Anti_Henis_C79', N'AllianzderHenneathGegner', N'79', N'14040', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1814', N'Anti_Henis_A79', N'AllianzderHenneathGegner', N'79', N'11232', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1815', N'Anti_Henis_M79', N'AllianzderHenneathGegner', N'79', N'11232', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1816', N'Anti_Henis_F80', N'AllianzderHenneathGegner', N'80', N'14024', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1817', N'Anti_Henis_C80', N'AllianzderHenneathGegner', N'80', N'14024', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1818', N'Anti_Henis_A80', N'AllianzderHenneathGegner', N'80', N'11220', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1819', N'Anti_Henis_M80', N'AllianzderHenneathGegner', N'80', N'11220', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1820', N'Anti_Henis_F81', N'AllianzderHenneathGegner', N'81', N'14375', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1821', N'Anti_Henis_C81', N'AllianzderHenneathGegner', N'81', N'14375', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1822', N'Anti_Henis_A81', N'AllianzderHenneathGegner', N'81', N'11500', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1823', N'Anti_Henis_M81', N'AllianzderHenneathGegner', N'81', N'11500', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1824', N'Anti_Henis_F82', N'AllianzderHenneathGegner', N'82', N'14734', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1825', N'Anti_Henis_C82', N'AllianzderHenneathGegner', N'82', N'14734', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1826', N'Anti_Henis_A82', N'AllianzderHenneathGegner', N'82', N'11787', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1827', N'Anti_Henis_M82', N'AllianzderHenneathGegner', N'82', N'11787', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1828', N'Anti_Henis_F83', N'AllianzderHenneathGegner', N'83', N'15103', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1829', N'Anti_Henis_C83', N'AllianzderHenneathGegner', N'83', N'15103', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1830', N'Anti_Henis_A83', N'AllianzderHenneathGegner', N'83', N'12083', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1831', N'Anti_Henis_M83', N'AllianzderHenneathGegner', N'83', N'12083', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1832', N'Anti_Henis_F84', N'AllianzderHenneathGegner', N'84', N'15480', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1833', N'Anti_Henis_C84', N'AllianzderHenneathGegner', N'84', N'15480', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1834', N'Anti_Henis_A84', N'AllianzderHenneathGegner', N'84', N'12384', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1835', N'Anti_Henis_M84', N'AllianzderHenneathGegner', N'84', N'12384', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1836', N'Anti_Henis_F85', N'AllianzderHenneathGegner', N'85', N'15868', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1837', N'Anti_Henis_C85', N'AllianzderHenneathGegner', N'85', N'15868', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1838', N'Anti_Henis_A85', N'AllianzderHenneathGegner', N'85', N'12694', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1839', N'Anti_Henis_M85', N'AllianzderHenneathGegner', N'85', N'12694', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1840', N'Anti_Henis_F86', N'AllianzderHenneathGegner', N'86', N'16266', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1841', N'Anti_Henis_C86', N'AllianzderHenneathGegner', N'86', N'16266', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1842', N'Anti_Henis_A86', N'AllianzderHenneathGegner', N'86', N'13012', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1843', N'Anti_Henis_M86', N'AllianzderHenneathGegner', N'86', N'13012', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1844', N'Anti_Henis_F87', N'AllianzderHenneathGegner', N'87', N'16671', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1845', N'Anti_Henis_C87', N'AllianzderHenneathGegner', N'87', N'16671', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1846', N'Anti_Henis_A87', N'AllianzderHenneathGegner', N'87', N'13337', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1847', N'Anti_Henis_M87', N'AllianzderHenneathGegner', N'87', N'13337', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1848', N'Anti_Henis_F88', N'AllianzderHenneathGegner', N'88', N'17087', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1849', N'Anti_Henis_C88', N'AllianzderHenneathGegner', N'88', N'17087', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1850', N'Anti_Henis_A88', N'AllianzderHenneathGegner', N'88', N'13670', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1851', N'Anti_Henis_M88', N'AllianzderHenneathGegner', N'88', N'13670', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1852', N'Anti_Henis_F89', N'AllianzderHenneathGegner', N'89', N'17516', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1853', N'Anti_Henis_C89', N'AllianzderHenneathGegner', N'89', N'17516', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1854', N'Anti_Henis_A89', N'AllianzderHenneathGegner', N'89', N'14013', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1855', N'Anti_Henis_M89', N'AllianzderHenneathGegner', N'89', N'14013', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1856', N'Anti_Henis_F90', N'AllianzderHenneathGegner', N'90', N'21440', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1857', N'Anti_Henis_C90', N'AllianzderHenneathGegner', N'90', N'21440', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1858', N'Anti_Henis_A90', N'AllianzderHenneathGegner', N'90', N'17152', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1859', N'Anti_Henis_M90', N'AllianzderHenneathGegner', N'90', N'17152', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1860', N'Anti_Henis_F91', N'AllianzderHenneathGegner', N'91', N'22511', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1861', N'Anti_Henis_C91', N'AllianzderHenneathGegner', N'91', N'22511', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1862', N'Anti_Henis_A91', N'AllianzderHenneathGegner', N'91', N'18009', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1863', N'Anti_Henis_M91', N'AllianzderHenneathGegner', N'91', N'18009', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1864', N'Anti_Henis_F92', N'AllianzderHenneathGegner', N'92', N'23637', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1865', N'Anti_Henis_C92', N'AllianzderHenneathGegner', N'92', N'23637', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1866', N'Anti_Henis_A92', N'AllianzderHenneathGegner', N'92', N'18909', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1867', N'Anti_Henis_M92', N'AllianzderHenneathGegner', N'92', N'18909', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1868', N'Anti_Henis_F93', N'AllianzderHenneathGegner', N'93', N'24820', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1869', N'Anti_Henis_C93', N'AllianzderHenneathGegner', N'93', N'24820', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1870', N'Anti_Henis_A93', N'AllianzderHenneathGegner', N'93', N'19856', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1871', N'Anti_Henis_M93', N'AllianzderHenneathGegner', N'93', N'19856', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1872', N'Anti_Henis_F94', N'AllianzderHenneathGegner', N'94', N'26060', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1873', N'Anti_Henis_C94', N'AllianzderHenneathGegner', N'94', N'26060', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1874', N'Anti_Henis_A94', N'AllianzderHenneathGegner', N'94', N'20848', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1875', N'Anti_Henis_M94', N'AllianzderHenneathGegner', N'94', N'20848', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1876', N'Anti_Henis_F95', N'AllianzderHenneathGegner', N'95', N'27362', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1877', N'Anti_Henis_C95', N'AllianzderHenneathGegner', N'95', N'27362', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1878', N'Anti_Henis_A95', N'AllianzderHenneathGegner', N'95', N'21890', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1879', N'Anti_Henis_M95', N'AllianzderHenneathGegner', N'95', N'21890', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1880', N'Anti_Henis_F96', N'AllianzderHenneathGegner', N'96', N'28730', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1881', N'Anti_Henis_C96', N'AllianzderHenneathGegner', N'96', N'28730', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1882', N'Anti_Henis_A96', N'AllianzderHenneathGegner', N'96', N'22984', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1883', N'Anti_Henis_M96', N'AllianzderHenneathGegner', N'96', N'22984', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1884', N'Anti_Henis_F97', N'AllianzderHenneathGegner', N'97', N'30168', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1885', N'Anti_Henis_C97', N'AllianzderHenneathGegner', N'97', N'30168', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1886', N'Anti_Henis_A97', N'AllianzderHenneathGegner', N'97', N'24134', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1887', N'Anti_Henis_M97', N'AllianzderHenneathGegner', N'97', N'24134', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1888', N'Anti_Henis_F98', N'AllianzderHenneathGegner', N'98', N'31676', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1889', N'Anti_Henis_C98', N'AllianzderHenneathGegner', N'98', N'31676', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1890', N'Anti_Henis_A98', N'AllianzderHenneathGegner', N'98', N'25341', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1891', N'Anti_Henis_M98', N'AllianzderHenneathGegner', N'98', N'25341', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1892', N'Anti_Henis_F99', N'AllianzderHenneathGegner', N'99', N'33259', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1893', N'Anti_Henis_C99', N'AllianzderHenneathGegner', N'99', N'33259', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1894', N'Anti_Henis_A99', N'AllianzderHenneathGegner', N'99', N'26607', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1895', N'Anti_Henis_M99', N'AllianzderHenneathGegner', N'99', N'26607', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1896', N'Anti_Henis_F100', N'AllianzderHenneathGegner', N'100', N'34923', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1897', N'Anti_Henis_C100', N'AllianzderHenneathGegner', N'100', N'34923', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1898', N'Anti_Henis_A100', N'AllianzderHenneathGegner', N'100', N'27939', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1899', N'Anti_Henis_M100', N'AllianzderHenneathGegner', N'100', N'27939', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1900', N'Anti_Henis_F101', N'AllianzderHenneathGegner', N'101', N'36668', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1901', N'Anti_Henis_C101', N'AllianzderHenneathGegner', N'101', N'36668', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1902', N'Anti_Henis_A101', N'AllianzderHenneathGegner', N'101', N'29334', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1903', N'Anti_Henis_M101', N'AllianzderHenneathGegner', N'101', N'29334', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1904', N'Anti_Henis_F102', N'AllianzderHenneathGegner', N'102', N'38503', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1905', N'Anti_Henis_C102', N'AllianzderHenneathGegner', N'102', N'38503', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1906', N'Anti_Henis_A102', N'AllianzderHenneathGegner', N'102', N'30803', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1907', N'Anti_Henis_M102', N'AllianzderHenneathGegner', N'102', N'30803', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1908', N'Anti_Henis_F103', N'AllianzderHenneathGegner', N'103', N'40427', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1909', N'Anti_Henis_C103', N'AllianzderHenneathGegner', N'103', N'40427', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1910', N'Anti_Henis_A103', N'AllianzderHenneathGegner', N'103', N'32342', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1911', N'Anti_Henis_M103', N'AllianzderHenneathGegner', N'103', N'32342', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1912', N'Anti_Henis_F104', N'AllianzderHenneathGegner', N'104', N'42450', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1913', N'Anti_Henis_C104', N'AllianzderHenneathGegner', N'104', N'42450', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1914', N'Anti_Henis_A104', N'AllianzderHenneathGegner', N'104', N'33960', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1915', N'Anti_Henis_M104', N'AllianzderHenneathGegner', N'104', N'33960', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1916', N'Anti_Henis_F105', N'AllianzderHenneathGegner', N'105', N'44572', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1917', N'Anti_Henis_C105', N'AllianzderHenneathGegner', N'105', N'44572', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1918', N'Anti_Henis_A105', N'AllianzderHenneathGegner', N'105', N'35657', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1919', N'Anti_Henis_M105', N'AllianzderHenneathGegner', N'105', N'35657', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1920', N'Anti_Henis_F106', N'AllianzderHenneathGegner', N'106', N'46800', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1921', N'Anti_Henis_C106', N'AllianzderHenneathGegner', N'106', N'46800', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1922', N'Anti_Henis_A106', N'AllianzderHenneathGegner', N'106', N'37440', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1923', N'Anti_Henis_M106', N'AllianzderHenneathGegner', N'106', N'37440', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1924', N'Anti_Henis_F107', N'AllianzderHenneathGegner', N'107', N'49140', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1925', N'Anti_Henis_C107', N'AllianzderHenneathGegner', N'107', N'49140', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1926', N'Anti_Henis_A107', N'AllianzderHenneathGegner', N'107', N'39312', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1927', N'Anti_Henis_M107', N'AllianzderHenneathGegner', N'107', N'39312', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1928', N'Anti_Henis_F108', N'AllianzderHenneathGegner', N'108', N'51597', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1929', N'Anti_Henis_C108', N'AllianzderHenneathGegner', N'108', N'51597', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1930', N'Anti_Henis_A108', N'AllianzderHenneathGegner', N'108', N'41278', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1931', N'Anti_Henis_M108', N'AllianzderHenneathGegner', N'108', N'41278', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1932', N'Anti_Henis_F109', N'AllianzderHenneathGegner', N'109', N'54176', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1933', N'Anti_Henis_C109', N'AllianzderHenneathGegner', N'109', N'54176', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1934', N'Anti_Henis_A109', N'AllianzderHenneathGegner', N'109', N'43341', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1935', N'Anti_Henis_M109', N'AllianzderHenneathGegner', N'109', N'43341', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1936', N'Anti_Henis_F110', N'AllianzderHenneathGegner', N'110', N'56885', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1937', N'Anti_Henis_C110', N'AllianzderHenneathGegner', N'110', N'56885', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1938', N'Anti_Henis_A110', N'AllianzderHenneathGegner', N'110', N'45508', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1939', N'Anti_Henis_M110', N'AllianzderHenneathGegner', N'110', N'45508', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1940', N'Anti_Henis_F111', N'AllianzderHenneathGegner', N'111', N'59730', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1941', N'Anti_Henis_C111', N'AllianzderHenneathGegner', N'111', N'59730', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1942', N'Anti_Henis_A111', N'AllianzderHenneathGegner', N'111', N'47784', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1943', N'Anti_Henis_M111', N'AllianzderHenneathGegner', N'111', N'47784', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1944', N'Anti_Henis_F112', N'AllianzderHenneathGegner', N'112', N'62717', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1945', N'Anti_Henis_C112', N'AllianzderHenneathGegner', N'112', N'62717', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1946', N'Anti_Henis_A112', N'AllianzderHenneathGegner', N'112', N'50174', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1947', N'Anti_Henis_M112', N'AllianzderHenneathGegner', N'112', N'50174', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1948', N'Anti_Henis_F113', N'AllianzderHenneathGegner', N'113', N'65853', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1949', N'Anti_Henis_C113', N'AllianzderHenneathGegner', N'113', N'65853', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1950', N'Anti_Henis_A113', N'AllianzderHenneathGegner', N'113', N'52682', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1951', N'Anti_Henis_M113', N'AllianzderHenneathGegner', N'113', N'52682', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1952', N'Anti_Henis_F114', N'AllianzderHenneathGegner', N'114', N'69147', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1953', N'Anti_Henis_C114', N'AllianzderHenneathGegner', N'114', N'69147', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1954', N'Anti_Henis_A114', N'AllianzderHenneathGegner', N'114', N'55318', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1955', N'Anti_Henis_M114', N'AllianzderHenneathGegner', N'114', N'55318', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1956', N'Anti_Henis_F115', N'AllianzderHenneathGegner', N'115', N'72602', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1957', N'Anti_Henis_C115', N'AllianzderHenneathGegner', N'115', N'72602', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1958', N'Anti_Henis_A115', N'AllianzderHenneathGegner', N'115', N'58082', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1959', N'Anti_Henis_M115', N'AllianzderHenneathGegner', N'115', N'58082', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1960', N'Anti_Henis_F116', N'AllianzderHenneathGegner', N'116', N'76235', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1961', N'Anti_Henis_C116', N'AllianzderHenneathGegner', N'116', N'76235', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1962', N'Anti_Henis_A116', N'AllianzderHenneathGegner', N'116', N'60988', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1963', N'Anti_Henis_M116', N'AllianzderHenneathGegner', N'116', N'60988', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1964', N'Anti_Henis_F117', N'AllianzderHenneathGegner', N'117', N'80046', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1965', N'Anti_Henis_C117', N'AllianzderHenneathGegner', N'117', N'80046', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1966', N'Anti_Henis_A117', N'AllianzderHenneathGegner', N'117', N'64037', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1967', N'Anti_Henis_M117', N'AllianzderHenneathGegner', N'117', N'64037', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1968', N'Anti_Henis_F118', N'AllianzderHenneathGegner', N'118', N'84048', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1969', N'Anti_Henis_C118', N'AllianzderHenneathGegner', N'118', N'84048', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1970', N'Anti_Henis_A118', N'AllianzderHenneathGegner', N'118', N'67238', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1971', N'Anti_Henis_M118', N'AllianzderHenneathGegner', N'118', N'67238', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1972', N'Anti_Henis_F119', N'AllianzderHenneathGegner', N'119', N'88249', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1973', N'Anti_Henis_C119', N'AllianzderHenneathGegner', N'119', N'88249', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1974', N'Anti_Henis_A119', N'AllianzderHenneathGegner', N'119', N'70599', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'1975', N'Anti_Henis_M119', N'AllianzderHenneathGegner', N'119', N'70599', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2000', N'HeroSlime', N'Heldenschleim', N'2', N'119', N'40', N'110', N'0', N'1500', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2001', N'MushRoomFighter', N'Pilzk?mpfer', N'4', N'187', N'40', N'115', N'0', N'1400', N'7', N'7', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2002', N'KingCrab', N'K?nigskrabbe', N'8', N'351', N'30', N'110', N'0', N'1600', N'7', N'8', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2003', N'AngryWolf', N'W?tender Wolf', N'11', N'471', N'40', N'115', N'0', N'1400', N'7', N'2', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2004', N'RatmanFighter', N'Rattenk?mpfer', N'15', N'914', N'60', N'115', N'0', N'1400', N'7', N'1', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2006', N'BoogyKnight', N'Schildieritter', N'17', N'1196', N'30', N'110', N'0', N'1400', N'8', N'8', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2007', N'KebingSpeeder', N'Rasender Kebing', N'22', N'2167', N'80', N'140', N'0', N'1400', N'7', N'9', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2008', N'PigBat', N'Fledermausschweinchen', N'30', N'3361', N'40', N'115', N'0', N'1400', N'8', N'7', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2009', N'ZombieKnight', N'Zombieritter', N'35', N'4141', N'55', N'127', N'0', N'1400', N'7', N'7', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2010', N'HobFighter', N'Hobk?mpfer', N'40', N'4956', N'40', N'120', N'0', N'1400', N'7', N'1', N'4', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2011', N'WereBearFighter', N'Werb?rK?mpfer', N'46', N'5998', N'50', N'127', N'0', N'1500', N'7', N'1', N'4', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2012', N'Ogre', N'Oger', N'51', N'6904', N'30', N'127', N'0', N'1500', N'7', N'1', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2013', N'CaveKebing', N'H?hlenkebing', N'21', N'1930', N'40', N'115', N'0', N'1200', N'7', N'9', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2014', N'JewelTombRaider', N'Juwelengrabr?uber', N'22', N'2167', N'40', N'115', N'0', N'1200', N'7', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2015', N'ZombieMaster', N'Zombiemeister', N'34', N'3971', N'40', N'127', N'0', N'1300', N'7', N'7', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2016', N'KingCall1stBrother', N'?ltester Collk?nig', N'53', N'7296', N'40', N'138', N'0', N'1400', N'7', N'7', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2017', N'KingCall2stBrother', N'?lterer Collk?nig', N'52', N'7102', N'40', N'133', N'0', N'1200', N'7', N'7', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2018', N'KingCall3stBrother', N'J?ngerer Collk?nig', N'51', N'6904', N'40', N'127', N'0', N'1000', N'7', N'7', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2019', N'Q_QueenSpider', N'Spinnenk?nigin', N'63', N'9355', N'30', N'133', N'0', N'1300', N'8', N'10', N'4', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2020', N'Q_BrightGoldenBat', N'Hellgoldene Fledermaus', N'64', N'9573', N'40', N'138', N'0', N'2000', N'8', N'7', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2021', N'Q_GhostSlime', N'Geisterschleim', N'37', N'4459', N'25', N'110', N'0', N'3200', N'7', N'0', N'4', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2022', N'Q_A_KaraTempler', N'KarasianErztempler', N'59', N'5434', N'35', N'127', N'0', N'1200', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2023', N'Q_LampViVi', N'Lampenvivi', N'34', N'3538', N'40', N'133', N'0', N'1200', N'14', N'1', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2024', N'Q_NoxCaptain', N'Noxkapit?n', N'64', N'13402', N'45', N'138', N'0', N'1300', N'1', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2025', N'Q_Rat_EL_Knight', N'RattenmenschElitek?mpfer', N'65', N'17662', N'50', N'120', N'0', N'1500', N'7', N'1', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2026', N'BigPhinoFlie', N'Riesenphina', N'13', N'405', N'40', N'115', N'0', N'2000', N'14', N'6', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2027', N'GreenkyBig', N'Gro?er Gr?nling', N'63', N'9355', N'40', N'127', N'0', N'1800', N'7', N'7', N'4', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2028', N'GiantElvenTree', N'Riesiger Elfenbaum', N'68', N'10527', N'40', N'127', N'0', N'2000', N'7', N'6', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2029', N'RedShylph', N'Flammensylphe', N'72', N'11485', N'40', N'127', N'0', N'2000', N'11', N'7', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2030', N'BlueArchon', N'Blauer Archon', N'75', N'12238', N'40', N'127', N'0', N'1450', N'8', N'1', N'4', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2031', N'WhiteJokerTrumpy', N'Wei?er Jokertrumpf', N'81', N'8898', N'40', N'127', N'0', N'2000', N'14', N'1', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2400', N'Anti_Henis_G_F10', N'Anf?hrer der HenneathGegner', N'10', N'439', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2401', N'Anti_Henis_G_C10', N'Anf?hrer der HenneathGegner', N'10', N'439', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2402', N'Anti_Henis_G_A10', N'Anf?hrer der HenneathGegner', N'10', N'352', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2403', N'Anti_Henis_G_M10', N'Anf?hrer der HenneathGegner', N'10', N'352', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2404', N'Anti_Henis_G_F20', N'Anf?hrer der HenneathGegner', N'20', N'1776', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2405', N'Anti_Henis_G_C20', N'Anf?hrer der HenneathGegner', N'20', N'1776', N'60', N'100', N'0', N'1000', N'5', N'6', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2406', N'Anti_Henis_G_A20', N'Anf?hrer der HenneathGegner', N'20', N'1421', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2407', N'Anti_Henis_G_M20', N'Anf?hrer der HenneathGegner', N'20', N'1421', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2408', N'Anti_Henis_G_F30', N'Anf?hrer der HenneathGegner', N'30', N'2187', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2409', N'Anti_Henis_G_C30', N'Anf?hrer der HenneathGegner', N'30', N'2187', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2410', N'Anti_Henis_G_A30', N'Anf?hrer der HenneathGegner', N'30', N'1749', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2411', N'Anti_Henis_G_M30', N'Anf?hrer der HenneathGegner', N'30', N'1749', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2412', N'Anti_Henis_G_F40', N'Anf?hrer der HenneathGegner', N'40', N'5153', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2413', N'Anti_Henis_G_C40', N'Anf?hrer der HenneathGegner', N'40', N'5153', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2414', N'Anti_Henis_G_A40', N'Anf?hrer der HenneathGegner', N'40', N'4123', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2415', N'Anti_Henis_G_M40', N'Anf?hrer der HenneathGegner', N'40', N'4123', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2416', N'Anti_Henis_G_F50', N'Anf?hrer der HenneathGegner', N'50', N'7004', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2417', N'Anti_Henis_G_C50', N'Anf?hrer der HenneathGegner', N'50', N'7004', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2418', N'Anti_Henis_G_A50', N'Anf?hrer der HenneathGegner', N'50', N'5604', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2419', N'Anti_Henis_G_M50', N'Anf?hrer der HenneathGegner', N'50', N'5604', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2420', N'Anti_Henis_G_F60', N'Anf?hrer der HenneathGegner', N'60', N'9019', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2421', N'Anti_Henis_G_C60', N'Anf?hrer der HenneathGegner', N'60', N'9019', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2422', N'Anti_Henis_G_A60', N'Anf?hrer der HenneathGegner', N'60', N'7216', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2423', N'Anti_Henis_G_M60', N'Anf?hrer der HenneathGegner', N'60', N'7216', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2424', N'Anti_Henis_G_F70', N'Anf?hrer der HenneathGegner', N'70', N'11440', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2425', N'Anti_Henis_G_C70', N'Anf?hrer der HenneathGegner', N'70', N'11440', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2426', N'Anti_Henis_G_A70', N'Anf?hrer der HenneathGegner', N'70', N'9152', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2427', N'Anti_Henis_G_M70', N'Anf?hrer der HenneathGegner', N'70', N'9152', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2428', N'Anti_Henis_G_F80', N'Anf?hrer der HenneathGegner', N'80', N'14024', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2429', N'Anti_Henis_G_C80', N'Anf?hrer der HenneathGegner', N'80', N'14024', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2430', N'Anti_Henis_G_A80', N'Anf?hrer der HenneathGegner', N'80', N'11220', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2431', N'Anti_Henis_G_M80', N'Anf?hrer der HenneathGegner', N'80', N'11220', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2432', N'Anti_Henis_G_F90', N'Anf?hrer der HenneathGegner', N'90', N'21440', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2433', N'Anti_Henis_G_C90', N'Anf?hrer der HenneathGegner', N'90', N'21440', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2434', N'Anti_Henis_G_A90', N'Anf?hrer der HenneathGegner', N'90', N'17152', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2435', N'Anti_Henis_G_M90', N'Anf?hrer der HenneathGegner', N'90', N'17152', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2436', N'Anti_Henis_G_F100', N'Anf?hrer der HenneathGegner', N'100', N'34923', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2437', N'Anti_Henis_G_C100', N'Anf?hrer der HenneathGegner', N'100', N'34923', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2438', N'Anti_Henis_G_A100', N'Anf?hrer der HenneathGegner', N'100', N'27939', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2439', N'Anti_Henis_G_M100', N'Anf?hrer der HenneathGegner', N'100', N'27939', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2440', N'Anti_Henis_G_F110', N'Anf?hrer der HenneathGegner', N'110', N'56885', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2441', N'Anti_Henis_G_C110', N'Anf?hrer der HenneathGegner', N'110', N'56885', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2442', N'Anti_Henis_G_A110', N'Anf?hrer der HenneathGegner', N'110', N'45508', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2443', N'Anti_Henis_G_M110', N'Anf?hrer der HenneathGegner', N'110', N'45508', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2444', N'Anti_Henis_G_F120', N'Anf?hrer der HenneathGegner', N'120', N'91780', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2445', N'Anti_Henis_G_C120', N'Anf?hrer der HenneathGegner', N'120', N'91780', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2446', N'Anti_Henis_G_A120', N'Anf?hrer der HenneathGegner', N'120', N'73424', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2447', N'Anti_Henis_G_M120', N'Anf?hrer der HenneathGegner', N'120', N'73424', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2500', N'S_RouCos01Crap', N'Sandbuchtkrabbe', N'9', N'615', N'20', N'105', N'0', N'2000', N'7', N'8', N'3', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2501', N'S_RouCos02Crap', N'Gezeitenkrabbe', N'9', N'615', N'20', N'105', N'0', N'2000', N'7', N'8', N'3', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2502', N'S_Wolf', N'Mutantenwolf', N'15', N'1462', N'30', N'110', N'0', N'2000', N'7', N'2', N'3', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2503', N'S_Boogy', N'K?nigsschildie', N'17', N'1345', N'30', N'95', N'0', N'2000', N'8', N'8', N'3', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2504', N'S_Kebing', N'Traumkebing', N'25', N'4199', N'40', N'125', N'0', N'2000', N'7', N'9', N'3', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2505', N'S_Zombie', N'Mutantenzombie', N'35', N'6625', N'40', N'120', N'0', N'2000', N'7', N'7', N'3', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2506', N'S_WereBear', N'Werb?rK?nig', N'45', N'9304', N'25', N'127', N'0', N'2000', N'7', N'1', N'3', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2507', N'S_VampireBat', N'Mutierte Vampirfledermaus', N'55', N'12273', N'30', N'133', N'0', N'2000', N'8', N'7', N'3', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2508', N'S_Greenky', N'Riesiger Gr?nling', N'65', N'15699', N'30', N'127', N'0', N'2000', N'7', N'7', N'3', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'2509', N'S_Stonie', N'Riesiger Findling', N'75', N'19580', N'15', N'85', N'0', N'2000', N'5', N'6', N'3', N'2', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3000', N'Job1_Fighterm', N'Shadow %n', N'19', N'7980', N'40', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3001', N'Job1_Fighterf', N'Shadow %n', N'19', N'7980', N'40', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3002', N'Job1_Archerm', N'Shadow %n', N'19', N'5563', N'40', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3003', N'Job1_Archerf', N'Shadow %n', N'19', N'5563', N'40', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3004', N'Job1_Clericm', N'Shadow %n', N'19', N'5261', N'40', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3005', N'Job1_Clericf', N'Shadow %n', N'19', N'5261', N'40', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3006', N'Job1_Magem', N'Shadow %n', N'19', N'4468', N'40', N'127', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3007', N'Job1_Magef', N'Shadow %n', N'19', N'4468', N'40', N'127', N'0', N'1000', N'14', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3008', N'Job1_Skeleton', N'Schattenhaftes Skelett', N'14', N'1170', N'40', N'127', N'0', N'1000', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3009', N'Job1_SkelArcher', N'Schattenhafter Skelettsch?tze', N'15', N'920', N'30', N'110', N'0', N'1000', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3010', N'Job1_MarloneFighter', N'Schattenhafter MarloneK?mpfer', N'16', N'1312', N'40', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3011', N'Job1_MarloneArcher', N'Schattenhafter MarloneSch?tze', N'17', N'1025', N'30', N'110', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3012', N'Job1_Goblin', N'GoblinSteinstatue', N'18', N'554', N'20', N'100', N'0', N'2000', N'7', N'8', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3013', N'Job1_Kebing', N'Schattenhafter Kebing', N'14', N'894', N'40', N'127', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3014', N'Job2_Zombie', N'Blutiger Zombie', N'55', N'3995', N'10', N'70', N'0', N'1100', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3015', N'Job2_GamOb_stickup', N'Roulette', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3016', N'Job2_GamOb_dice01', N'W?rfel 1', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3017', N'Job2_GamOb_dice02', N'W?rfel 2', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3018', N'Job2_GamOb_dice03', N'W?rfel 3', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3019', N'Job2_GamOb_dice04', N'W?rfel 4', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3020', N'Job2_GamOb_dice05', N'W?rfel 5', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3021', N'Job2_GamOb_dice06', N'W?rfel 6', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3022', N'Job2_GamOb_door', N'Kartent?r', N'1', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3023', N'Job2_JokerT', N'Gl?cksspielK?nigsjoker', N'62', N'10998', N'40', N'133', N'0', N'1300', N'1', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3024', N'Job2_CloverT', N'Gl?cksspielsklave', N'58', N'4235', N'20', N'110', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3025', N'Job2_DiaT', N'Sklave des Jokers', N'59', N'2635', N'40', N'133', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3026', N'Job2_BraveR', N'Roumens Held', N'65', N'17487', N'30', N'100', N'1', N'1000', N'1', N'4', N'0', N'0', N'2', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3027', N'Job2_YongE', N'Elfenherr Elderines', N'65', N'13361', N'30', N'100', N'1', N'1000', N'2', N'1', N'0', N'0', N'2', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3028', N'job2_ElfKnight', N'Elfenj?ger', N'58', N'4235', N'45', N'130', N'0', N'800', N'1', N'4', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3029', N'Job2_LIzardK', N'EchsenmenschJ?ger', N'57', N'1660', N'45', N'130', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'3030', N'Job2_JokerTm', N'Gl?cksspielK?nigsjoker', N'62', N'0', N'40', N'133', N'1', N'1300', N'1', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4000', N'D_Kebing', N'VerliesKebing', N'20', N'2052', N'40', N'115', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4001', N'D_TombRaider', N'VerliesGrabr?uber', N'21', N'2315', N'40', N'115', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4002', N'D_MageBook', N'VerliesMagiebuch', N'22', N'1595', N'40', N'115', N'0', N'1000', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4003', N'D_MarloneArcher', N'VerliesMarloneBogensch?tze', N'23', N'2106', N'40', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4004', N'D_MarloneMegaton', N'VerliesMarloneMegaton', N'24', N'2966', N'50', N'115', N'0', N'1000', N'6', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4005', N'D_MarloneFighter', N'VerliesMarloneK?mpfer', N'25', N'3149', N'40', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4006', N'D_kingMarlone', N'K?nig Marlone', N'25', N'10498', N'40', N'125', N'0', N'1500', N'6', N'1', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4007', N'D_ArchMageBook', N'VerliesErzmagiebuch', N'30', N'2523', N'40', N'115', N'0', N'1000', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4008', N'D_Spider', N'VerliesSpinne', N'31', N'4203', N'40', N'115', N'0', N'1000', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4009', N'D_FlyingStaff', N'VerliesFlugstab', N'32', N'4396', N'30', N'127', N'0', N'1000', N'3', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4010', N'D_Zombie', N'VerliesZombie', N'33', N'4595', N'30', N'127', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4011', N'D_OldFox', N'VerliesGrabfuchs', N'35', N'4969', N'30', N'127', N'0', N'1000', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4012', N'D_Zombieking', N'Zombiek?nig', N'35', N'16564', N'30', N'125', N'0', N'1500', N'7', N'7', N'1', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4013', N'D_BoneImp', N'VerliesKnochenimp', N'40', N'5947', N'30', N'127', N'0', N'1700', N'7', N'7', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4014', N'D_Goblin', N'VerliesGoblin', N'41', N'6162', N'35', N'127', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4015', N'D_Prock', N'VerliesProck', N'42', N'4838', N'40', N'127', N'0', N'1400', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4016', N'D_GoblinSwordman', N'VerliesGoblinschwertk?mpfer', N'43', N'6566', N'40', N'127', N'0', N'1000', N'1', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4017', N'D_WereBear', N'VerliesWerb?r', N'44', N'6782', N'50', N'127', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4018', N'D_GoblinMage', N'VerliesGoblinmagier', N'45', N'4452', N'40', N'127', N'0', N'1000', N'14', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4019', N'D_GiantGobleKing', N'Riesiger Goblinmagier', N'45', N'23260', N'40', N'138', N'0', N'1500', N'5', N'1', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4020', N'D_WeakenedOgre', N'Geschw?chter VerliesOger', N'50', N'8084', N'30', N'127', N'0', N'1000', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4021', N'D_KingCall', N'VerliesK?nigcoll', N'51', N'8285', N'50', N'127', N'0', N'1000', N'7', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4022', N'D_Harkan', N'VerliesHarkan', N'52', N'8522', N'40', N'127', N'0', N'1300', N'7', N'7', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4023', N'D_VampireBat', N'VerliesVampirfledermaus', N'53', N'8755', N'50', N'115', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4024', N'D_Prisoner', N'VerliesGefangener', N'54', N'8967', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4025', N'D_Torturer', N'VerliesFolterer', N'55', N'9204', N'30', N'127', N'0', N'1000', N'7', N'7', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4026', N'D_Torturerking', N'Folterk?nig', N'55', N'30682', N'30', N'138', N'0', N'2000', N'7', N'7', N'1', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4027', N'D_Navar', N'VerliesNavar', N'60', N'10408', N'40', N'127', N'0', N'1500', N'1', N'4', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4028', N'D_Pinky', N'VerliesPinky', N'61', N'8156', N'30', N'127', N'0', N'900', N'14', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4029', N'D_Pixy', N'VerliesRiesenpixy', N'62', N'10943', N'40', N'127', N'0', N'900', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4030', N'D_Greenky', N'VerliesGr?nling', N'63', N'11226', N'30', N'127', N'0', N'1000', N'7', N'7', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4031', N'D_Nox', N'VerliesNox', N'64', N'11487', N'40', N'127', N'0', N'1100', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4032', N'D_OrcCaptain', N'VerliesOrkkapit?n', N'65', N'11775', N'40', N'127', N'0', N'1260', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4033', N'D_GiantOrcCaptain', N'Riesiger Orkkapit?n', N'65', N'39249', N'40', N'138', N'0', N'1260', N'1', N'4', N'1', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4034', N'D_CloverTrumpy', N'VerliesKreuztrumpf', N'70', N'13202', N'40', N'127', N'0', N'1450', N'1', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4035', N'D_BlueCloverTrumpy', N'Blauer VerliesKreuztrumpf', N'71', N'13472', N'30', N'127', N'0', N'1500', N'1', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4036', N'D_HeartTrumpy', N'VerliesHerztrumpf', N'72', N'8870', N'40', N'127', N'0', N'1000', N'11', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4037', N'D_SpadeGuardTrumpy', N'VerliesPiktrumpfwache', N'73', N'14055', N'30', N'127', N'0', N'900', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4038', N'D_SpadeTrumpy', N'VerliesPiktrumpf', N'74', N'14369', N'50', N'130', N'0', N'1000', N'12', N'7', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4039', N'D_DiaTrumpy', N'VerliesKarotrumpf', N'75', N'11215', N'40', N'133', N'0', N'1000', N'2', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4040', N'D_Harpy', N'Riesige Harpie', N'75', N'48951', N'40', N'138', N'0', N'1800', N'1', N'7', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4041', N'D_FlameHoneying', N'VerliesFlammenbienchen', N'81', N'16514', N'40', N'138', N'0', N'2500', N'8', N'9', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4042', N'D_LavaVivi', N'VerliesLavavivi', N'82', N'10879', N'40', N'138', N'0', N'2000', N'14', N'1', N'0', N'4', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4043', N'D_CoreGuardianU', N'VerliesKernw?chter', N'83', N'17140', N'40', N'138', N'0', N'1400', N'1', N'4', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4044', N'D_RubyGuardianU', N'VerliesRubinw?chter', N'84', N'17470', N'40', N'138', N'0', N'1200', N'8', N'4', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4045', N'D_CrystalGuardianU', N'VerliesKristallw?chter', N'85', N'17776', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4046', N'D_GuardianMaster', N'VerliesW?chtermeister', N'86', N'60366', N'40', N'138', N'0', N'1500', N'1', N'4', N'1', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4047', N'D_CaimanJunier', N'VerliesJuniorkaiman', N'95', N'8419', N'40', N'138', N'0', N'1300', N'7', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4048', N'D_Rhinoce', N'VerliesRhino', N'96', N'11050', N'40', N'138', N'0', N'1100', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4049', N'D_Kaiman', N'VerliesKaiman', N'97', N'11603', N'40', N'138', N'0', N'1300', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4050', N'D_RhinoceLoad', N'VerliesRhinof?rst', N'98', N'12183', N'40', N'138', N'0', N'1000', N'1', N'6', N'0', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4051', N'D_Raplan', N'VerliesLaplan', N'99', N'12792', N'40', N'138', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4052', N'D_CaimanGiant', N'Riesenkaiman', N'100', N'40296', N'40', N'138', N'0', N'2000', N'7', N'2', N'1', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4053', N'D_MagriteImp', N'VerliesMagriteImp', N'105', N'18857', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4054', N'D_MagriteHoneying', N'VerliesMagriteBienchen', N'106', N'19800', N'40', N'138', N'0', N'1600', N'8', N'9', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4055', N'D_Seidhunter', N'VerliesMagriteSektenanh?nger', N'107', N'20790', N'40', N'138', N'0', N'1400', N'2', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4056', N'D_Seidstar', N'VerliesMagriteSektenprophet', N'108', N'21830', N'40', N'138', N'0', N'1200', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4057', N'D_Seidwarrior', N'VerliesMagriteSektenfanatiker', N'109', N'22921', N'40', N'138', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4058', N'D_Magrite', N'VerliesMagrite', N'110', N'144401', N'40', N'138', N'0', N'2000', N'7', N'1', N'1', N'0', N'0', N'420');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4500', N'P_Orc1', N'Ork des Abgrunds', N'67', N'3700', N'40', N'127', N'0', N'2100', N'1', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4501', N'P_Orc2', N'Ork des Abgrunds', N'66', N'3612', N'40', N'127', N'0', N'2080', N'1', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4502', N'P_Pinky', N'Pinky des Abgrunds', N'65', N'2269', N'40', N'127', N'0', N'800', N'14', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4503', N'P_Orc3', N'Ork des Abgrunds', N'68', N'3790', N'40', N'127', N'0', N'2020', N'1', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4504', N'P_Orc4', N'Ork des Abgrunds', N'69', N'3869', N'50', N'127', N'0', N'2140', N'1', N'7', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4505', N'P_LightingViVi', N'Blitzvivi des Abgrunds', N'55', N'1765', N'50', N'110', N'0', N'1500', N'14', N'1', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4506', N'P_KaraSolider1', N'Karasiansoldat des Abgrunds', N'56', N'2835', N'40', N'127', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4507', N'P_KaraSolider2', N'Karasiansoldat des Abgrunds', N'57', N'2898', N'40', N'127', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4508', N'P_KaraSolider3', N'Karasiansoldat des Abgrunds', N'58', N'2973', N'40', N'127', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4509', N'P_KaraSolider4', N'Karasiansoldat des Abgrunds', N'59', N'3046', N'40', N'127', N'0', N'1000', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4510', N'P_Fighter1M', N'???', N'66', N'3612', N'50', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4511', N'P_Cleric1F', N'???', N'67', N'2467', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4512', N'P_Archer1M', N'???', N'68', N'2889', N'50', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4513', N'P_Mage1F', N'???', N'69', N'2494', N'50', N'127', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4514', N'P_Fighter2F', N'???', N'56', N'2835', N'50', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4515', N'P_Cleric2M', N'???', N'57', N'1967', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4516', N'P_Archer2F', N'???', N'58', N'2267', N'50', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4517', N'P_Mage2M', N'???', N'59', N'1956', N'50', N'127', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4518', N'P_Goblinmage1', N'Goblinmagier des Abgrunds', N'45', N'1336', N'40', N'127', N'0', N'1000', N'14', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4519', N'P_Goblin1', N'Goblin des Abgrunds', N'46', N'2159', N'40', N'127', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4520', N'P_Goblin2', N'Goblin des Abgrunds', N'47', N'2227', N'40', N'127', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4521', N'P_Goblin3', N'Goblin des Abgrunds', N'48', N'2286', N'40', N'127', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4522', N'P_Goblin4', N'Goblin des Abgrunds', N'49', N'2355', N'50', N'127', N'0', N'1000', N'7', N'7', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4523', N'P_Fighter3F', N'???', N'46', N'2159', N'50', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4524', N'P_Cleric3F', N'???', N'47', N'1532', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4525', N'P_Archer3M', N'???', N'48', N'1745', N'50', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4526', N'P_Mage3F', N'???', N'49', N'1503', N'50', N'127', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4527', N'P_Prock', N'Prock des Abgrunds', N'35', N'1127', N'40', N'110', N'0', N'1200', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4528', N'P_Ghost1', N'Geist des Abgrunds', N'36', N'1551', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4529', N'P_Ghost2', N'Geist des Abgrunds', N'37', N'1605', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4530', N'P_Ghost3', N'Geist des Abgrunds', N'38', N'1666', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4531', N'P_Ghost4', N'Geist des Abgrunds', N'39', N'1730', N'40', N'127', N'0', N'1100', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4532', N'P_Fighter4M', N'???', N'36', N'1551', N'50', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4533', N'P_Cleric4F', N'???', N'37', N'1127', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4534', N'P_Archer4F', N'???', N'38', N'1267', N'50', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4535', N'P_Mage4F', N'???', N'39', N'1096', N'50', N'127', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4536', N'P_DiaTrumpy', N'Piktrumpf des Abgrunds', N'75', N'3331', N'40', N'110', N'0', N'1100', N'2', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4537', N'P_SpadeGuardTrumpy1', N'Piktrumpfwache des Abgrunds', N'76', N'3412', N'40', N'127', N'0', N'1100', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4538', N'P_SpadeGuardTrumpy2', N'Piktrumpfwache des Abgrunds', N'77', N'3468', N'40', N'127', N'0', N'1100', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4539', N'P_SpadeGuardTrumpy3', N'Piktrumpfwache des Abgrunds', N'78', N'3532', N'40', N'127', N'0', N'1100', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4540', N'P_SpadeGuardTrumpy4', N'Piktrumpfwache des Abgrunds', N'79', N'3606', N'40', N'127', N'0', N'1100', N'12', N'4', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4541', N'P_Fighter5M', N'???', N'76', N'3412', N'50', N'127', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4542', N'P_Cleric5F', N'???', N'77', N'3468', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4543', N'P_Archer5F', N'???', N'78', N'3532', N'50', N'127', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4544', N'P_Mage5F', N'???', N'79', N'3606', N'50', N'127', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4545', N'P_KidMon', N'Kidmon des Abgrunds', N'85', N'15985', N'40', N'127', N'0', N'1800', N'7', N'9', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4546', N'P_UndeadMiner1', N'Bergarbeiterskelett des Abgrund', N'86', N'16385', N'50', N'127', N'0', N'1400', N'12', N'11', N'0', N'5', N'0', N'350');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4547', N'P_UndeadMiner2', N'Bergarbeiterskelett des Abgrund', N'87', N'16795', N'50', N'127', N'0', N'1500', N'12', N'11', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4548', N'P_UndeadMiner3', N'Bergarbeiterskelett des Abgrund', N'88', N'17215', N'50', N'127', N'0', N'1600', N'12', N'11', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4549', N'P_UndeadMiner4', N'Bergarbeiterskelett des Abgrund', N'89', N'17645', N'50', N'127', N'0', N'1700', N'12', N'11', N'0', N'5', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4550', N'P_Fighter6F', N'???', N'86', N'12800', N'50', N'110', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4551', N'P_Fighter6M', N'???', N'87', N'13120', N'40', N'110', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4552', N'P_Mage6F', N'???', N'88', N'13448', N'50', N'127', N'0', N'1000', N'3', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4553', N'P_Mage6M', N'???', N'89', N'13784', N'50', N'127', N'0', N'1000', N'3', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4554', N'P_LivingTotem', N'Pink Pig des Abgrunds', N'95', N'20463', N'40', N'127', N'0', N'1300', N'20', N'9', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4555', N'P_Raplan1', N'Laplan des Abgrunds', N'96', N'20974', N'50', N'127', N'0', N'1000', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4556', N'P_Raplan2', N'Laplan des Abgrunds', N'97', N'21499', N'50', N'127', N'0', N'1100', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4557', N'P_Raplan3', N'Laplan des Abgrunds', N'98', N'22036', N'50', N'127', N'0', N'1200', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4558', N'P_Raplan4', N'Laplan des Abgrunds', N'99', N'22587', N'50', N'127', N'0', N'1300', N'8', N'9', N'0', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4559', N'P_Fighter7M', N'???', N'96', N'20974', N'40', N'110', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4560', N'P_Cleric7F', N'???', N'97', N'21499', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4561', N'P_Archer7F', N'???', N'98', N'22036', N'50', N'127', N'0', N'1000', N'2', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4562', N'P_Mage7M', N'???', N'99', N'22587', N'50', N'127', N'0', N'1000', N'3', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4563', N'P_PhinoFlie', N'Phina des Abgrunds', N'25', N'714', N'40', N'110', N'0', N'1000', N'14', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4564', N'P_Phino1', N'Phino des Abgrunds', N'26', N'750', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4565', N'P_Phino2', N'Phino des Abgrunds', N'27', N'792', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4566', N'P_Phino3', N'Phino des Abgrunds', N'28', N'843', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4567', N'P_Phino4', N'Phino des Abgrunds', N'29', N'903', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4568', N'P_Fighter8M', N'???', N'26', N'750', N'50', N'115', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4569', N'P_Cleric8F', N'???', N'27', N'792', N'50', N'115', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4570', N'P_Archer8F', N'???', N'28', N'843', N'50', N'115', N'0', N'1000', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'4571', N'P_Mage8F', N'???', N'29', N'903', N'50', N'115', N'0', N'1000', N'3', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5000', N'MINE1', N'Kupfererz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5001', N'MINE2', N'Kupfererz', N'150', N'0', N'0', N'0', N'0', N'1100', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5002', N'MINE3', N'Kupfererz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5003', N'MINE4', N'Silbererz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5004', N'MINE5', N'Silbererz', N'150', N'0', N'0', N'0', N'0', N'1100', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5005', N'MINE6', N'Silbererz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5006', N'MINE7', N'Golderz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5007', N'MINE8', N'Golderz', N'150', N'0', N'0', N'0', N'0', N'1100', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5008', N'MINE9', N'Golderz', N'150', N'0', N'0', N'0', N'0', N'1200', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5009', N'MINE10', N'Erz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5010', N'HERB1', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5011', N'HERB2', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5012', N'HERB3', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5013', N'HERB4', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5014', N'HERB5', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5015', N'HERB6', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5016', N'HERB7', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5017', N'HERB8', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5018', N'HERB9', N'Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5019', N'HERB10', N'Dunkle Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5020', N'WOOD1', N'Holz', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5021', N'WOOD2', N'Holz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5022', N'WOOD3', N'Holz', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5023', N'WOOD4', N'Holz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5024', N'WOOD5', N'Holz', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5025', N'WOOD6', N'Holz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5026', N'WOOD7', N'Holz', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5027', N'WOOD8', N'Holz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5028', N'WOOD9', N'Holz', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5029', N'WOOD10', N'Dunkles Holz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5030', N'KQ_MINE1', N'Mysteri?ses Erz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5031', N'KQ_HEROMINE10', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5032', N'KQ_HEROMINE20', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5033', N'KQ_HEROMINE30', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5034', N'KQ_HEROMINE40', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5035', N'KQ_HEROMINE50', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5036', N'KQ_HEROMINE60', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5037', N'KQ_HEROMINE70', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5038', N'KQ_HEROMINE80', N'Heldenerz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5040', N'IDMINE01', N'Antikes goldenes Material', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5100', N'FLOWER1', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5101', N'FLOWER2', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5102', N'FLOWER3', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5103', N'FLOWER4', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5104', N'FLOWER5', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5105', N'FLOWER6', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5106', N'FLOWER7', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5107', N'FLOWER8', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5108', N'FLOWER9', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5109', N'FLOWER10', N'Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5110', N'STARFISH1', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5111', N'STARFISH2', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5112', N'STARFISH3', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5113', N'STARFISH4', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5114', N'STARFISH5', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5115', N'STARFISH6', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5116', N'STARFISH7', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5117', N'STARFISH8', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5118', N'STARFISH9', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5119', N'STARFISH10', N'Seestern', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5120', N'MUSHROOM1', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5121', N'MUSHROOM2', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5122', N'MUSHROOM3', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5123', N'MUSHROOM4', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5124', N'MUSHROOM5', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5125', N'MUSHROOM6', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5126', N'MUSHROOM7', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5127', N'MUSHROOM8', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5128', N'MUSHROOM9', N'Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5129', N'MUSHROOM10', N'Dunkler Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5130', N'CLAM1', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5131', N'CLAM2', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5132', N'CLAM3', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5133', N'CLAM4', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5134', N'CLAM5', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5135', N'CLAM6', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5136', N'CLAM7', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5137', N'CLAM8', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5138', N'CLAM9', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5139', N'CLAM10', N'Muschel', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5140', N'Q_GB_Mushroom', N'Goblinpilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5141', N'Q_GB_Herb', N'Goblinkr?uter', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5142', N'Q_Waste_Herb', N'?dlandkr?uter', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5143', N'Q_Desert_Mush', N'W?stenpilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5144', N'Q_Qura_Herb', N'Kurahpflanze', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5145', N'Q_Garden_Wood', N'Garden Tree', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5146', N'Wood7_Snow', N'Vereistes Holz', N'150', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5147', N'Herb1_Snow', N'Vereiste Kr?uter', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5148', N'Flower7_Snow', N'Vereiste Blume', N'150', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5149', N'Mushroom1_Snow', N'Vereister Pilz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5150', N'PresentBox_Snow', N'Vereiste Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5300', N'PresentBox1', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5301', N'PresentBox2', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5302', N'PresentBox3', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5303', N'PresentBox4', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5304', N'PresentBox5', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5305', N'PresentBox6', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5306', N'PresentBox7', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5307', N'PresentBox8', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5308', N'PresentBox9', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5309', N'PresentBox10', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5310', N'PresentBox11', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5311', N'PresentBox12', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5312', N'PresentBox13', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5313', N'PresentBox14', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5314', N'PresentBox15', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5500', N'EventPresentBox01', N'Eventschatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5501', N'EventPresentBox02', N'Eventschatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5502', N'EventPresentBox03', N'Eventschatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5503', N'EventPresentBox04', N'Eventschatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5504', N'EventPresentBox05', N'Eventschatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5505', N'EventMINE01', N'Eventmine', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5506', N'IDPresentBox01', N'Alte Kiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5507', N'IDPresentBox02', N'Alte Kiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5508', N'EventPresentBox06', N'Weihnachtsgeschenk', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5601', N'PostCos01', N'Sandbucht  Jagdgebiet', N'0', N'0', N'0', N'0', N'1', N'3600', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5602', N'PostCos02', N'Wald der Gezeiten  Jagdgebiet', N'0', N'0', N'0', N'0', N'1', N'3600', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5603', N'PostCos03', N'Bucht der Gier  Jagdgebiet', N'0', N'0', N'0', N'0', N'1', N'3600', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5604', N'PostRoumenus', N'Informationsschild von Roumenus', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5605', N'PostRemi', N'Informationsschild von Remi', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5606', N'HouseZonePost', N'Hauszone', N'0', N'0', N'0', N'0', N'1', N'3600', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'5800', N'Event_H_MiniDragon', N'Rudolf der Drache', N'150', N'10000000', N'50', N'80', N'0', N'1500', N'7', N'6', N'1', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6000', N'GuildStone', N'Gildenstein', N'0', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6500', N'Metamorphosis_bird', N'Kolibri', N'0', N'0', N'0', N'150', N'0', N'1500', N'0', N'0', N'5', N'17', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6501', N'EntrapFlower', N'Fangpflanze', N'150', N'38302', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6502', N'SlowShot_arrow', N'Langsamer Pfeil', N'150', N'38302', N'90', N'90', N'0', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6503', N'FirePole_sum', N'Flammenwanderer', N'150', N'32758', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6504', N'Skeleton_sum', N'Wiederauferstandener Soldat', N'120', N'7000', N'30', N'150', N'0', N'1200', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'6505', N'Skeleton_sum2', N'Resurrected Soldier', N'125', N'7000', N'30', N'150', N'0', N'1200', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7000', N'Helga', N'H?llentork?nig Helga', N'92', N'554850', N'115', N'400', N'0', N'2000', N'1', N'4', N'2', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7001', N'B_SubHel01', N'H?llenwache', N'91', N'13611', N'115', N'400', N'0', N'1800', N'1', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7002', N'B_SubHel02', N'H?llenwache', N'91', N'12268', N'115', N'400', N'0', N'1800', N'5', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7003', N'B_SubHel03', N'H?llenwache', N'91', N'13789', N'115', N'400', N'0', N'1800', N'2', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7004', N'B_SubHel04', N'H?llenwache', N'91', N'13869', N'115', N'400', N'0', N'1800', N'14', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7005', N'B_SubHel05', N'Kallap', N'90', N'6500', N'50', N'115', N'0', N'1400', N'1', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7006', N'B_SubHel06', N'Kallap', N'90', N'4082', N'50', N'115', N'0', N'1400', N'5', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7007', N'B_SubHel07', N'Kallap', N'90', N'6820', N'50', N'115', N'0', N'1400', N'2', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7008', N'B_SubHel08', N'Kallap', N'90', N'6964', N'50', N'115', N'0', N'1400', N'14', N'1', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7009', N'Rock', N'Gesteinsriese', N'92', N'218184', N'50', N'130', N'0', N'1200', N'8', N'6', N'1', N'4', N'0', N'720');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7010', N'FireRubyGuardianU', N'RubinFeuerw?chter', N'90', N'197904', N'50', N'110', N'0', N'1300', N'8', N'4', N'1', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7011', N'DiamondTree', N'Diamantenbaum', N'90', N'197904', N'40', N'110', N'0', N'1300', N'7', N'6', N'1', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7012', N'FireGolem', N'Feuergolem', N'85', N'109854', N'40', N'110', N'0', N'1200', N'7', N'6', N'1', N'2', N'0', N'2160');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7139', N'LittleMimic', N'Kleiner Mimi', N'95', N'21048', N'40', N'138', N'0', N'500', N'7', N'6', N'4', N'0', N'0', N'420');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7144', N'SuperLivingTotem', N'Super Pink Pig', N'100', N'26864', N'50', N'110', N'0', N'1600', N'20', N'9', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7146', N'TameMimic', N'Stiller Mimi', N'96', N'22100', N'40', N'138', N'0', N'1000', N'7', N'6', N'4', N'0', N'0', N'420');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7147', N'PrinceRaplan', N'Laplanprinz', N'101', N'18720', N'50', N'110', N'0', N'2000', N'8', N'9', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7148', N'PrincessRaplan', N'Laplanprinzessin', N'102', N'18945', N'50', N'110', N'0', N'1600', N'8', N'9', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'7153', N'CrazyMimic', N'Verr?ckter Mimi', N'97', N'82613', N'40', N'138', N'0', N'1000', N'7', N'6', N'1', N'0', N'0', N'420');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8000', N'ID_FlameSpirit', N'VerliesFlammengeist', N'84', N'14290', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8001', N'ID_GiantMagmaton', N'VerliesRiesenmagmaton', N'90', N'49476', N'40', N'138', N'0', N'1800', N'8', N'6', N'4', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8002', N'ID_Kruge', N'VerliesKruger', N'85', N'18309', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8003', N'ID_EarthNerpa', N'VerliesNerpa', N'88', N'15773', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8004', N'ID_EarthCalerben', N'VerliesCaravan', N'83', N'17427', N'40', N'138', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8005', N'ID_FireShella', N'VerliesFeuershella', N'84', N'17862', N'40', N'138', N'0', N'1800', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8006', N'ID_BigMudMan', N'VerliesGolem', N'90', N'49476', N'40', N'138', N'0', N'2400', N'8', N'9', N'4', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8007', N'ID_FireTaitan', N'VerliesFeuertitan', N'90', N'39581', N'40', N'138', N'0', N'2000', N'14', N'9', N'4', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8008', N'ID_Gagoyle', N'VerliesGargoyle', N'84', N'17862', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8009', N'ID_Weasel', N'VerliesWiesel', N'90', N'49476', N'40', N'138', N'0', N'1600', N'8', N'9', N'4', N'3', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8010', N'ID_FandomCornelius', N'Phantom Cornelius', N'95', N'94716', N'50', N'138', N'0', N'2000', N'7', N'6', N'1', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8030', N'ID_NestBat', N'NestFledermaus', N'95', N'75772', N'50', N'110', N'0', N'1800', N'8', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8031', N'ID_NestCaimanJunior', N'NestJuniorkaiman', N'95', N'60619', N'40', N'138', N'0', N'1000', N'7', N'2', N'4', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8032', N'ID_NestBoogy', N'NestSchildie', N'95', N'75772', N'40', N'110', N'0', N'1300', N'8', N'8', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8033', N'ID_NestCaiman', N'NestKaiman', N'96', N'79560', N'40', N'138', N'0', N'1100', N'7', N'2', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8034', N'ID_NestCaimanGiant', N'NestRiesenkaiman', N'96', N'79560', N'40', N'138', N'0', N'1300', N'7', N'6', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8035', N'ID_NestCrab', N'NestKrabbe', N'97', N'83541', N'40', N'110', N'0', N'1800', N'7', N'8', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8036', N'ID_NestMadSlug', N'Verr?ckte NestSchnecke', N'97', N'83541', N'40', N'138', N'0', N'1000', N'8', N'9', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8037', N'ID_NestAlca', N'NestAlki', N'98', N'87717', N'40', N'138', N'0', N'1000', N'7', N'9', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8038', N'ID_NestBaridon', N'NestBaridon', N'98', N'70173', N'50', N'135', N'0', N'1000', N'7', N'9', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8039', N'ID_NestWeasel', N'NestWiesel', N'98', N'87717', N'50', N'135', N'0', N'1000', N'8', N'9', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8040', N'ID_NestGagoyle', N'NestGargoyle', N'98', N'87717', N'50', N'135', N'0', N'1000', N'7', N'6', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8041', N'KingBoogy', N'K?nigsschildie', N'100', N'241776', N'40', N'138', N'0', N'2000', N'8', N'8', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8042', N'BombBoogy01', N'Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8043', N'BombBoogy02', N'Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8044', N'BombBoogy03', N'Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8045', N'BombBoogy04', N'Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8046', N'BoogyGuardian', N'Schildiew?chter', N'98', N'87717', N'50', N'110', N'0', N'1500', N'8', N'6', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8047', N'EmperorCrab', N'K?nigskrabbe', N'100', N'241776', N'55', N'130', N'0', N'4000', N'7', N'6', N'1', N'3', N'0', N'1700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8048', N'ViciousLeviathan', N'B?sartiger Leviathan', N'100', N'402960', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'4500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8049', N'ViciousLeviathan01', N'B?sartiger Leviathan', N'100', N'402960', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'4500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8050', N'ID_NestGuardianEgg', N'Ei des Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8051', N'ID_NestGuardEgg', N'Ei des Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8052', N'ID_NestBuffEgg', N'Ei des Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8053', N'ID_NestGuardian', N'Nestw?chter', N'100', N'96710', N'40', N'138', N'0', N'1500', N'8', N'6', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8054', N'ID_NestGuard', N'Nestwache', N'97', N'83541', N'40', N'110', N'0', N'500', N'8', N'6', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8055', N'ViciousSlime', N'Nestschleim', N'93', N'22910', N'40', N'110', N'0', N'2000', N'8', N'9', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8056', N'BombBoogySum01', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8057', N'BombBoogySum02', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8058', N'BombBoogySum03', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8059', N'BombBoogySum04', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8060', N'LeviathanEggBox', N'Gl?nzendes Ei des Leviathans', N'100', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8061', N'Levi_Door', N'T?r des Leviathans', N'1', N'54', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8100', N'T_Imp', N'Imp des IyzelTurms', N'15', N'365', N'40', N'110', N'0', N'1200', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8101', N'T_GangImp', N'Gangimp des IyzelTurms', N'16', N'420', N'40', N'110', N'0', N'1400', N'7', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8102', N'T_HungryWolf', N'Hungriger Wolf des IyzelTurms', N'17', N'483', N'40', N'110', N'0', N'1200', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8103', N'T_Ratman', N'Rattenmensch des IyzelTurms', N'18', N'556', N'40', N'110', N'0', N'1200', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8104', N'T_Boar', N'Kampfeber des IyzelTurms', N'19', N'639', N'40', N'110', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8105', N'T_Kebing', N'Kebing des IyzelTurms', N'20', N'683', N'40', N'110', N'0', N'1200', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8106', N'T_IronSlime00', N'Eisenschleim des IyzelTurms', N'20', N'683', N'50', N'130', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8107', N'T_DustGolem', N'Staubgolem', N'25', N'7474', N'50', N'130', N'0', N'1200', N'13', N'6', N'1', N'2', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8108', N'T_SkelArcher00', N'Skelettbogensch?tze des IyzelT', N'21', N'558', N'40', N'110', N'0', N'1500', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8109', N'T_Kamaris00', N'Alte Steinstatue des IyzelTurm', N'24', N'740', N'0', N'0', N'0', N'1000', N'7', N'6', N'0', N'4', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8110', N'T_Skeleton', N'Skelett des IyzelTurms', N'26', N'770', N'40', N'110', N'0', N'1500', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8111', N'T_SkelArcher01', N'Skelettbogensch?tze des IyzelT', N'27', N'628', N'40', N'110', N'0', N'1700', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8112', N'T_SkelWarrior', N'Skelettkrieger des IyzelTurms', N'29', N'817', N'40', N'110', N'0', N'1500', N'1', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8113', N'T_SkelArcher02', N'Skelettbogensch?tze des IyzelT', N'28', N'641', N'40', N'110', N'0', N'1700', N'2', N'5', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8114', N'T_ArchMageBook00', N'Erzmagiebuch des IyzelTurms', N'28', N'641', N'40', N'110', N'0', N'2000', N'14', N'1', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8115', N'T_ArchMageBook01', N'Erzmagiebuch des IyzelTurms', N'30', N'673', N'40', N'110', N'0', N'2300', N'14', N'1', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8116', N'T_StoneGolem', N'Steingolem', N'35', N'8928', N'40', N'110', N'0', N'1500', N'13', N'6', N'1', N'2', N'0', N'1400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8117', N'T_FlyingStaff00', N'Fliegender Stab des IyzelTurms', N'31', N'916', N'40', N'110', N'0', N'1500', N'3', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8118', N'T_Kamaris01', N'Kamaris des IyzelTurms', N'32', N'999', N'0', N'0', N'0', N'1000', N'13', N'6', N'0', N'4', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8119', N'T_OldFox', N'Grabfuchs des IyzelTurms', N'34', N'1187', N'40', N'110', N'0', N'1200', N'7', N'10', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8120', N'T_DesertWolf', N'Wilder ?dlandwolf des IyzelTur', N'35', N'1294', N'40', N'110', N'0', N'1500', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8121', N'T_Zombie', N'Zombie des IyzelTrums', N'36', N'1410', N'35', N'105', N'0', N'1200', N'7', N'7', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8122', N'T_Ghost', N'Geist des IyzelTurms', N'38', N'1675', N'40', N'110', N'0', N'1300', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8123', N'T_IceViVi', N'Eisvivi des IyzelTurms', N'39', N'1461', N'40', N'110', N'0', N'1500', N'14', N'1', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8124', N'T_PoisonGolem', N'Giftgolem', N'45', N'8962', N'40', N'110', N'0', N'2000', N'13', N'6', N'1', N'2', N'0', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8125', N'T_Prock', N'Prock des IyzelTurms', N'41', N'1633', N'40', N'110', N'0', N'1400', N'20', N'9', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8126', N'T_Spider00', N'Spinne des IyzelTurms', N'42', N'2103', N'55', N'125', N'0', N'1400', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8127', N'T_KingSpider', N'K?nigsspinne des IyzelTurms', N'43', N'2166', N'55', N'125', N'0', N'1600', N'8', N'10', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8128', N'T_Spider01', N'Spinne des IyzelTurms', N'45', N'2298', N'55', N'125', N'0', N'1600', N'7', N'10', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8129', N'T_KingCall', N'K?nigColl des IyzelTurms', N'47', N'2438', N'40', N'110', N'0', N'1600', N'7', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8130', N'T_Kamaris02', N'D?sterer Kamaris des IyzelTurm', N'48', N'2511', N'0', N'0', N'0', N'1000', N'7', N'6', N'0', N'4', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8132', N'T_FlyingStaff01', N'Fliegender Stab des IyzelTurms', N'51', N'2762', N'40', N'110', N'0', N'1700', N'3', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8133', N'T_IronSlime01', N'Eisenschleim des IyzelTurms', N'52', N'2831', N'40', N'110', N'0', N'2000', N'8', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8134', N'T_IronGolem', N'Eisengolem', N'55', N'15240', N'70', N'130', N'0', N'2500', N'13', N'4', N'2', N'2', N'0', N'1800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8135', N'T_FirePole_sum', N'Feuerl?ufer', N'40', N'2000', N'40', N'90', N'0', N'1000', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8136', N'T_Gate', N'Tor des IyzelTurms', N'0', N'0', N'0', N'0', N'1', N'15000', N'0', N'0', N'5', N'11', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8137', N'T_Gate01', N'Eingang des IyzelTurms', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'11', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8138', N'T_Gate02', N'Ausgang des IyzelTurms', N'0', N'0', N'0', N'0', N'1', N'10000', N'0', N'0', N'5', N'11', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8140', N'Karen', N'Sukkubusk?nigin Karen', N'116', N'8796300', N'50', N'165', N'0', N'1600', N'8', N'9', N'2', N'2', N'0', N'1100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8141', N'Firepamelia', N'Pamelia des roten Feuers', N'115', N'837720', N'50', N'138', N'0', N'1100', N'7', N'9', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8142', N'IncubusRock', N'Inkubus Rock', N'115', N'837720', N'50', N'130', N'0', N'1400', N'4', N'6', N'1', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8143', N'IncubusAgole', N'Inkubus Agole', N'115', N'837720', N'50', N'130', N'0', N'1100', N'3', N'6', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8144', N'KillerHide', N'Killer Hide', N'115', N'837720', N'50', N'138', N'0', N'1300', N'1', N'2', N'1', N'0', N'0', N'350');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8145', N'KillerHideShadow', N'Schatten des Killer Hide', N'115', N'558480', N'50', N'130', N'0', N'1100', N'1', N'1', N'4', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8146', N'Silberk', N'Silberk', N'115', N'837720', N'50', N'140', N'0', N'2200', N'8', N'6', N'1', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8147', N'BloodVampire', N'Blutvampir', N'115', N'837720', N'40', N'138', N'0', N'1300', N'7', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8148', N'HungryZombie', N'Hungriger Zombie', N'113', N'253280', N'35', N'110', N'0', N'1200', N'7', N'7', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8149', N'FogViVi', N'Nebelvivi', N'113', N'253280', N'40', N'110', N'0', N'1500', N'14', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8150', N'FogBat', N'Nebelfledermaus', N'113', N'253280', N'40', N'110', N'0', N'1000', N'8', N'7', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8151', N'VampireViVi', N'Vampirvivi', N'113', N'253280', N'40', N'110', N'0', N'1500', N'14', N'1', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8152', N'FogWeasel', N'Nebelschlange', N'113', N'253280', N'40', N'138', N'0', N'1600', N'8', N'7', N'0', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8153', N'BloodShadow', N'Blutschatten', N'114', N'265950', N'40', N'138', N'0', N'1500', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8154', N'DarkShadow', N'Dunkler Schatten', N'114', N'265950', N'40', N'138', N'0', N'1500', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8155', N'FogNepilim', N'Nebelnepilim', N'114', N'265950', N'40', N'138', N'0', N'2000', N'14', N'1', N'0', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8156', N'FogLence', N'Nebellence', N'114', N'265950', N'40', N'138', N'0', N'2000', N'7', N'0', N'0', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8157', N'DevilHoneying', N'Teufelsbienchen', N'115', N'279240', N'40', N'127', N'0', N'1100', N'7', N'7', N'0', N'16', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8158', N'FireTotem', N'Feuertotem', N'150', N'20000000', N'0', N'0', N'0', N'1100', N'8', N'6', N'5', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8159', N'KarenGate', N'Karens Portal', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8500', N'C_DarkArchon', N'Dunkler Archon', N'69', N'4294', N'55', N'138', N'0', N'1400', N'8', N'1', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8501', N'C_BigDarkArchon', N'Riesiger dunkler Archon', N'69', N'12882', N'55', N'138', N'0', N'3000', N'8', N'1', N'1', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8502', N'C_DarkBat', N'Dunkle Zauberfledermaus', N'69', N'4294', N'55', N'138', N'0', N'1400', N'7', N'7', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8503', N'C_MasicBat', N'Magieresistente Fledermaus', N'69', N'8588', N'55', N'138', N'0', N'2800', N'7', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8504', N'C_DarkMasFlyingStaff', N'Dunkler Magiestab', N'69', N'4294', N'55', N'138', N'0', N'2100', N'3', N'1', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8505', N'C_DefGoblinSwordman', N'GoblinJuwelenw?chter', N'69', N'4294', N'55', N'138', N'0', N'1400', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8506', N'C_MagGoblinSwordman', N'Magieresistenter Goblin', N'69', N'8588', N'55', N'138', N'0', N'2300', N'1', N'7', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8507', N'C_DarkGreenky', N'Dunkler Gr?nling', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'7', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8508', N'C_DarkJewelKeeper', N'Dunkler Juwelenw?chter', N'69', N'4294', N'55', N'138', N'0', N'1400', N'7', N'6', N'0', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8509', N'C_BigJewelKeeper', N'Riesiger Juwelenw?chter', N'69', N'12882', N'55', N'138', N'0', N'3000', N'7', N'6', N'1', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8510', N'C_GoldJewelKeeper', N'Dunkelgoldener Juwelenw?chter', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'6', N'4', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8511', N'C_BigGoldJewelKeeper', N'Riesiger Goldjuwelenw?chter', N'69', N'12882', N'40', N'110', N'0', N'2800', N'7', N'6', N'1', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8512', N'C_DarkKingMushRoom', N'Dunkler Pilz', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'7', N'4', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8513', N'C_KingMushRoom', N'Dunkler K?nigspilz', N'69', N'12882', N'55', N'138', N'0', N'2800', N'7', N'7', N'1', N'1', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8514', N'C_KQ_Kamaris', N'Dunkle Turmwache Kamaris', N'69', N'8588', N'0', N'0', N'0', N'1000', N'7', N'6', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8515', N'C_DarkLegendaryTree', N'Dunkler legend?rer Baum', N'69', N'4294', N'55', N'138', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8516', N'C_DarkLips', N'Dunkle Maulpflanze', N'69', N'3435', N'55', N'138', N'0', N'1400', N'20', N'7', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8517', N'C_BigDarkLips', N'Dunkle Riesenmaulpflanze', N'69', N'10306', N'40', N'110', N'0', N'2800', N'20', N'7', N'1', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8518', N'C_SkinLips1', N'Dickh?utige Maulpflanze', N'69', N'6870', N'55', N'138', N'0', N'2000', N'20', N'7', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8519', N'C_SkinLips2', N'Dickh?utige Maulpflanze', N'69', N'6870', N'40', N'110', N'0', N'2000', N'20', N'7', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8520', N'C_DarkLizardMan', N'Dunkler Echsenmann', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'7', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8521', N'C_DarkComLizardMan', N'Dunkler EchsenmannKommandant', N'69', N'8588', N'55', N'138', N'0', N'2100', N'7', N'7', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8522', N'C_LizardManGuardian', N'Echsenmann', N'69', N'108800', N'55', N'138', N'0', N'2700', N'7', N'7', N'2', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8523', N'C_AssMarlone', N'Attent?terMarlone', N'69', N'12882', N'55', N'138', N'0', N'2500', N'6', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8524', N'C_DarkMarloneArcher', N'Dunkler MarloneBogensch?tze', N'69', N'3435', N'55', N'138', N'0', N'2300', N'2', N'1', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8525', N'C_DarkMine1', N'Verfluchter dunkler Navar', N'150', N'0', N'55', N'125', N'0', N'1400', N'7', N'10', N'5', N'8', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8526', N'C_DarkMine2', N'Dunkles Erz', N'150', N'0', N'55', N'125', N'0', N'1400', N'7', N'10', N'5', N'8', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8527', N'C_DarkNavar', N'Dunkler Navar', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'10', N'4', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8528', N'C_CurseDarkNavar', N'Verfluchter Dunkler Navar', N'69', N'12882', N'55', N'138', N'0', N'2600', N'1', N'10', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8529', N'C_DarkOrc', N'Dunkler Ork', N'69', N'3435', N'55', N'138', N'0', N'1400', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8530', N'C_CurseDarkOrc', N'Verfluchter dunkler Ork', N'69', N'12882', N'40', N'110', N'0', N'2800', N'1', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8531', N'C_FugitiveOrc', N'Orkfl?chtlling', N'69', N'4294', N'55', N'138', N'0', N'2000', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8532', N'C_FugitiveComOrc', N'Kommandant der Orkfl?chtlinge', N'69', N'8588', N'55', N'138', N'0', N'3000', N'1', N'7', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8533', N'C_ChaseOrc', N'Orkj?ger', N'69', N'4294', N'55', N'138', N'0', N'2000', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8534', N'C_ChaseComOrc', N'Kommandant der Orkj?ger', N'69', N'8588', N'55', N'138', N'0', N'2000', N'1', N'7', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8535', N'C_HeavyOrc', N'Gro?ork', N'69', N'118800', N'55', N'138', N'0', N'2000', N'1', N'7', N'2', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8536', N'C_PillarofLight', N'Lichts?ule des Turms', N'69', N'50000', N'55', N'0', N'0', N'1500', N'7', N'10', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8537', N'C_DarkPinky', N'Dunkle Pinky', N'69', N'3435', N'55', N'138', N'0', N'1400', N'14', N'10', N'0', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8538', N'C_DarkPixy', N'Dunkle Pixy', N'69', N'4294', N'40', N'110', N'0', N'1500', N'1', N'7', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8539', N'C_DarkPresentBox01', N'Dunkle Geschenkkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8540', N'C_DarkPresentBox02', N'Dunkle Geschenkkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8541', N'C_IyzenPresentBox01', N'Iyzels kleine Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8542', N'C_IyzenPresentBox02', N'Iyzels kleine Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8543', N'C_IyzenClPresentBox', N'Iyzels KristallGeschenkkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8544', N'C_DarkShylph', N'Dunkle Sylphe', N'69', N'8588', N'55', N'138', N'0', N'2800', N'11', N'7', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8545', N'C_DarkSkelArcher', N'Dunkler SkelettBogensch?tze', N'69', N'6870', N'40', N'127', N'0', N'2800', N'2', N'5', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8546', N'C_DarkOneSkelArcher', N'Dunkler EinSchussEinTreffer ', N'69', N'6870', N'40', N'127', N'0', N'2800', N'2', N'5', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8547', N'C_RangerSkelArcher', N'Dunkler Waldl?ufer', N'69', N'10306', N'40', N'110', N'0', N'3200', N'2', N'5', N'1', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8548', N'C_DarkSoulSkeleton', N'Dunkles Seelenskelett', N'69', N'4294', N'55', N'125', N'0', N'1400', N'2', N'5', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8549', N'C_DarkSkeletonKnight', N'Dunkler Skelettritter', N'69', N'8588', N'55', N'125', N'0', N'1400', N'1', N'5', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8550', N'C_DarkSkeletonCom', N'Dunkler SkelettritterKommandan', N'69', N'8588', N'55', N'125', N'0', N'2800', N'1', N'5', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8551', N'C_DarkSkelWarrior', N'Dunkler Skelettkrieger', N'69', N'4294', N'55', N'125', N'0', N'1400', N'1', N'5', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8552', N'C_DarkSpakeDog', N'Dunkler Funkenhund', N'69', N'6870', N'55', N'138', N'0', N'1400', N'7', N'10', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8553', N'C_BigDarkSpakeDog', N'Riesiger dunkler Funkenhund', N'69', N'10306', N'40', N'110', N'0', N'2800', N'7', N'10', N'1', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8554', N'C_DarkStonie', N'Dunkler Findling', N'69', N'8588', N'55', N'138', N'0', N'1400', N'5', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8555', N'C_DarkStonie', N'Dunkler Findling', N'69', N'8588', N'55', N'138', N'0', N'2800', N'5', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8556', N'C_SkinStonie', N'Harter Findling', N'69', N'8588', N'55', N'138', N'0', N'1400', N'5', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8557', N'C_SkinRedStonie', N'Harter roter Findling', N'69', N'8588', N'55', N'138', N'0', N'2700', N'5', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8558', N'C_TombRaider', N'Juwelensuchender Grabr?uber', N'69', N'4294', N'55', N'138', N'0', N'1400', N'7', N'10', N'0', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8559', N'C_MagTombRaider', N'Magieresistenter Grabr?uber', N'69', N'8588', N'55', N'138', N'0', N'2300', N'7', N'10', N'4', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8560', N'C_DarkVampireBat', N'Dunkle magische Vampirfledermau', N'69', N'4294', N'55', N'138', N'0', N'1400', N'7', N'7', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8561', N'C_MagVampireBat', N'Magieresistente Vampirfledermau', N'69', N'8588', N'55', N'138', N'0', N'2000', N'7', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8562', N'C_DarkZombie', N'Dunkler Zombie', N'69', N'4294', N'55', N'138', N'0', N'2000', N'7', N'7', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8563', N'C_JewelGolem', N'Juwelengolem', N'69', N'129510', N'55', N'138', N'0', N'1800', N'13', N'6', N'2', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8564', N'Iyzel', N'Geist von Iyzel', N'150', N'0', N'55', N'125', N'1', N'2800', N'0', N'0', N'5', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8565', N'C_Gate01', N'Tor des Kristallschlosses', N'150', N'0', N'55', N'125', N'1', N'10000', N'0', N'0', N'5', N'29', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8566', N'DarkCoffin01', N'Dunkler Sarg', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8567', N'DarkCoffin02', N'Dunkler Sarg', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8568', N'DarkCoffin03', N'Dunkler Sarg', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8569', N'C_DarkMine3', N'Dunkles Erz', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'8', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8570', N'C_DarkPresentBox03', N'Dunkle Geschenkkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8571', N'C_Gate02', N'Kristalltor', N'150', N'0', N'0', N'0', N'1', N'10000', N'0', N'0', N'5', N'29', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8572', N'C_Gate03', N'Kristalltor', N'150', N'0', N'0', N'0', N'1', N'10000', N'0', N'0', N'5', N'13', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8573', N'C_DarkBat02', N'Dunkle magische Fledermaus', N'69', N'4294', N'55', N'138', N'0', N'1400', N'7', N'7', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8574', N'C_LizardManIyzel', N'Dunkler Echsenmann', N'69', N'8588', N'55', N'138', N'0', N'1400', N'7', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8575', N'C_DarkLizardManIyzel', N'Dunkler EchsenmannKommandant', N'69', N'8588', N'55', N'138', N'0', N'2500', N'7', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8576', N'C_OrcIyzel', N'Dunkler Ork', N'69', N'3435', N'55', N'138', N'0', N'1400', N'1', N'7', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8577', N'C_CurseOrcIyzel', N'Verfluchter dunkler Ork', N'69', N'12882', N'40', N'110', N'0', N'2800', N'1', N'7', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8578', N'C_SkelArcherIyzel', N'Dunkler SkelettBogensch?tze', N'69', N'6870', N'40', N'127', N'0', N'2800', N'2', N'5', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8579', N'C_OneSkelArcherIyzel', N'Dunkler EinSchussEinTreffer ', N'69', N'6870', N'40', N'127', N'0', N'2800', N'2', N'5', N'4', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8580', N'C_BigSpakeDogIyzel', N'Riesiger dunkler Funkenhund', N'69', N'10306', N'40', N'110', N'0', N'2800', N'14', N'7', N'1', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8581', N'C_PillarofLightIyzel02', N'Lichts?ule des Turms', N'69', N'50000', N'55', N'0', N'0', N'1500', N'7', N'10', N'0', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8582', N'C_PillarofLightIyzel03', N'Lichts?ule des Turms ', N'69', N'50000', N'55', N'0', N'0', N'1500', N'7', N'10', N'0', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8583', N'C_MineBoxIyzel3', N'Iyzels kleine Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8584', N'C_MineBoxIyzel4', N'Iyzels kleine Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8585', N'C_IyzenBox1', N'Iyzels Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8586', N'C_IyzenBox2', N'Iyzels Kristallkiste', N'150', N'0', N'0', N'0', N'0', N'1400', N'0', N'0', N'5', N'9', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8618', N'KebingX', N'Weihnachtskebing', N'20', N'6830', N'40', N'140', N'0', N'1000', N'7', N'9', N'2', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8619', N'Q_Kassandra', N'Kasandra of the Hunters Union ', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8620', N'Q_Keroll', N'Carol of the Hunters Union ', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8621', N'Q_Lino', N'Reno of the Hunters Union ', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8622', N'Q_Polan', N'Fledermausj?ger Polan', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8623', N'Q_Hugues', N'Hugues der J?gerunion', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8624', N'Q_Como', N'Como der J?gerunion', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8625', N'Q_Tiara', N'Tiara der J?gerunion', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8628', N'RhinoceKing', N'Rhinok?nig', N'97', N'16480', N'40', N'138', N'0', N'1320', N'5', N'6', N'1', N'4', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8629', N'MemoryKeeper01', N'Erinnerungsw?chter A', N'97', N'8240', N'40', N'110', N'0', N'1000', N'20', N'1', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8630', N'MemoryKeeper02', N'Erinnerungsw?chter B', N'97', N'8240', N'40', N'127', N'0', N'1000', N'20', N'1', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8631', N'MemoryKeeper03', N'Erinnerungsw?chter C', N'97', N'8240', N'40', N'127', N'0', N'1000', N'20', N'1', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8648', N'HalloWeenPhino01', N'HalloweenPhino', N'25', N'317100', N'40', N'100', N'0', N'800', N'7', N'6', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8649', N'HalloWeenPhino02', N'HalloweenPhino', N'55', N'1280160', N'40', N'100', N'0', N'800', N'7', N'6', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8650', N'HalloWeenPhino03', N'HalloweenPhino', N'100', N'4125408', N'40', N'100', N'0', N'800', N'7', N'6', N'1', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8651', N'Joker', N'Die Joker Reo und Mario', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8652', N'Edge', N'Marionette Edge', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8653', N'Ring', N'Marionette Ling', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8654', N'Job1_Jokerm', N'Schatten %n', N'19', N'6772', N'40', N'115', N'0', N'1000', N'18', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8655', N'Job1_Jokerf', N'Schatten %n', N'19', N'6772', N'40', N'115', N'0', N'1000', N'18', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8701', N'E_PromMaster', N'Abschlussballmeister', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8731', N'LC_Machine', N'Gl?ckskapselMaschine', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8732', N'E_Najla', N'EventNPC Najla', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8733', N'FlameMaster', N'Flammenmeister', N'108', N'89302', N'40', N'125', N'0', N'1500', N'14', N'2', N'1', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8734', N'StoneMaster', N'Steinmeister', N'105', N'77143', N'40', N'138', N'0', N'1000', N'14', N'2', N'1', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8735', N'B_CrackerHumar', N'Malephar', N'110', N'4091373', N'120', N'150', N'0', N'1000', N'1', N'6', N'2', N'5', N'0', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8736', N'B_CrackerGuardian', N'Pirra', N'107', N'3742200', N'50', N'110', N'0', N'1000', N'8', N'9', N'2', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8737', N'B_CrackerLooter', N'Euryale', N'107', N'3742200', N'50', N'110', N'0', N'1000', N'8', N'9', N'2', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8738', N'B_CrackerKeeper', N'Untergangsw?chter', N'105', N'600005', N'40', N'138', N'0', N'1000', N'1', N'6', N'1', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8740', N'KebingX01', N'Weihnachtskebing', N'50', N'53880', N'40', N'140', N'0', N'1000', N'0', N'0', N'2', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8741', N'KebingX02', N'Weihnachtskebing', N'100', N'402960', N'40', N'140', N'0', N'1000', N'0', N'0', N'2', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8841', N'E_ChristmasElf', N'Weihnachtself', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8842', N'E_Grolt', N'Grolt', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8843', N'E_Box_Black01', N'Obsidiantruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8844', N'E_Box_Black02', N'Obsidiantruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8845', N'E_Box_Silver01', N'Diamanttruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8846', N'E_Box_Silver02', N'Diamanttruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8847', N'E_Box_Gold01', N'Goldtruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'8848', N'E_Box_Godl02', N'Goldtruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9024', N'GTI_Totem', N'?? ??', N'150', N'7500', N'0', N'0', N'0', N'1000', N'8', N'11', N'0', N'19', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9025', N'GTI_BoxAll', N'Kiste des Ruhms', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'19', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9026', N'GTI_BoxTeamA', N'Kiste des Ruhms', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'19', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9027', N'GTI_BoxTeamB', N'Kiste des Ruhms', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'19', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9028', N'GT_Slime', N'Schleim', N'2', N'45', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'17', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9029', N'GTI_AngryWolf', N'Ruf zu den Waffen', N'10', N'165', N'40', N'115', N'0', N'1400', N'7', N'2', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9030', N'GTI_WereBear', N'Ruf zu den Waffen', N'20', N'600', N'50', N'110', N'0', N'1100', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9031', N'GTI_KingSpider', N'Ruf zu den Waffen', N'40', N'1600', N'30', N'110', N'0', N'1000', N'8', N'10', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9032', N'GTI_Mandrake', N'Ruf zu den Waffen', N'60', N'2400', N'40', N'138', N'0', N'1000', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9033', N'GTI_FireNix', N'Ruf zu den Waffen', N'80', N'3600', N'40', N'138', N'0', N'1200', N'8', N'6', N'0', N'3', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9034', N'GTI_MiniDragon', N'Ruf zu den Waffen', N'100', N'4500', N'50', N'115', N'0', N'1000', N'14', N'6', N'0', N'1', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9035', N'GTI_TotemSummon', N'?? ??', N'150', N'0', N'0', N'0', N'0', N'1000', N'8', N'11', N'5', N'19', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9036', N'E_JackO01', N'Jackolantern', N'20', N'2049', N'40', N'125', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9037', N'E_JackO02', N'Jackolantern', N'40', N'5946', N'40', N'125', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9038', N'E_JackO03', N'Jackolantern', N'60', N'10407', N'40', N'125', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9039', N'E_JackO04', N'Jackolantern', N'80', N'16182', N'40', N'125', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9040', N'E_JackO05', N'Jackolantern', N'100', N'40296', N'40', N'125', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9041', N'GB_SlotMachine_01_01', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9042', N'GB_SlotMachine_01_02', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9043', N'GB_SlotMachine_01_03', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9044', N'GB_SlotMachine_01_04', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9045', N'GB_SlotMachine_01_05', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9046', N'GB_SlotMachine_01_06', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9047', N'GB_SlotMachine_01_07', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9048', N'GB_SlotMachine_01_08', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9049', N'GB_SlotMachine_01_09', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9050', N'GB_SlotMachine_01_10', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9051', N'GB_SlotMachine_01_11', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9052', N'GB_SlotMachine_01_12', N'10CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9053', N'GB_SlotMachine_02_01', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9054', N'GB_SlotMachine_02_02', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9055', N'GB_SlotMachine_02_03', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9056', N'GB_SlotMachine_02_04', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9057', N'GB_SlotMachine_02_05', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9058', N'GB_SlotMachine_02_06', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9059', N'GB_SlotMachine_02_07', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9060', N'GB_SlotMachine_02_08', N'100CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9061', N'GB_SlotMachine_03_01', N'500CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9062', N'GB_SlotMachine_03_02', N'500CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9063', N'GB_SlotMachine_03_03', N'500CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9064', N'GB_SlotMachine_03_04', N'500CoinsAutomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'26', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9065', N'GB_CoinStore', N'LuckyHouseCoinsLaden', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9067', N'LC_MachineRed', N'Roter Gl?ckskapselautomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9068', N'LC_MachineBlue', N'Blauer Gl?ckskapselautomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9069', N'GB_CoinMachine', N'CoinsWechsler', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9070', N'GB_Touter', N'LuckyHouseF?hrer', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9071', N'GB_MasterRoan', N'GrubenBoss Roan', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9072', N'GB_Waitress', N'Kellnerin', N'150', N'100', N'33', N'127', N'0', N'1000', N'0', N'0', N'0', N'24', N'1', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9073', N'GB_Dealer', N'Croupier', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'24', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9074', N'GB_Game_Dice01', N'W?rfelspiel 1', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9075', N'GB_Game_Dice02', N'W?rfelspiel 2', N'0', N'0', N'0', N'139', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9076', N'GB_Game_Dice03', N'W?rfelspiel 3', N'0', N'0', N'0', N'139', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9077', N'GB_Game_Dice04', N'W?rfelspiel 4', N'0', N'0', N'0', N'152', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9078', N'GB_Game_Dice05', N'W?rfelspiel 5', N'0', N'0', N'0', N'152', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9079', N'GB_Game_Dice06', N'W?rfelspiel 6', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9080', N'GB_Game_Dice07', N'W?rfelspiel 7', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9081', N'GB_Game_Dice08', N'W?rfelspiel 8', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9082', N'GB_Game_Dice09', N'W?rfelspiel 9', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9083', N'GB_Game_Dice10', N'W?rfelspiel 10', N'0', N'0', N'0', N'139', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9084', N'GB_Game_Dice11', N'W?rfelspiel 11', N'0', N'0', N'0', N'139', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9085', N'GB_Game_Dice12', N'W?rfelspiel 12', N'0', N'0', N'0', N'165', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9086', N'GB_Game_Dice13', N'W?rfelspiel 13', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9087', N'GB_Game_Dice14', N'W?rfelspiel 14', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9088', N'GB_Game_Dice15', N'W?rfelspiel 15', N'0', N'0', N'0', N'165', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9089', N'GB_Game_Dice16', N'W?rfelspiel 16', N'0', N'0', N'0', N'127', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9090', N'GB_Game_Dice17', N'W?rfelspiel 17', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9091', N'GB_Game_Dice18', N'W?rfelspiel 18', N'0', N'0', N'0', N'110', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9092', N'GB_Game_Dice19', N'W?rfelspiel 19', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9093', N'GB_Game_Dice20', N'W?rfelspiel 20', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9094', N'GB_Game_Dice21', N'W?rfelspiel 21', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9095', N'GB_Game_Dice22', N'W?rfelspiel 22', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9096', N'GB_Game_Dice23', N'W?rfelspiel 23', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9097', N'GB_Game_Dice24', N'W?rfelspiel 24', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9098', N'GB_Game_Dice25', N'W?rfelspiel 25', N'0', N'0', N'0', N'105', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9099', N'GB_Game_Dice26', N'W?rfelspiel 26', N'0', N'0', N'0', N'115', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9100', N'GB_Game_Dice27', N'W?rfelspiel 27', N'0', N'0', N'0', N'110', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9101', N'GB_Game_Dice28', N'W?rfelspiel 28', N'0', N'0', N'0', N'110', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9102', N'GB_Game_Dice29', N'W?rfelspiel 29', N'0', N'0', N'0', N'138', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9103', N'GB_Game_Dice30', N'W?rfelspiel 30', N'0', N'0', N'0', N'138', N'1', N'1000', N'0', N'0', N'5', N'23', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9104', N'GB_Store', N'LuckyHouseSafe', N'0', N'0', N'0', N'115', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9105', N'P_Seidhunter', N'Sektenanh?nger des Abgrunds', N'105', N'16028', N'40', N'138', N'0', N'1500', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9106', N'P_Seidwarrior1', N'Sektenfanatiker des Abgrunds', N'106', N'16830', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9107', N'P_Seidwarrior2', N'Sektenfanatiker des Abgrunds', N'107', N'17672', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9108', N'P_Seidwarrior3', N'Sektenfanatiker des Abgrunds', N'108', N'18556', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9109', N'P_Seidwarrior4', N'Sektenfanatiker des Abgrunds', N'109', N'19483', N'40', N'138', N'0', N'1300', N'1', N'1', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9110', N'P_Fighter9M', N'???', N'106', N'16830', N'40', N'110', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9111', N'P_Cleric9F', N'???', N'107', N'17672', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9112', N'P_Archer9F', N'???', N'108', N'18556', N'50', N'127', N'0', N'1000', N'2', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9113', N'P_Mage9M', N'???', N'109', N'19483', N'50', N'127', N'0', N'1000', N'3', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9114', N'LevelGuard100', N'Schlachtfeldwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9115', N'E_Snowman01', N'Mr. Frost', N'20', N'683', N'40', N'125', N'0', N'1300', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9116', N'E_Snowman02', N'Mr. Frost', N'40', N'1982', N'40', N'125', N'0', N'1300', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9117', N'E_Snowman03', N'Mr. Frost', N'60', N'3469', N'40', N'125', N'0', N'1300', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9118', N'E_Snowman04', N'Mr. Frost', N'80', N'5394', N'40', N'125', N'0', N'1300', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9119', N'E_Snowman05', N'Mr. Frost', N'100', N'13432', N'40', N'125', N'0', N'1300', N'7', N'1', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9120', N'Gate_Lab', N'Laboreingang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9121', N'Lab_Prison', N'Laborgef?ngnis', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9122', N'Lab_Child_Melt', N'Melt', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9123', N'Lab_Child_Balus', N'Balus', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9124', N'Lab_Child_Chechale', N'Cesare', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9125', N'Lab_Child_Fred', N'Fred', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9126', N'Lab_25', N'Subjekt des Experiments #25', N'110', N'525096', N'33', N'139', N'0', N'1000', N'7', N'6', N'2', N'5', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9127', N'Lab_20', N'Subjekt des Experiments #20', N'108', N'476280', N'33', N'139', N'0', N'1500', N'7', N'2', N'2', N'5', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9128', N'Lab_19', N'Subjekt des Experiments #19', N'106', N'259200', N'33', N'152', N'0', N'1200', N'7', N'9', N'1', N'5', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9129', N'Lab_23', N'Subjekt des Experiments #23', N'108', N'285768', N'33', N'152', N'0', N'1000', N'1', N'6', N'1', N'5', N'0', N'900');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9130', N'Lab_Guardian01', N'Mutierte Wache #1', N'103', N'89563', N'33', N'127', N'0', N'1000', N'1', N'2', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9131', N'Lab_Guardian02', N'Mutierte Wache #2', N'106', N'103680', N'33', N'127', N'0', N'1000', N'1', N'2', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9132', N'Lab_Watchman01', N'Mutierter W?chter #1', N'103', N'89563', N'33', N'127', N'0', N'1000', N'7', N'6', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9133', N'Lab_Watchman02', N'Mutierter W?chter #2', N'106', N'103680', N'33', N'127', N'0', N'1000', N'7', N'6', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9134', N'Lab_Battle01', N'Kampfsubjekt #1', N'105', N'98744', N'33', N'139', N'0', N'1000', N'4', N'8', N'4', N'5', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9135', N'Lab_Battle02', N'Kampfsubjekt #2', N'108', N'114307', N'33', N'139', N'0', N'1000', N'4', N'8', N'4', N'5', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9136', N'Lab_Snake_In', N'Mutierte Schlange', N'108', N'114307', N'33', N'165', N'0', N'1000', N'7', N'7', N'4', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9137', N'Lab_Ghost01', N'Laborgeist ', N'105', N'98744', N'33', N'127', N'0', N'1000', N'4', N'0', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9138', N'Lab_Ghost02', N'Laborgeist ', N'108', N'114307', N'33', N'127', N'0', N'1000', N'5', N'0', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9139', N'Lab_Snake_Out', N'Mutierte Schlange', N'103', N'15549', N'33', N'165', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9140', N'Lab_Unfinished', N'Unvollst?ndiges Subjekt', N'103', N'15549', N'33', N'127', N'0', N'1000', N'1', N'7', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9141', N'Lab_Box', N'Kiste mit Experimentwerkzeugen', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9142', N'Lab_Slime', N'Experimentschleim', N'105', N'98744', N'40', N'110', N'0', N'1500', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9143', N'Lab_Gate', N'Labortor ', N'0', N'0', N'0', N'0', N'1', N'15000', N'0', N'0', N'5', N'6', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9144', N'BH_Helga', N'Marionette Helga', N'100', N'2511784', N'115', N'400', N'0', N'2000', N'1', N'4', N'2', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9145', N'BH_HelgaBall', N'Bijous Ball', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'24', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9146', N'BH_KaraTemplerAC', N'KarasianIllusionist', N'98', N'219292', N'115', N'400', N'0', N'1200', N'8', N'1', N'1', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9147', N'BH_KaraTemplerMR', N'Schwarzer KarasianMagier', N'98', N'219292', N'115', N'400', N'0', N'1200', N'14', N'1', N'1', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9148', N'BH_Humar', N'Malephar, dunkler Schatten', N'110', N'4091373', N'120', N'200', N'0', N'1000', N'1', N'6', N'2', N'5', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9149', N'BH_Looter', N'Blutsauger der Dunkelheit', N'107', N'3742200', N'50', N'110', N'0', N'1000', N'8', N'9', N'2', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9150', N'BH_Guardian', N'W?chter der Dunkelheit', N'107', N'3742200', N'50', N'110', N'0', N'1000', N'8', N'6', N'2', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9151', N'BH_Helga_O', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9152', N'BH_Helga_O_02', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9153', N'BH_Helga_X', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9154', N'BH_Humar_O', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9155', N'BH_Humar_O_02', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9156', N'BH_Humar_O_03', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9157', N'BH_Humar_O_04', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9158', N'BH_Humar_X', N'Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9159', N'SecretFig', N'Krieger der Geheimgesellschaft', N'29', N'1282', N'40', N'130', N'0', N'1500', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9160', N'SecretMag', N'Magier der Geheimgesellschaft', N'31', N'916', N'50', N'127', N'0', N'1000', N'3', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9161', N'SecretArc', N'J?ger der Geheimgesellschaft', N'34', N'1589', N'50', N'127', N'0', N'1000', N'2', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9162', N'SecretChiefSub', N'Stellvertretender Anf?hrer', N'35', N'2691', N'40', N'130', N'0', N'1500', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9163', N'SecretChief', N'Anf?hrer der Geheimgesellschaft', N'36', N'8928', N'40', N'130', N'0', N'1500', N'1', N'4', N'1', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9165', N'Psy_Pergy', N'Wandernder Seelenpergy', N'113', N'27861', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9166', N'Psy_LeoPard', N'Wandernder Seelenleopard', N'113', N'27861', N'40', N'127', N'0', N'1000', N'7', N'1', N'0', N'5', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9167', N'Psy_Wraith', N'Gespenst', N'114', N'29255', N'40', N'130', N'0', N'1200', N'7', N'0', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9168', N'Psy_Mist', N'Nebel', N'115', N'30716', N'40', N'130', N'0', N'1300', N'7', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9169', N'Psy_PsykenDog', N'Psykens Hund', N'115', N'83772', N'40', N'130', N'0', N'1200', N'7', N'1', N'4', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9170', N'Psy_Psyken', N'Psyken', N'115', N'184298', N'50', N'140', N'0', N'1500', N'7', N'1', N'1', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9171', N'Chimera', N'Chimera', N'115', N'8377200', N'50', N'170', N'0', N'1500', N'8', N'2', N'2', N'5', N'0', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9172', N'Psy_Spider', N'Blutspinne', N'113', N'27861', N'40', N'130', N'0', N'1300', N'7', N'10', N'0', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9173', N'IncubusG', N'Grauer Inkubus', N'114', N'29255', N'40', N'133', N'0', N'1200', N'7', N'1', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9174', N'Psy_Statue', N'Lebende Statue der Anwesenwache', N'115', N'30716', N'40', N'130', N'0', N'1500', N'1', N'4', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9175', N'Salare', N'Salare', N'115', N'816960', N'40', N'140', N'0', N'1000', N'4', N'1', N'2', N'0', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9176', N'DBead', N'Dunkle Perle', N'115', N'2000', N'40', N'100', N'0', N'1000', N'0', N'0', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9177', N'Eglack', N'Eglack', N'115', N'1116960', N'40', N'140', N'0', N'1000', N'4', N'6', N'2', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9178', N'EglackMad', N'Eglack', N'115', N'1116960', N'40', N'140', N'0', N'1000', N'4', N'6', N'2', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9179', N'SalareMan', N'Salare', N'115', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9180', N'EglackMan', N'Eglack', N'115', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9181', N'DStone', N'Stein der Dunkelheit', N'115', N'5000', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9182', N'Barrier01', N'Tor', N'115', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9183', N'Barrier02', N'Tor', N'115', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9184', N'EStone01', N'EntstehungsTotem A', N'115', N'10000', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9185', N'EStone02', N'EntstehungsTotem B', N'115', N'10000', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9186', N'EStone03', N'EntstehungsTotem C', N'115', N'10000', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9187', N'RStone', N'Beschw?rerZauberstein', N'115', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9188', N'AdlF_Loussier', N'Loussier', N'115', N'279240', N'40', N'140', N'1', N'1000', N'0', N'0', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9189', N'AdlF_Marlene', N'Marlene ', N'115', N'279240', N'40', N'140', N'0', N'1000', N'0', N'0', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9190', N'AdlF_Karen', N'Sukkubusk?nigin Karen', N'120', N'1412000', N'50', N'133', N'0', N'1600', N'8', N'11', N'2', N'2', N'0', N'1100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9191', N'Gate_AdlF', N'Tor zum Brennenden Adelia', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9192', N'AdlF_GuardAlber', N'AdeliaWache Alber', N'115', N'558480', N'50', N'130', N'0', N'1000', N'1', N'1', N'1', N'0', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9193', N'AdlF_GuardEstelle', N'AdeliaWache Estelle', N'115', N'558480', N'50', N'130', N'0', N'1000', N'1', N'1', N'1', N'0', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9194', N'AdlF_Fspearman', N'Verdorbener Speerk?mpfer', N'113', N'126640', N'30', N'127', N'0', N'450', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9195', N'AdlF_Franger', N'Verdorbener Waldl?ufer', N'113', N'126640', N'36', N'130', N'0', N'400', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9196', N'AdlF_Fknuckleman', N'Verdorbener K?mpfer', N'113', N'126640', N'33', N'130', N'0', N'500', N'7', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9197', N'AdlF_Dlich', N'Dunkler Lich', N'114', N'265950', N'40', N'115', N'0', N'1300', N'14', N'2', N'4', N'5', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9198', N'MineGate', N'Ausgang', N'150', N'0', N'0', N'0', N'1', N'10000', N'0', N'0', N'5', N'20', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9199', N'MineDigger', N'Sprengstoffverk?ufer', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9200', N'MineHoneying', N'MinenBienchen', N'150', N'166', N'40', N'110', N'0', N'1000', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9201', N'MineSlime', N'MinenSchleim', N'150', N'38', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9202', N'MinePinky', N'MinenPinky', N'150', N'2746', N'30', N'110', N'0', N'1200', N'14', N'10', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9203', N'MineKebing', N'MinenKebing', N'150', N'646', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9204', N'MineBoogy', N'MinenSchildie', N'150', N'268', N'30', N'95', N'0', N'1000', N'14', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9205', N'MineCrab', N'MinenKrabbe', N'150', N'217', N'20', N'105', N'0', N'1000', N'7', N'8', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9206', N'MineMonkey_Boss', N'BeobachterAffe', N'150', N'510', N'50', N'150', N'0', N'2000', N'8', N'2', N'2', N'3', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9207', N'MineS_Kebing', N'BeobachterKebing', N'150', N'5712', N'40', N'125', N'0', N'2000', N'7', N'9', N'1', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9208', N'MineKingBoogy', N'BegleiteragentSchildie', N'150', N'53217', N'40', N'138', N'0', N'2000', N'8', N'8', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9209', N'MineRock', N'BegleiteragentRock', N'150', N'714', N'40', N'110', N'0', N'1400', N'14', N'11', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9210', N'MineEmperorCrab', N'VerwalterKrabbe', N'119', N'53217', N'55', N'130', N'0', N'2000', N'7', N'6', N'1', N'3', N'0', N'1700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9211', N'MineStoneGolem', N'SupervisorSteingolem', N'150', N'15708', N'40', N'110', N'0', N'1500', N'13', N'6', N'1', N'2', N'0', N'1400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9212', N'MineFireGolem', N'SupervisorFeuergolem', N'150', N'12376', N'40', N'110', N'0', N'1000', N'13', N'6', N'4', N'2', N'0', N'1800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9213', N'MineIronGolem', N'KommandantEisengolem', N'150', N'39746', N'70', N'130', N'0', N'2500', N'13', N'6', N'2', N'2', N'0', N'1800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9214', N'MineIceViVi', N'VernichterEisvivi', N'150', N'757', N'50', N'115', N'0', N'1000', N'14', N'1', N'0', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9215', N'MineFireViVi', N'VernichterFeuervivi', N'150', N'1751', N'30', N'110', N'0', N'1200', N'14', N'1', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9216', N'MineMelee', N'Antipersonenmine', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'12', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9217', N'MineRange', N'Zerst?rungsmine', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'12', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9218', N'MineIce', N'RhigosisMine', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'12', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9219', N'MineStun', N'Blitzmine', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'12', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9220', N'MineCar', N'GolderzWagen', N'150', N'100', N'40', N'110', N'0', N'1000', N'0', N'0', N'0', N'3', N'0', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9221', N'MineFence', N'Holzzaun', N'150', N'100', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'3', N'1', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9222', N'MineDigger01', N'Goldminenarbeiter', N'0', N'100', N'0', N'0', N'0', N'1200', N'0', N'0', N'0', N'18', N'1', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9223', N'Q_W_Chapman', N'Chapman', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9224', N'Q_W_Jacks', N'Jax', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9225', N'E_Box_Pirate', N'PiratenSchatztruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9226', N'E_Drake', N'K?ptn Drake', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9227', N'E_McGee', N'Erster Offizier McGee', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9228', N'E_Bob', N'Bob Skellyton', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9229', N'AdlSoulAngela', N'Heilerin Angela', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9230', N'AdlSkillEdwina', N'Lehrmeister Edwin', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9231', N'AdlSmithAlexia', N'Schmiedin Alexia', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9232', N'AdlStoreKaruha', N'Lagerverwalterin Karuha', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9233', N'QM_Bunis', N'Gildenmeister Bunis', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9234', N'AdlSpeGuiltian', N'Stadtmeister Guiltian', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9235', N'AdlGuardNell', N'Wache Nell', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9236', N'AdlMarlene', N'Marlene', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9237', N'AdlLoussier', N'ItemH?ndlerin Loussier', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9238', N'AdlAertsina', N'Waffentitelh?ndlerin Aertsina', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9239', N'DApe', N'Dunkler Affe', N'111', N'22973', N'40', N'125', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9240', N'BSpikeHorn', N'Schwarzes Zackenhorn', N'111', N'22973', N'40', N'135', N'0', N'600', N'8', N'4', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9241', N'FSpearman', N'Verdorbener Speerk?mpfer', N'111', N'22973', N'30', N'127', N'0', N'450', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9242', N'FRanger', N'Verdorbener Waldl?ufer', N'111', N'22973', N'36', N'130', N'0', N'400', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9243', N'FKnuckleman', N'Verdorbener K?mpfer', N'111', N'22973', N'33', N'130', N'0', N'500', N'7', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9244', N'FKnight', N'Verdorbener Ritter', N'112', N'72366', N'33', N'130', N'0', N'450', N'1', N'2', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9245', N'Tornado', N'Tornado', N'112', N'24122', N'40', N'125', N'0', N'1100', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9246', N'GTornado', N'Gro?er Tornado', N'112', N'24122', N'40', N'125', N'0', N'1400', N'7', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9247', N'DNepilim', N'Dunkler Nepilim', N'113', N'75984', N'40', N'125', N'0', N'1700', N'14', N'1', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9248', N'SElfFig', N'Diebischer Schattenelf', N'113', N'25328', N'36', N'135', N'0', N'400', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9249', N'SElfMag', N'Schattenelfenmagier', N'113', N'25328', N'33', N'130', N'0', N'400', N'3', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9250', N'DLich', N'Dunkler Lich', N'115', N'83772', N'40', N'115', N'0', N'1300', N'14', N'2', N'4', N'5', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9251', N'WApe', N'Wilder Affe', N'112', N'24122', N'40', N'125', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9252', N'WLeoPard', N'Wilder Leopard', N'112', N'24122', N'40', N'125', N'0', N'1200', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9253', N'FElfCle', N'Verdorbener Elfenpriester', N'115', N'27924', N'30', N'127', N'0', N'500', N'13', N'4', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9254', N'FElfArc', N'Verdorbener Elfenj?ger', N'115', N'27924', N'36', N'130', N'0', N'450', N'2', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9255', N'FElfMag', N'Verdorbener Elfenmagier', N'115', N'27924', N'33', N'130', N'0', N'450', N'14', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9256', N'FElfFig', N'Verdorbener Elfendieb', N'114', N'26595', N'36', N'135', N'0', N'400', N'1', N'1', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9257', N'FElfSage', N'Verdorbener Elfenweiser', N'115', N'83772', N'30', N'127', N'0', N'500', N'2', N'1', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9258', N'Q_Rourke', N'Luke von der J?gerunion', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9259', N'Q_Joanna', N'Joanna von der J?gerunion', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9260', N'Q_Huey', N'Huey von der J?gerunion', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9261', N'Q_Dalian', N'Gefangener Darian', N'150', N'0', N'0', N'0', N'1', N'400', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9262', N'AdlLantesUp', N'Tierb?ndigerin Ani', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9263', N'Claude', N'Claude', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9264', N'AdlLantesDown', N'Tierb?ndigerin Ranthis', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9265', N'DarkFog', N'Dunkler Nebel', N'115', N'83772', N'50', N'110', N'0', N'2000', N'8', N'0', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9266', N'FireLich', N'Feuerlich', N'114', N'26595', N'40', N'127', N'0', N'1000', N'14', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9267', N'IceLich', N'Eislich', N'114', N'26595', N'40', N'127', N'0', N'1000', N'14', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9268', N'MultiProtect', N'Schutz des Heiligen', N'115', N'5000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9269', N'P_Psy_Statue1', N'Lebende Statue des Abgrunds', N'111', N'27567', N'40', N'130', N'0', N'1500', N'1', N'6', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9270', N'P_Psy_Statue2', N'Lebende Statue des Abgrunds', N'112', N'28946', N'40', N'130', N'0', N'1500', N'1', N'6', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9271', N'P_Psy_Mist1', N'Nebel des Abgrunds', N'113', N'30394', N'40', N'130', N'0', N'1300', N'7', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9272', N'P_Psy_Mist2', N'Nebel des Abgrunds', N'114', N'31914', N'40', N'130', N'0', N'1300', N'7', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9273', N'P_Psy_Mist3', N'Nebel des Abgrunds', N'115', N'33509', N'40', N'130', N'0', N'1300', N'7', N'2', N'0', N'5', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9274', N'P_Fighter10M', N'???', N'114', N'31914', N'40', N'110', N'0', N'1000', N'1', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9275', N'P_Cleric10F', N'???', N'114', N'31914', N'50', N'127', N'0', N'1000', N'5', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9276', N'P_Archer10F', N'???', N'115', N'27924', N'50', N'127', N'0', N'1000', N'2', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9277', N'P_Mage10M', N'???', N'115', N'27924', N'50', N'127', N'0', N'1000', N'3', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9278', N'LevelGuardH8', N'Schlachtfeldwache', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9279', N'SnowSlime01', N'Weihnachtsschleim', N'25', N'317100', N'50', N'100', N'0', N'2000', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9280', N'SnowSlime02', N'Weihnachtsschleim', N'55', N'1280160', N'50', N'100', N'0', N'2000', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9281', N'SnowSlime03', N'Weihnachtsschleim', N'100', N'4125408', N'50', N'100', N'0', N'2000', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9282', N'XmasWorze', N'Berny der Elf', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9283', N'DT_StancherAiri', N'Versiegelungszauberin Iry', N'80', N'75516', N'50', N'130', N'0', N'1000', N'1', N'1', N'4', N'25', N'2', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9284', N'DT_StancherGuardian01', N'W?chter der Versiegelungszauber', N'75', N'69020', N'50', N'130', N'0', N'1000', N'1', N'1', N'4', N'25', N'2', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9285', N'DT_StancherGuardian02', N'W?chter der Versiegelungszauber', N'75', N'69020', N'50', N'130', N'0', N'1000', N'1', N'1', N'4', N'25', N'2', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9286', N'DT_StancherGuardian03', N'W?chter der Versiegelungszauber', N'75', N'69020', N'50', N'130', N'0', N'1000', N'1', N'1', N'4', N'25', N'2', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9287', N'DT_RadionOre', N'Unidentifizierter Schatz', N'150', N'17650000', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9288', N'DT_EntranceGate', N'Gebiet des Teufelsdoms', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9289', N'DT_ExitGate', N'Ausgangstor ', N'0', N'0', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9290', N'DT_Devildom', N'Soldat des Teufelsdoms', N'73', N'32977', N'90', N'180', N'0', N'800', N'4', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9291', N'DT_FDevildom', N'Hitzesoldat des Teufelsdoms', N'75', N'69020', N'90', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9292', N'DT_IDevildom', N'K?ltesoldat des Teufelsdoms', N'75', N'69020', N'90', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9293', N'DT_SDevildom', N'Sturmsoldat des Teufelsdoms', N'75', N'69020', N'90', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9294', N'DT_TDevildom', N'Blitzsoldat des Teufelsdoms', N'75', N'69020', N'90', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9295', N'DT_FFocalor', N'Focalor der Hitze', N'80', N'302064', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9296', N'DT_IFocalor', N'Focalor der K?lte', N'80', N'302064', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9297', N'DT_SFocalor', N'Focalor des Sturms', N'80', N'302064', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9298', N'DT_TFocalor', N'Focalor der Blitze', N'80', N'302064', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9299', N'DT_S_FDHoneying', N'Teufelsbienchen der Hitze', N'79', N'4320', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9300', N'DT_S_IDHoneying', N'Teufelsbienchen der K?lte', N'79', N'4320', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9301', N'DT_S_SDHoneying', N'Teufelsbienchen des Sturms', N'79', N'4320', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9302', N'DT_S_TDHoneying', N'Teufelsbienchen des Blitzes', N'79', N'4320', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9303', N'DT_FFocalor_C', N'Focalor der Hitze', N'78', N'147784', N'90', N'180', N'0', N'1000', N'7', N'1', N'1', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9304', N'DT_IFocalor_C', N'Focalor der K?lte', N'78', N'147784', N'90', N'180', N'0', N'1000', N'7', N'1', N'1', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9305', N'DT_SFocalor_C', N'Focalor des Sturms', N'78', N'147784', N'90', N'180', N'0', N'1000', N'7', N'1', N'1', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9306', N'DT_TFocalor_C', N'Focalor der Blitze', N'78', N'147784', N'90', N'180', N'0', N'1000', N'7', N'1', N'1', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9307', N'DT_S_FDHoneying_C', N'Teufelsbienchen der Hitze', N'77', N'2064', N'40', N'80', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9308', N'DT_S_IDHoneying_C', N'Teufelsbienchen der K?lte', N'77', N'2064', N'40', N'80', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9309', N'DT_S_SDHoneying_C', N'Teufelsbienchen des Sturms', N'77', N'2064', N'40', N'80', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9310', N'DT_S_TDHoneying_C', N'Teufelsbienchen der Blitze', N'77', N'2064', N'40', N'80', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9311', N'T_DT_S_FDHoneying', N'Teufelsbienchen der Hitzefalle', N'80', N'37758', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9312', N'T_DT_S_IDHoneying', N'Teufelsbienchen der K?ltefalle', N'80', N'37758', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9313', N'T_DT_S_SDHoneying', N'Teufelsbienchen der Sturmfalle', N'80', N'37758', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9314', N'T_DT_S_TDHoneying', N'Teufelsbienchen der Blitzfalle', N'80', N'37758', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9315', N'DT_FDoor', N'T?r der Hitze', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9316', N'DT_IDoor', N'T?r der K?lte', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9317', N'DT_NDoor', N'T?r des Sturms', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9318', N'DT_TDoor', N'T?r der Blitze', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9319', N'WarBL_Foras', N'Foras Stamm', N'40', N'14865', N'50', N'100', N'0', N'1000', N'0', N'1', N'0', N'25', N'1', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9320', N'WarBL_ForasChief', N' Foras H?uptling', N'40', N'29730', N'50', N'100', N'0', N'1000', N'0', N'1', N'4', N'25', N'1', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9321', N'WarBL_Devildom', N'Teufelskrieger', N'45', N'17235', N'55', N'110', N'0', N'1000', N'4', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9322', N'WarBL_ICitrie', N'Eis Citra', N'47', N'146280', N'85', N'170', N'0', N'1000', N'8', N'10', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9323', N'WarBL_SCitrie', N'Sturm Citra', N'50', N'161640', N'85', N'170', N'0', N'1000', N'8', N'9', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9324', N'WarBL_IMurumuru', N'Eis Murumuru ', N'45', N'2298', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9325', N'WarBL_SMurumuru', N'Sturm Murumuru ', N'45', N'2298', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9326', N'WarBL_EntranceGate', N'Teufelsmine', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9327', N'WarBL_Door1', N'T?r 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9328', N'WarBL_Door2', N'T?r 2', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9329', N'WarBL_Tornado', N'Tornado', N'40', N'19820', N'40', N'80', N'0', N'1000', N'7', N'1', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9350', N'ArkGuard', N'W?chter der Arkroute', N'116', N'32178', N'50', N'140', N'0', N'1000', N'5', N'4', N'0', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9351', N'ArkNovice', N'Lehrling der Arkroute', N'116', N'32178', N'50', N'140', N'0', N'1000', N'5', N'1', N'0', N'31', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9352', N'ArkArch', N'Architekt der Arkroute', N'117', N'33640', N'50', N'140', N'0', N'1000', N'7', N'1', N'0', N'31', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9353', N'ArkTech', N'Techniker der Arkroute', N'117', N'33640', N'50', N'130', N'0', N'1000', N'5', N'1', N'0', N'31', N'0', N'180');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9354', N'ArkMech', N'Mechaniker der Arkroute', N'118', N'35102', N'50', N'140', N'0', N'1000', N'7', N'1', N'0', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9355', N'ArkAstan', N'Astan', N'119', N'166200', N'50', N'140', N'0', N'1000', N'5', N'4', N'4', N'32', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9356', N'ArkAstron', N'Astron', N'119', N'166200', N'50', N'130', N'0', N'1000', N'5', N'4', N'4', N'32', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9357', N'ArkMaster', N'Handwerksmeister', N'120', N'172845', N'50', N'160', N'0', N'1000', N'14', N'1', N'4', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9358', N'ArkAstanica', N'Astanica', N'120', N'345690', N'50', N'120', N'0', N'1000', N'5', N'4', N'1', N'32', N'0', N'1400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9359', N'Cuero', N'Cuero', N'1', N'30', N'50', N'120', N'1', N'1000', N'8', N'9', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9360', N'Gerta', N'Gerta', N'1', N'30', N'50', N'120', N'1', N'1000', N'8', N'9', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9364', N'S_CyrusWave', N'Wellencyrus', N'116', N'263277', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9365', N'S_CyrusTyphoon', N'Taifuncyrus', N'118', N'287199', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9366', N'DigGrifin', N'AusgrabungsLeiter Griffin', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9367', N'DigWebster', N'AusgrabungsTeammitglied Webste', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9368', N'DigGregory', N'AusgrabungsTeammitglied Gregor', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9369', N'DigChavez', N'AusgrabungsLeiter Javez', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9370', N'DigKupers', N'AusgrabungsTeammitglied Ross', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9371', N'DigRoss', N'AusgrabungsTeammitglied Kupers', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9372', N'WarH_ForasChief', N'Forash?uptling', N'105', N'2571450', N'50', N'100', N'0', N'1000', N'0', N'1', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9373', N'WarH_Devildom', N'TeufelsdomSoldat', N'106', N'900000', N'55', N'180', N'0', N'1000', N'4', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9374', N'WarH_FDevildom', N'TeufelsdomFeuersoldat', N'107', N'1890000', N'55', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9375', N'WarH_IDevildom', N'TeufelsdomEissoldat', N'107', N'1890000', N'55', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9376', N'WarH_SDevildom', N'TeufelsdomWindsoldat', N'107', N'1890000', N'55', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9377', N'WarH_TDevildom', N'TeufelsdomDonnersoldat', N'107', N'1890000', N'55', N'180', N'0', N'1500', N'4', N'9', N'4', N'28', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9378', N'WarH_FCitrie', N'Flammencitra', N'108', N'2778300', N'85', N'200', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9379', N'WarH_ICitrie', N'Eiscitra', N'108', N'2778300', N'85', N'200', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9380', N'WarH_SCitrie', N'Windcitra', N'108', N'2778300', N'85', N'200', N'0', N'1000', N'8', N'9', N'1', N'28', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9381', N'WarH_S_FMurumuru', N'Flammenmurumuru', N'120', N'35300', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9382', N'WarH_S_IMurumuru', N'Eismurumuru', N'120', N'35300', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9383', N'WarH_S_SMurumuru', N'Windmurumuru', N'120', N'35300', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9384', N'WarH_Tornado', N'Tornado', N'120', N'0', N'40', N'80', N'0', N'1000', N'7', N'1', N'5', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9385', N'WarH_EntranceGate', N'Festung des Teufelsdoms', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9386', N'WarH_FFocalor', N'Flammenfocalor', N'110', N'6126120', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9387', N'WarH_IFocalor', N'Eisfocalor', N'110', N'6126120', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9388', N'WarH_SFocalor', N'Windfocalor', N'110', N'6126120', N'90', N'180', N'0', N'1000', N'7', N'1', N'2', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9389', N'WarH_S_FDHoneying', N'Teuflisches Flammenbienchen', N'108', N'9923', N'50', N'100', N'0', N'1000', N'8', N'10', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9390', N'WarH_S_IDHoneying', N'Teuflisches Eisbienchen', N'108', N'9923', N'50', N'100', N'0', N'1000', N'8', N'10', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9391', N'WarH_S_SDHoneying', N'Teuflisches Windbienchen', N'108', N'9923', N'50', N'100', N'0', N'1000', N'8', N'10', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9392', N'WarH_FRange', N'Teuflischer Flammenm?rser', N'109', N'2083700', N'0', N'0', N'0', N'1000', N'5', N'4', N'4', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9393', N'WarH_IRange', N'Teuflischer Eism?rser', N'109', N'2083700', N'0', N'0', N'0', N'1000', N'5', N'4', N'4', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9394', N'WarH_SRange', N'Teuflischer Windm?rser', N'109', N'2083700', N'0', N'0', N'0', N'1000', N'5', N'4', N'4', N'28', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9395', N'WarH_FMelee', N'Mechanischer Feuerk?mpfer', N'110', N'6563700', N'85', N'180', N'0', N'1000', N'5', N'4', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9396', N'WarH_IMelee', N'Mechanischer Eisk?mpfer', N'110', N'6563700', N'85', N'180', N'0', N'1000', N'5', N'4', N'1', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9397', N'WarH_FAvanas', N'Flammenavanas', N'115', N'10052640', N'120', N'200', N'0', N'1000', N'8', N'10', N'2', N'28', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9398', N'WarH_FAvanasGate', N'Portal', N'120', N'1765000', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9399', N'WarH_Fence', N'Holzzaun', N'105', N'1028580', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'3', N'0', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9400', N'WarH_DoorLock', N'Portalsiegel', N'120', N'176500', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9401', N'WarH_FDoor', N'Flammenportal', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9402', N'WarH_IDoor', N'Eisportal', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9403', N'WarH_NDoor', N'Windportal', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9404', N'WarH_TDoor', N'Donnerportal', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9405', N'WarH_FBomb', N'Lava Bomb(mine)', N'115', N'11169600', N'0', N'0', N'0', N'1000', N'8', N'10', N'2', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9406', N'WarH_FMCorps', N'Forassoldat', N'105', N'1285725', N'50', N'100', N'0', N'1800', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9407', N'WarH_DoorLock2', N'Magisches Portalsiegel', N'0', N'0', N'0', N'0', N'1', N'1340', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9408', N'Emp_Slime', N'Gr?nh?gelSchleim', N'106', N'54000', N'50', N'135', N'0', N'1200', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9409', N'Emp_MushRoom', N'Gr?nh?gelPilz', N'106', N'54000', N'50', N'130', N'0', N'1500', N'7', N'7', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9410', N'Emp_Imp', N'Gr?nh?gelWicht', N'107', N'56700', N'50', N'130', N'0', N'1500', N'7', N'9', N'4', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9411', N'Emp_Honeying', N'Gr?nh?gelBienchen', N'108', N'59535', N'50', N'130', N'0', N'1150', N'8', N'9', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9412', N'Emp_FireSlime', N'Gr?nh?gelFeuerschleim', N'109', N'62511', N'50', N'135', N'0', N'1400', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9413', N'Emp_IronSlime', N'Gr?nh?gelEisenschleim', N'110', N'65637', N'50', N'135', N'0', N'1500', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9414', N'Emp_Ratman', N'Gr?nh?gelRattenmensch', N'111', N'68919', N'50', N'130', N'0', N'1200', N'7', N'1', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9415', N'Emp_Boar', N'Gr?nh?gelEber', N'112', N'72366', N'50', N'130', N'0', N'1200', N'7', N'1', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9416', N'Emp_SilverSlime', N'Gr?nh?gelSilberschleim', N'112', N'72366', N'50', N'135', N'0', N'1600', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9417', N'Emp_GoldSlime', N'Gr?nh?gelGoldschleim', N'113', N'75984', N'50', N'135', N'0', N'1900', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9418', N'Emp_PrinceSlime', N'Gr?nh?gelSchleimprinz', N'114', N'79785', N'50', N'135', N'0', N'2500', N'8', N'9', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9419', N'Emp_QueenSlime', N'Schleimk?nigin', N'115', N'83772', N'50', N'140', N'0', N'2700', N'8', N'9', N'4', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9420', N'Emp_KingSlime', N'Schleimk?nig', N'115', N'201053', N'50', N'140', N'0', N'3200', N'8', N'9', N'1', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9421', N'Emp_EmperorSlime', N'Schleimkaiser', N'120', N'677760', N'50', N'140', N'0', N'3200', N'8', N'9', N'2', N'4', N'0', N'1700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9422', N'Emp_Tornado', N'Tornado', N'120', N'105900', N'40', N'80', N'0', N'1000', N'7', N'1', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9423', N'Emp_Slime2', N'Gr?nh?gelSchleim', N'106', N'48600', N'50', N'135', N'0', N'1200', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9424', N'Emp_FireSlime2', N'Gr?nh?gelFeuerschleim', N'109', N'56260', N'50', N'135', N'0', N'1400', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9425', N'Emp_IronSlime2', N'Gr?nh?gelEisenschleim', N'110', N'72201', N'50', N'135', N'0', N'1500', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9426', N'Emp_QueenSlime2', N'Schleimk?nigin', N'114', N'79785', N'50', N'140', N'0', N'2700', N'8', N'9', N'4', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9427', N'E_Slime', N'Schleim', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9428', N'E_Honeying', N'Bienchen', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9429', N'E_Phino', N'Phino', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9430', N'E_LizardMan', N'Echsenmann', N'10', N'561', N'40', N'125', N'0', N'1200', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9431', N'E_KingCrab', N'K?nigskrabbe', N'10', N'561', N'40', N'125', N'0', N'1600', N'7', N'1', N'4', N'30', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9432', N'E_SparkDog', N'Funkenhund', N'10', N'561', N'40', N'125', N'0', N'1300', N'7', N'1', N'4', N'30', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9433', N'E_LavaVivi', N'Lavavivi', N'10', N'561', N'40', N'125', N'0', N'1300', N'7', N'1', N'4', N'30', N'0', N'700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9434', N'E_PhinoFlie', N'Phina', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9435', N'E_MushRoom', N'Pilz', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9436', N'E_Spider', N'Spinne', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9437', N'E_B_CrackerHumar', N'Malephar', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9438', N'E_Helga', N'H?llentork?nig Helga', N'10', N'561', N'40', N'125', N'0', N'1500', N'7', N'1', N'4', N'30', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9439', N'E_HwinIn', N'Tor des Geheimnisvollen Tempels', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9440', N'E_HwinOut', N'Tor des Geheimnisvollen Tempels', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9441', N'E_HwinQuest', N'Margret', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9442', N'E_HwinPhino', N'Geist Phino', N'1', N'200000', N'40', N'105', N'0', N'1000', N'7', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9443', N'E_HwinFlie', N'Geist Phina', N'1', N'200000', N'40', N'110', N'0', N'1000', N'20', N'1', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9444', N'E_HwinBox', N'Schatztruhe mit Verborgenen S??', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9445', N'E_HwinDHoneying', N'Halloween Teufelsbienchen', N'150', N'100', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'29', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9446', N'E_HwinGHoneying', N'Geist Teufelsbienchen', N'150', N'100', N'40', N'80', N'0', N'1000', N'8', N'9', N'2', N'29', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9447', N'E_HwinKingCrab', N'Halloween K?nigskrabbe', N'150', N'100', N'30', N'110', N'0', N'4000', N'7', N'8', N'4', N'29', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9448', N'E_HwinReturn', N'Tor des Geheimnisvollen Tempels', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9449', N'BallSnow02', N'Tiefgefroren ', N'150', N'1', N'260', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9450', N'BallCrush02', N'Mit Schnee bedeckt', N'150', N'1', N'240', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9451', N'E_XKebing', N'SchelmKebing', N'125', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9452', N'E_XKebing_Show', N'Scherzbold Kebing', N'20', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9453', N'E_XSnowman', N'SchelmSchneemann', N'20', N'684', N'80', N'110', N'0', N'1000', N'8', N'9', N'0', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9454', N'E_XSnowmanBig', N'Riesiger Schneemann', N'20', N'684', N'80', N'110', N'0', N'3000', N'8', N'9', N'0', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9455', N'E_XTreeBig', N'Gro?er Weihnachtsbaum', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'350');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9456', N'E_XTree_Xmas', N'Weihnachtsbaum', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9457', N'E_XTree_Rudolph', N'Rudolphs Baum', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9458', N'E_XTree_Fairy', N'Baum der Weihnachtselfen', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9459', N'E_XTree_Santa', N'Baum des Weihnachtsmanns', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9460', N'E_XXiaoming', N'Santa', N'20', N'684', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9461', N'E_XKebing_Chat', N'Kebing', N'115', N'1000', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9462', N'ArenaGate_B', N'Blaues Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9463', N'ArenaGate_R', N'Rotes Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9464', N'ArenaFlag_B', N'Blaue Fahne', N'150', N'1', N'0', N'0', N'0', N'2000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9465', N'ArenaFlag_R', N'Rote Fahne', N'150', N'1', N'0', N'0', N'0', N'2000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9466', N'ArenaCrystal', N'Arenakristall', N'120', N'77660', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'1', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9467', N'ArenaStone', N'Kristallschutzstein', N'120', N'76500', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9468', N'Arena60_F', N'Alter Arenakrieger', N'60', N'9366', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9469', N'Arena60_A', N'Alter Arenakrieger', N'60', N'7632', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9470', N'Arena70_F', N'Alter Arenakrieger', N'70', N'11880', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9471', N'Arena70_A', N'Alter Arenakrieger', N'70', N'9680', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9472', N'Arena80_F', N'Alter Arenakrieger', N'80', N'14564', N'60', N'100', N'0', N'1000', N'1', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9473', N'Arena80_A', N'Alter Arenakrieger', N'80', N'11867', N'60', N'100', N'0', N'1000', N'2', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9474', N'Arena90_M', N'Alter Arenakrieger', N'90', N'17317', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9475', N'Arena90_C', N'Alter Arenakrieger', N'90', N'21440', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9476', N'Arena100_M', N'Alter Arenakrieger', N'100', N'28207', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9477', N'Arena100_C', N'Alter Arenakrieger', N'100', N'34923', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9478', N'Arena110_M', N'Alter Arenakrieger', N'110', N'45946', N'60', N'100', N'0', N'1000', N'14', N'1', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9479', N'Arena110_C', N'Alter Arenakrieger', N'110', N'56885', N'60', N'100', N'0', N'1000', N'5', N'4', N'4', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9480', N'IM_Arena01', N'Alte Tempelritterin Celine', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9481', N'IM_Arena02', N'Alte Tempelritterin Lindsey', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9482', N'E_SkiFlag_Red', N'Rotes Tor', N'115', N'1000', N'80', N'110', N'0', N'1500', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9483', N'E_SkiFlag_Blue', N'Blaues Tor', N'115', N'1000', N'80', N'110', N'0', N'1500', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9484', N'E_SkiFlag_Gold', N'Goldenes Tor', N'115', N'1000', N'80', N'110', N'0', N'1500', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9485', N'E_Ski_IDHoneying', N'SchelmEisteufelBienchen', N'115', N'1000', N'40', N'80', N'0', N'1500', N'8', N'10', N'0', N'12', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9486', N'E_Ski_Snowman', N'SchelmSchneemann', N'115', N'1000', N'80', N'110', N'0', N'1000', N'8', N'9', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9487', N'E_Ski_CongressNPC', N'Winterming', N'115', N'1000', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9488', N'E_Ski_MerchantNPC', N'Winterming', N'115', N'1000', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9489', N'E_Ski_GateIn', N'Eingang des Skiturniers', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9490', N'E_Ski_GateOut', N'Ausgang des Skiturniers', N'150', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9491', N'E_Ski_QuestNPC', N'Winterming jr.', N'115', N'1000', N'80', N'110', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9492', N'E_Ski_RentMachine', N'Snowboardautomat', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9493', N'Anvil', N'Amboss', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9494', N'IM_Arena_TE', N'Erweiterungs Item H?ndler', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9495', N'Egg2014_GoldEgg', N'Goldenes Ei', N'0', N'1000', N'80', N'110', N'0', N'1000', N'0', N'0', N'0', N'29', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9496', N'Egg2014_BigEgg', N'Riesiges Ei', N'0', N'1000', N'80', N'110', N'0', N'1000', N'0', N'0', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9497', N'Egg2014_HoshemingNPC', N'Hoshemings Seele', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9498', N'Egg2014_Hosheming', N'Auferstandener Hosheming', N'0', N'1000', N'80', N'110', N'0', N'3000', N'0', N'0', N'0', N'7', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9499', N'SoulMctChloe', N'Heiler Chloe', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9500', N'UruGuildGump', N'Gildenmanager Gump', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9501', N'LabH_Prison', N'Laborgef?ngnis', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9502', N'LabH_Child_Melt', N'Melt', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9503', N'LabH_Child_Balus', N'Balus', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9504', N'LabH_Child_Chechale', N'Cesare', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9505', N'LabH_Child_Fred', N'Fred', N'0', N'0', N'33', N'127', N'1', N'1000', N'0', N'0', N'5', N'6', N'1', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9506', N'LabH_25', N'Angepasstes Subjekt #25', N'110', N'525096', N'33', N'139', N'0', N'1000', N'7', N'6', N'2', N'5', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9507', N'LabH_20', N'Angepasstes Subjekt #20', N'108', N'476280', N'33', N'139', N'0', N'1500', N'7', N'2', N'2', N'5', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9508', N'LabH_19', N'Angepasstes Subjekt #19', N'106', N'259200', N'33', N'152', N'0', N'1200', N'7', N'9', N'1', N'5', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9509', N'LabH_23', N'Angepasstes Subjekt #23', N'108', N'285768', N'33', N'152', N'0', N'1000', N'1', N'6', N'1', N'5', N'0', N'900');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9510', N'LabH_Guardian01', N'Entwickelte Wache #1', N'103', N'89563', N'33', N'127', N'0', N'1000', N'1', N'2', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9511', N'LabH_Guardian02', N'Entwickelte Wache #2', N'106', N'103680', N'33', N'127', N'0', N'1000', N'1', N'2', N'4', N'5', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9512', N'LabH_Watchman01', N'Entwickelter W?chter #1', N'103', N'89563', N'33', N'127', N'0', N'1000', N'7', N'6', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9513', N'LabH_Watchman02', N'Entwickelter W?chter #2', N'106', N'103680', N'33', N'127', N'0', N'1000', N'7', N'6', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9514', N'LabH_Battle01', N'Entwickeltes Kampfsubjekt #1', N'105', N'98744', N'33', N'139', N'0', N'1000', N'4', N'8', N'4', N'5', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9515', N'LabH_Battle02', N'Entwickeltes Kampfsubjekt #2', N'108', N'114307', N'33', N'139', N'0', N'1000', N'4', N'8', N'4', N'5', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9516', N'LabH_Snake_In', N'Entwickelte Schlange', N'108', N'114307', N'33', N'165', N'0', N'1000', N'7', N'7', N'4', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9517', N'LabH_Ghost01', N'Entwickelter Laborgeist', N'105', N'98744', N'33', N'127', N'0', N'1000', N'4', N'0', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9518', N'LabH_Ghost02', N'Entwickelter Laborgeist', N'108', N'114307', N'33', N'127', N'0', N'1000', N'5', N'0', N'4', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9519', N'LabH_Snake_Out', N'Entwickelte Schlange', N'103', N'15549', N'33', N'165', N'0', N'1000', N'7', N'7', N'0', N'5', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9520', N'LabH_Unfinished', N'Fehlerhaft entwickeltes Subjekt', N'103', N'15549', N'33', N'127', N'0', N'1000', N'1', N'7', N'0', N'5', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9521', N'LabH_Box', N'Kiste mit Experimentwerkzeugen', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9522', N'LabH_Slime', N'Entwickelter Experimentschleim', N'105', N'98744', N'40', N'110', N'0', N'1500', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9523', N'LabH_Gate02', N'Labortor', N'0', N'0', N'0', N'0', N'1', N'15000', N'0', N'0', N'5', N'6', N'0', N'2500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9711', N'ValeArkGuard', N'Br?ckenw?chter', N'124', N'39885', N'50', N'140', N'0', N'1000', N'5', N'4', N'0', N'25', N'2', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9712', N'ValeSnowyPuggy', N'Schluchtenpergy', N'121', N'35898', N'40', N'140', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9713', N'ValeMegan', N'Schluchtenmegantereon', N'124', N'39885', N'40', N'160', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9714', N'ValeSnowyWolf', N'Schluchtenwolf', N'123', N'38556', N'40', N'160', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'850');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9715', N'ClassChangeMaster01', N'Spezialisierungsexperte William', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9716', N'ClassChangeMaster02', N'Spezialisierungsexperte Gabriel', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9717', N'S_CyrusKey', N'Schl?sselwache Ilkane', N'119', N'299160', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9718', N'Pie', N'Pie', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9719', N'KDSoccer_Ball', N'Fu?ball', N'0', N'1000', N'80', N'110', N'0', N'1000', N'0', N'0', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9720', N'KDSoccer_MctNPC', N'H?ndler Ming', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9721', N'KDSoccer_Referee', N'Schiedsrichter', N'0', N'1000', N'80', N'110', N'0', N'1000', N'0', N'0', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9722', N'KDSoccer_KeeperA', N'Spinnenf?hlerKebing', N'20', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9723', N'KDSoccer_KeeperB', N'TentakelKebing', N'20', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9724', N'KDSoccer_SpeedUp', N'Kiste der Geschwindigkeit', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9725', N'KDSoccer_Invincible', N'Kiste des R?cksto?es', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9726', N'KDSoccer_Honeying', N'Bienchen', N'10', N'171', N'40', N'110', N'0', N'1000', N'8', N'9', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9727', N'KDSoccer_Kebing', N'Kebing', N'20', N'684', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9728', N'KDSoccer_DadNPC', N'Schleimk?nig', N'115', N'990000', N'50', N'115', N'1', N'3200', N'8', N'6', N'0', N'12', N'1', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9729', N'KDSoccer_MomNPC', N'Schleimk?nigin', N'115', N'990000', N'40', N'110', N'1', N'2700', N'8', N'6', N'0', N'12', N'1', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9730', N'KDSoccer_DanielNPC', N'Daniel Schleim', N'0', N'0', N'0', N'0', N'1', N'1300', N'0', N'0', N'5', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9731', N'S_SirenWave', N'Wellensirene', N'117', N'275238', N'40', N'130', N'0', N'1000', N'12', N'1', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9732', N'S_SirenTyphoon', N'Taifunsirene', N'119', N'299160', N'40', N'130', N'0', N'1000', N'12', N'1', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9733', N'S_Varamus', N'W?chter Varamus', N'118', N'478665', N'40', N'140', N'0', N'1000', N'12', N'6', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9734', N'S_Anika', N'W?chterin Anika', N'119', N'498600', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9735', N'S_Anais', N'W?chter Anais', N'119', N'498600', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9736', N'S_Tamyu', N'Richter der Dunkelheit Tamyu', N'120', N'518535', N'40', N'140', N'0', N'1000', N'7', N'6', N'1', N'2', N'0', N'550');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9737', N'S_Hayreddin', N'W?chter Hayreddin', N'122', N'558405', N'40', N'140', N'0', N'1000', N'19', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9738', N'S_HayreddinEvo', N'B?ser W?chter Hayreddin', N'123', N'578340', N'40', N'150', N'0', N'1000', N'19', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9739', N'S_Freloan', N'Sirenenk?nig Freloan', N'125', N'1442490', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'2600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9740', N'S_FreloanLeg', N'Freloans Bein', N'125', N'370926', N'0', N'0', N'0', N'1000', N'8', N'6', N'4', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9741', N'Chaoming', N'Chaoming', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9742', N'S_Door', N'Inneres Tor', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9743', N'S_Portal', N'Portal', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9744', N'S_GateOut', N'Ausgang', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9745', N'S_Summon_Varamus', N'W?chter Varamus', N'118', N'478665', N'40', N'140', N'0', N'1000', N'12', N'6', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9746', N'S_Summon_Anika', N'W?chterin Anika', N'119', N'498600', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9747', N'S_Summon_Anais', N'W?chter Anais', N'119', N'498600', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9748', N'S_Summon_Tamyu', N'Richter der Dunkelheit Tamyu', N'120', N'518535', N'40', N'140', N'0', N'1000', N'7', N'6', N'1', N'2', N'0', N'550');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9749', N'SnowyPuggy', N'Schneepergy', N'116', N'29253', N'40', N'140', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9750', N'WereBearSnow', N'Schneewerb?r', N'117', N'30582', N'40', N'140', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'350');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9751', N'Megan', N'Megantereon', N'117', N'30582', N'40', N'160', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9752', N'Yeti', N'Yeti', N'117', N'30582', N'36', N'130', N'0', N'1000', N'8', N'2', N'0', N'0', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9753', N'SmartYeti', N'Schlauer Yeti', N'118', N'31911', N'36', N'140', N'0', N'1000', N'13', N'2', N'0', N'0', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9754', N'AngryYeti', N'W?tender Yeti', N'118', N'31911', N'36', N'140', N'0', N'1000', N'13', N'2', N'0', N'0', N'0', N'550');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9755', N'BigYeti', N'Gro?er Yeti', N'119', N'66480', N'36', N'130', N'0', N'1000', N'13', N'2', N'4', N'0', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9756', N'SnowyWolf', N'Schneewolf', N'119', N'33240', N'40', N'160', N'0', N'1000', N'8', N'2', N'0', N'3', N'0', N'850');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9757', N'Mastodons', N'Mastodons', N'120', N'34569', N'40', N'120', N'0', N'1000', N'13', N'2', N'0', N'3', N'0', N'900');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9758', N'WindyWitch', N'Windhexe', N'120', N'69138', N'36', N'128', N'0', N'1000', N'14', N'2', N'4', N'0', N'0', N'240');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9759', N'WindyGiant', N'Windriese', N'120', N'69138', N'40', N'140', N'0', N'1000', N'13', N'2', N'4', N'0', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9760', N'Nagro', N'Hunter', N'1', N'27', N'36', N'127', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9761', N'Hilda', N'Hilda', N'1', N'27', N'36', N'127', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9762', N'Akisha', N'Akisha', N'1', N'27', N'36', N'127', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9763', N'SirenStatue', N'Sirenenstatue', N'1', N'27', N'36', N'127', N'1', N'1000', N'8', N'0', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9764', N'P_ArkGuard', N'Freloans Tentakel', N'116', N'29253', N'50', N'140', N'0', N'1000', N'5', N'4', N'0', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9765', N'P_ArkNovice', N'Lehrling des Abgrunds', N'116', N'29253', N'50', N'140', N'0', N'1000', N'5', N'1', N'0', N'31', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9766', N'P_ArkArch', N'Architekt des Abgrunds', N'117', N'30582', N'50', N'140', N'0', N'1000', N'7', N'1', N'0', N'31', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9767', N'P_ArkTech', N'Techniker des Abgrunds', N'117', N'30582', N'50', N'130', N'0', N'1000', N'5', N'1', N'0', N'31', N'0', N'180');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9768', N'P_ArkMech', N'Mechaniker des Abgrunds', N'118', N'31911', N'50', N'140', N'0', N'1000', N'7', N'1', N'0', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9769', N'P_ArkAstan', N'Astan des Abgrunds', N'119', N'199440', N'50', N'140', N'0', N'1000', N'5', N'4', N'4', N'32', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9770', N'P_ArkAstron', N'Astron des Abgrunds', N'119', N'199440', N'50', N'130', N'0', N'1000', N'5', N'4', N'4', N'32', N'0', N'450');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9771', N'P_ArkMaster', N'Handwerksmeister des Abgrunds', N'120', N'207414', N'50', N'160', N'0', N'1000', N'14', N'1', N'4', N'31', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9772', N'SwimmingR', N'Roter Bademeister', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9773', N'SwimmingB', N'Blauer Bademeister', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9774', N'BallWater', N'Wasserbombe', N'150', N'1', N'350', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9775', N'BallCannon', N'Wasserwerfer', N'150', N'1', N'240', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9776', N'Swimming', N'Bademeister', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9777', N'P_ArkAstanica', N'Astanica des Abgrunds', N'120', N'380259', N'50', N'120', N'0', N'1000', N'5', N'4', N'1', N'32', N'0', N'1400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9778', N'AdlFH_Salare', N'Salare', N'120', N'967932', N'40', N'140', N'0', N'1000', N'4', N'1', N'2', N'0', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9779', N'AdlFH_DBead', N'Dunkle Perle', N'120', N'155561', N'40', N'100', N'0', N'1000', N'0', N'0', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9780', N'AdlFH_Eglack', N'Eglack', N'120', N'1209915', N'40', N'140', N'0', N'1000', N'4', N'6', N'2', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9781', N'AdlFH_EglackMad', N'Eglack', N'120', N'1209915', N'40', N'140', N'0', N'1000', N'4', N'6', N'2', N'0', N'0', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9782', N'AdlFH_SalareMan', N'Salare', N'120', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9783', N'AdlFH_EglackMan', N'Eglack', N'120', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9784', N'AdlFH_DStone', N'Stein der Dunkelheit', N'120', N'9334', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9785', N'AdlFH_Barrier01', N'Tor', N'120', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9786', N'AdlFH_Barrier02', N'Tor', N'120', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9787', N'AdlFH_EStone01', N'Notfalltotem A', N'120', N'0', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9788', N'AdlFH_EStone02', N'Notfalltotem B', N'120', N'0', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9789', N'AdlFH_EStone03', N'Notfalltotem C', N'120', N'0', N'0', N'0', N'1', N'500', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9790', N'AdlFH_RStone', N'Beschw?re Magischen Stein', N'120', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9791', N'AdlFH_Loussier', N'Loussier', N'120', N'311121', N'40', N'140', N'1', N'1000', N'0', N'0', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9792', N'AdlFH_Marlene', N'Marlene ', N'120', N'311121', N'40', N'140', N'0', N'1000', N'0', N'0', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9793', N'AdlFH_Karen', N'Sukkubusk?nigin Karen', N'125', N'1442490', N'50', N'133', N'0', N'1600', N'8', N'11', N'2', N'2', N'0', N'1100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9794', N'AdlFH_Gate', N'Tor zum Erobertes Adelia', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9795', N'AdlFH_GuardAlber', N'Adelias Wache Alber', N'120', N'518535', N'50', N'130', N'0', N'1000', N'1', N'1', N'1', N'0', N'2', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9796', N'AdlFH_GuardEstelle', N'Adelias Wache Estelle', N'120', N'518535', N'50', N'130', N'0', N'1000', N'1', N'1', N'1', N'0', N'2', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9797', N'AdlFH_Fspearman', N'Invadierender Speerk?mpfer', N'118', N'143600', N'30', N'127', N'0', N'450', N'1', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9798', N'AdlFH_Franger', N'Invadierender Waldl?ufer', N'118', N'143600', N'36', N'130', N'0', N'400', N'2', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9799', N'AdlFH_Fknuckleman', N'Invadierender K?mpfer', N'118', N'143600', N'33', N'130', N'0', N'500', N'7', N'2', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9800', N'AdlFH_Dlich', N'Uralter Lich', N'119', N'299160', N'40', N'115', N'0', N'1300', N'14', N'2', N'4', N'5', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9801', N'MultiProtect02', N'Schutz des Heiligen', N'115', N'5000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9802', N'MultiProtect03', N'Schutz des Heiligen', N'115', N'5000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9803', N'LightOrb06', N'Lichtkugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9804', N'LightOrb07', N'Lichtkugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9805', N'LightOrb08', N'Lichtkugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9806', N'LightOrb09', N'Lichtkugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9807', N'LightOrb10', N'Lichtkugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9808', N'LightField06', N'Strahlende Erde', N'115', N'16434', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9809', N'LightField07', N'Strahlende Erde', N'115', N'17154', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9810', N'LightField08', N'Strahlende Erde', N'115', N'17874', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9811', N'LightField09', N'Strahlende Erde', N'115', N'18588', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9812', N'LightField10', N'Strahlende Erde', N'115', N'19308', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9813', N'ValeShella', N'Schluchtenshella', N'122', N'37227', N'36', N'140', N'0', N'1600', N'7', N'9', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9814', N'ValeApe', N'Schluchtenaffe', N'124', N'79770', N'40', N'135', N'0', N'1000', N'7', N'1', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9815', N'ValeBattleBeak', N'Schluchtenkampfschnauze', N'121', N'35898', N'36', N'130', N'0', N'1000', N'7', N'1', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9816', N'ValeBSpikeHorn', N'Schluchtenzackenhorn', N'123', N'38556', N'36', N'130', N'0', N'600', N'8', N'4', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9817', N'ValeMastodons', N'Schluchtenmastodon', N'122', N'37227', N'40', N'130', N'0', N'1000', N'13', N'2', N'0', N'3', N'0', N'900');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9818', N'Garuda', N'K?ltetyrann Garuda', N'125', N'148370', N'80', N'140', N'0', N'1000', N'9', N'2', N'1', N'3', N'3', N'1600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9819', N'Basilone', N'Basilone', N'1', N'27', N'40', N'120', N'1', N'1000', N'0', N'0', N'0', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9820', N'ArkMine_F', N'Minenkrieger', N'122', N'55841', N'40', N'120', N'0', N'1000', N'13', N'4', N'4', N'32', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9821', N'ArkMine_Kn', N'Minenritter', N'120', N'51854', N'20', N'80', N'0', N'1000', N'13', N'4', N'4', N'32', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9822', N'B_Albireo', N'K?nig Albireo', N'125', N'8242800', N'40', N'170', N'0', N'1000', N'13', N'4', N'2', N'32', N'0', N'1300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9823', N'Nicole', N'Nicolas', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9824', N'Q_Jey', N'Anf?hrer der J?gerunion Jey', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9825', N'Albireo_Box', N'Albireos Schatzkiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9826', N'LevH_ViciousLeviathan', N'Rasender Leviathan', N'100', N'402960', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'4500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9827', N'LevH_ViciousLeviathan01', N'Rasender Leviathan', N'100', N'402960', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'4500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9828', N'LevH_ID_NestGuardianEgg', N'Ei des rasenden Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9829', N'LevH_ID_NestGuardEgg', N'Ei des rasenden Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9830', N'LevH_ID_NestBuffEgg', N'Ei des rasenden Leviathans', N'100', N'26864', N'0', N'0', N'0', N'1000', N'8', N'6', N'0', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9831', N'LevH_ID_NestGuardian', N'Mutierter Nestw?chter', N'100', N'96710', N'40', N'138', N'0', N'1500', N'8', N'6', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9832', N'LevH_ID_NestGuard', N'Mutierte Nestwache', N'97', N'83541', N'40', N'110', N'0', N'500', N'8', N'6', N'4', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9833', N'LevH_ViciousSlime', N'Mutierter Nestschleim', N'93', N'22910', N'40', N'110', N'0', N'2000', N'8', N'9', N'4', N'4', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9834', N'LevH_BombBoogySum01', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9835', N'LevH_BombBoogySum02', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9836', N'LevH_BombBoogySum03', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9837', N'LevH_BombBoogySum04', N'Bombenschildie', N'99', N'25584', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9838', N'LevH_LeviathanEggBox', N'Gl?nzendes Ei des Leviathans', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'1500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9839', N'ClassChangeMaster03', N'Spezialisierungsexperte Wilbert', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9840', N'BeraGuildLucas', N'Gildenmeister Lucas', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9841', N'E_JackO', N'Jack Os Laterne', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9842', N'E_Kebing', N'Kebing', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9843', N'E_ForasChief', N'Foras H?uptling', N'10', N'561', N'40', N'125', N'0', N'1000', N'7', N'1', N'4', N'30', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9844', N'AdlFH_Guard', N'Wache von Adelia', N'115', N'1285725', N'50', N'130', N'0', N'1000', N'1', N'1', N'1', N'0', N'2', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9845', N'KDFargels_Guard01', N'Allianzsoldat', N'116', N'58506', N'40', N'130', N'0', N'1000', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9846', N'KDFargels_Guard02', N'Allianzsoldat', N'117', N'61164', N'40', N'130', N'0', N'1000', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9847', N'KDFargels_Guard03', N'Allianzsoldat', N'118', N'63822', N'40', N'130', N'0', N'1000', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9848', N'KDFargels_Torin', N'Kommandantin Torin', N'120', N'241983', N'40', N'130', N'0', N'1000', N'1', N'4', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9849', N'KDFargels_FSpearman', N'Gieriger Speerk?mpfer', N'116', N'58506', N'40', N'130', N'0', N'450', N'1', N'1', N'0', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9850', N'KDFargels_FRanger', N'Gieriger Waldl?ufer', N'118', N'63822', N'40', N'130', N'0', N'400', N'2', N'1', N'0', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9851', N'KDFargels_DLich', N'Gieriger Lich', N'120', N'241983', N'40', N'130', N'0', N'1300', N'14', N'2', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9852', N'KDFargels_DKnight', N'Todesritter', N'122', N'260589', N'40', N'140', N'0', N'1000', N'1', N'4', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9853', N'KDFargels_Epis', N'Anf?hrer der Todesritter', N'124', N'478620', N'40', N'140', N'0', N'1000', N'1', N'4', N'1', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9854', N'KDFargels', N'Pagel, der Gott der Gier', N'125', N'824280', N'40', N'150', N'0', N'1000', N'7', N'1', N'2', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9855', N'KDFargels_Spearman', N'Speerk?mpfer des Heiligtums', N'120', N'69138', N'40', N'135', N'0', N'1000', N'12', N'4', N'0', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9856', N'KDFargels_Paladin', N'Paladin des Heiligtums', N'121', N'71796', N'40', N'135', N'0', N'1000', N'1', N'4', N'0', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9857', N'KDFargels_Archlord', N'Ritter des Heiligtums', N'123', N'269892', N'40', N'135', N'0', N'1000', N'1', N'4', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9858', N'KDFargels_Mage', N'Anh?ngerin des Heiligtums', N'122', N'260589', N'40', N'135', N'0', N'1000', N'3', N'1', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9859', N'KDFargels_Wizard', N'Bijous oberste Magierin', N'123', N'269892', N'40', N'135', N'0', N'1000', N'3', N'1', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9860', N'KDFargels_Alarm', N'Alarmierender Stein', N'1', N'54', N'0', N'0', N'0', N'1000', N'0', N'6', N'0', N'2', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9861', N'KDFargels_Cage', N'K?fig', N'1', N'54', N'0', N'0', N'0', N'1000', N'0', N'6', N'0', N'2', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9862', N'KebingX_14', N'Meisterschelmkebing', N'150', N'100000', N'40', N'40', N'0', N'1000', N'7', N'9', N'1', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9863', N'KDFargels_Door', N'Door', N'1', N'54', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9864', N'KDFargels_S_Spearman', N'Speerk?mpfer des Heiligtums', N'120', N'20002', N'40', N'135', N'0', N'1000', N'12', N'4', N'0', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9865', N'KDFargels_S_Archlord', N'Ritter des Heiligtums', N'123', N'20026', N'40', N'135', N'0', N'1000', N'1', N'4', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9866', N'KDFargels_S_Mage', N'Anh?ngerin des Heiligtums', N'122', N'20013', N'40', N'135', N'0', N'1000', N'3', N'1', N'4', N'0', N'3', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9867', N'SD_KingCrab', N'Unheilvolle K?nigskrabbe', N'130', N'1914360', N'30', N'110', N'0', N'5000', N'7', N'8', N'2', N'3', N'0', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9868', N'SD_CrabFoam', N'Unheilvolle Blasen', N'130', N'47859', N'0', N'0', N'0', N'1000', N'14', N'9', N'4', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9869', N'SD_KingSlime', N'Unheilvoller Schleimk?nig', N'130', N'1914360', N'50', N'115', N'0', N'1000', N'8', N'9', N'2', N'4', N'0', N'1800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9870', N'SD_SlimeLump', N'Unheilvolles Schleimst?ck', N'130', N'47859', N'0', N'0', N'0', N'1000', N'8', N'9', N'4', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9871', N'SD_SlimeIce', N'Unheilvoller Eisschleim', N'130', N'1436', N'60', N'135', N'0', N'1000', N'8', N'9', N'4', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9872', N'SD_Dragon', N'Unheilvoller Babydrache', N'130', N'1914360', N'50', N'127', N'0', N'1500', N'7', N'6', N'2', N'1', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9873', N'SD_SpiritFire', N'Unheilvoller Flammengeist', N'130', N'47859', N'0', N'0', N'0', N'1000', N'14', N'0', N'4', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9874', N'SD_SpiritIce', N'Unheilvoller Eisgeist', N'130', N'47859', N'0', N'0', N'0', N'1000', N'14', N'0', N'4', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9875', N'SD_Futureming', N'Ming aus der Zukunft', N'130', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9876', N'SD_LiarMimic', N'L?gende Mimi', N'130', N'47859', N'40', N'138', N'0', N'2500', N'7', N'6', N'1', N'1', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9877', N'SD_Gate_KDPrtShip', N'Tor', N'0', N'0', N'0', N'0', N'1', N'700', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9888', N'SH_CyrusWave', N'Boshafter Wellencyrus', N'116', N'289605', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9889', N'SH_CyrusTyphoon', N'Boshafter Taifuncyrus', N'118', N'315919', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9890', N'SH_CyrusKey', N'Boshafte Schl?sselwache Ilkane', N'119', N'329076', N'40', N'140', N'0', N'1000', N'1', N'6', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9891', N'SH_SirenWave', N'Boshafte Wellensirene', N'117', N'302762', N'40', N'130', N'0', N'1000', N'12', N'1', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9892', N'SH_SirenTyphoon', N'Boshafte Taifunsirene', N'119', N'329076', N'40', N'130', N'0', N'1000', N'12', N'1', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9893', N'SH_Varamus', N'Boshafter W?chter Varamus', N'118', N'526532', N'40', N'140', N'0', N'1000', N'12', N'6', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9894', N'SH_Anika', N'Boshafte W?chterin Anika', N'119', N'548460', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9895', N'SH_Anais', N'Boshafte W?chterin Anais', N'119', N'548460', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9896', N'SH_Tamyu', N'Boshafter Richter Tamyu', N'120', N'570389', N'40', N'140', N'0', N'1000', N'7', N'6', N'1', N'2', N'0', N'550');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9897', N'SH_Hayreddin', N'Boshafter W?chter Hayreddin', N'122', N'614246', N'40', N'140', N'0', N'1000', N'19', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9898', N'SH_HayreddinEvo', N'Teuflischer W?chter Hayreddin', N'123', N'636174', N'40', N'150', N'0', N'1000', N'19', N'1', N'1', N'0', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9899', N'SH_Freloan', N'Verdorbener Freloan', N'125', N'1586739', N'0', N'0', N'0', N'1000', N'8', N'6', N'2', N'2', N'0', N'2600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9900', N'SH_FreloanLeg', N'Verdorbener Tentakel', N'125', N'408019', N'0', N'0', N'0', N'1000', N'8', N'6', N'4', N'3', N'0', N'800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9901', N'SH_Door', N'Inneres Tor', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9902', N'SH_Portal', N'Portal', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9903', N'SH_GateOut', N'Ausgang', N'1', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9904', N'SH_Summon_Varamus', N'Boshafter W?chter Varamus', N'118', N'526532', N'40', N'140', N'0', N'1000', N'12', N'6', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9905', N'SH_Summon_Anika', N'Boshafte W?chterin Anika', N'119', N'548460', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9906', N'SH_Summon_Anais', N'Boshafte W?chterin Anais', N'119', N'548460', N'40', N'140', N'0', N'1000', N'8', N'1', N'1', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9907', N'SH_Summon_Tamyu', N'Boshafter Richter Tamyu', N'120', N'570389', N'40', N'140', N'0', N'1000', N'7', N'6', N'1', N'2', N'0', N'550');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9908', N'Town_Safer', N'Stadtwache', N'150', N'558480', N'50', N'130', N'0', N'1000', N'1', N'1', N'4', N'0', N'2', N'2000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9909', N'LabH_Gate01', N'Labortor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9910', N'UrgDTH_IDMapLinkGate01', N'Instanzeingang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9911', N'UrgDTH_IDMapLinkGate02', N'Instanzausgang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9912', N'UrgDTH_DBossDoor00', N'Tor zum Boss', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9913', N'UrgDTH_DBossDoor01', N'Tor zum Zwischenboss 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9914', N'UrgDTH_DBossDoor02', N'Tor zum Zwischenboss 2', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9915', N'UrgDTH_DBossDoor03', N'Tor zum Zwischenboss 3', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9916', N'UrgDTH_DBossDoor04', N'Tor zum Zwischenboss 4', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9917', N'UrgDTH_IDMapLinkGate00', N'Ausgang', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9918', N'UrgDTH_DBossDoor01_1', N'Tor zum Zwischenboss 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9919', N'UrgDTH_DBossDoor04_1', N'Tor zum Zwischenboss 4', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9920', N'UrgDTH_SecretaryClio', N'Cleo', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9921', N'UrgDTH_IDMINE01', N'Antikes Golderz', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'8', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9922', N'UrgDTH_IDPresentBox01', N'Antike Kiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9923', N'UrgDTH_IDPresentBox02', N'Antike Kiste', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9924', N'UrgDTH_ID_FlameSpirit', N'Ge?chteter Flammengeist', N'84', N'14290', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9925', N'UrgDTH_ID_GiantMagmaton', N'Ge?chteter Riesenmagmaton', N'90', N'49476', N'40', N'138', N'0', N'1800', N'8', N'6', N'4', N'1', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9926', N'UrgDTH_ID_Kruge', N'Ge?chteter Kruger', N'85', N'18309', N'40', N'138', N'0', N'1200', N'8', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9927', N'UrgDTH_ID_EarthNerpa', N'Ge?chteter Nerpa', N'88', N'15773', N'40', N'138', N'0', N'2000', N'7', N'9', N'0', N'2', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9928', N'UrgDTH_ID_EarthCalerben', N'Ge?chteter Caravan', N'83', N'17427', N'40', N'138', N'0', N'1500', N'7', N'6', N'0', N'2', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9929', N'UrgDTH_ID_FireShella', N'Ge?chtete Feuershella', N'84', N'17862', N'40', N'138', N'0', N'1800', N'7', N'1', N'0', N'2', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9930', N'UrgDTH_ID_BigMudMan', N'Ge?chteter gro?er Matschmensch', N'90', N'49476', N'40', N'138', N'0', N'2400', N'8', N'9', N'4', N'1', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9931', N'UrgDTH_ID_FireTaitan', N'Ge?chteter Feuertitan', N'90', N'39581', N'40', N'138', N'0', N'2000', N'14', N'9', N'4', N'2', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9932', N'UrgDTH_ID_Gagoyle', N'Ge?chteter Gargoyle', N'84', N'17862', N'40', N'138', N'0', N'1000', N'7', N'6', N'0', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9933', N'UrgDTH_ID_Weasel', N'Ge?chteter Wiesel', N'90', N'49476', N'40', N'138', N'0', N'1600', N'8', N'9', N'4', N'3', N'0', N'1200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9934', N'UrgDTH_ID_FandomCornelius', N'W?tender Cornelius', N'95', N'94716', N'50', N'138', N'0', N'2000', N'7', N'6', N'1', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9935', N'LevH_ID_NestBat', N'Mutierte Fledermaus', N'95', N'75772', N'50', N'110', N'0', N'1800', N'8', N'7', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9936', N'LevH_ID_NestCaimanJunior', N'Mutierter Juniorkaiman', N'95', N'60619', N'40', N'138', N'0', N'1000', N'7', N'2', N'4', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9937', N'LevH_ID_NestBoogy', N'Mutierte Schildie', N'95', N'75772', N'40', N'110', N'0', N'1300', N'8', N'8', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9938', N'LevH_ID_NestCaiman', N'Mutierter Kaiman', N'96', N'79560', N'40', N'138', N'0', N'1100', N'7', N'2', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9939', N'LevH_ID_NestCaimanGiant', N'Mutierter Riesenkaiman', N'96', N'79560', N'40', N'138', N'0', N'1300', N'7', N'6', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9940', N'LevH_ID_NestCrab', N'Mutierte Krabbe', N'97', N'83541', N'40', N'110', N'0', N'1800', N'7', N'8', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9941', N'LevH_ID_NestMadSlug', N'Mutierte verr?ckte Schnecke', N'97', N'83541', N'40', N'138', N'0', N'1000', N'8', N'9', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9942', N'LevH_ID_NestAlca', N'Mutierter Alki', N'98', N'87717', N'40', N'138', N'0', N'1000', N'7', N'9', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9943', N'LevH_ID_NestBaridon', N'Mutierter Baridon', N'98', N'70173', N'50', N'135', N'0', N'1000', N'7', N'9', N'4', N'2', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9944', N'LevH_ID_NestWeasel', N'Mutierter Wiesel', N'98', N'87717', N'50', N'135', N'0', N'1000', N'8', N'9', N'4', N'3', N'0', N'1000');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9945', N'LevH_ID_NestGagoyle', N'Mutierter Gargoyle', N'98', N'87717', N'50', N'135', N'0', N'1000', N'7', N'6', N'4', N'3', N'0', N'600');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9946', N'LevH_KingBoogy', N'Mutierte K?nigsschilde', N'100', N'241776', N'40', N'138', N'0', N'2000', N'8', N'8', N'1', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9947', N'LevH_BombBoogy01', N'Mutierte Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9948', N'LevH_BombBoogy02', N'Mutierte Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9949', N'LevH_BombBoogy03', N'Mutierte Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9950', N'LevH_BombBoogy04', N'Mutierte Bombenschildie', N'99', N'25584', N'30', N'40', N'0', N'500', N'8', N'6', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9951', N'LevH_BoogyGuardian', N'Mutierte Bombenschildie', N'98', N'87717', N'50', N'110', N'0', N'1500', N'8', N'6', N'4', N'3', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9952', N'LevH_EmperorCrab', N'Mutierte K?nigskrabbe', N'100', N'241776', N'55', N'130', N'0', N'4000', N'7', N'6', N'1', N'3', N'0', N'1700');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9953', N'Meily', N'Meily', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9954', N'Bellen', N'Bellen', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9955', N'Hermosia', N'Hermosia', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9956', N'Ayollar', N'Ayollar', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9957', N'Salyon', N'Salyon', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9958', N'KQCakeDoor', N'Rankenbaum', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9959', N'XiaomingR_7th', N'Chaoming', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9960', N'XiaomingB_7th', N'Chaoming', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9961', N'BallCake01', N'Kuchen ', N'150', N'1', N'350', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9962', N'BallCannon02', N'Limokanone', N'150', N'1', N'240', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'9963', N'Xiaoming_7th', N'Shaoming', N'0', N'1000', N'80', N'110', N'1', N'1500', N'0', N'0', N'0', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10000', N'B_Slime', N'Slime Ball', N'1', N'4091373', N'30', N'105', N'0', N'700', N'0', N'0', N'0', N'24', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10003', N'E_Box_Black03', N'Obsidiantruhe', N'150', N'0', N'0', N'0', N'0', N'1600', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10004', N'BH_SnowBall', N'Schneehaufen', N'150', N'0', N'0', N'0', N'0', N'1000', N'0', N'0', N'5', N'9', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10005', N'BallSnow', N'Schneeball', N'150', N'1', N'260', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10006', N'BallCrush', N'Schmetterball', N'150', N'1', N'240', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10007', N'E_Snowman', N'Herr Frost', N'10', N'561', N'40', N'125', N'0', N'1300', N'7', N'1', N'4', N'17', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10008', N'E_SantaClaus', N'Weihnachtsmann', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10009', N'E_CorruptRodolph', N'B?ser Geist', N'1', N'100', N'40', N'135', N'0', N'600', N'8', N'4', N'0', N'3', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10010', N'E_DadNPC', N'Schleimk?nig', N'115', N'990000', N'50', N'115', N'1', N'3200', N'8', N'6', N'0', N'4', N'1', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10011', N'E_MomNPC', N'Schleimk?nigin', N'115', N'990000', N'40', N'110', N'1', N'2700', N'8', N'6', N'0', N'4', N'1', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10012', N'E_CacaoBud', N'Unbekannter Samen', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10013', N'E_CaCaoSlime', N'Merkw?rdiger Schleim', N'2', N'38', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10014', N'E_CaCaoPrisoner', N'Merkw?rdiger Gefangener', N'81', N'3069', N'40', N'127', N'0', N'1200', N'7', N'1', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10015', N'E_CaCaoMineMole', N'Merkw?rdiger Minenmaulwurf', N'107', N'4310', N'40', N'138', N'0', N'1500', N'7', N'9', N'0', N'3', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10016', N'E_HiveTree', N'Honigwabenbaum', N'150', N'0', N'0', N'0', N'0', N'800', N'0', N'0', N'5', N'10', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10017', N'E_DadSlime', N'Schleimk?nig', N'115', N'990000', N'50', N'115', N'0', N'3200', N'8', N'9', N'0', N'4', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10018', N'E_MomSlime', N'Schleimk?nigin', N'115', N'990000', N'40', N'110', N'0', N'2700', N'8', N'9', N'0', N'4', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10019', N'E_DannySlime', N'Daniel Schleim', N'115', N'990000', N'30', N'115', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10020', N'E_MikeSlime', N'Michael Schleim', N'115', N'990000', N'50', N'110', N'0', N'1300', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10021', N'E_BallHive', N'Honigwabe', N'150', N'1', N'300', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10022', N'E_DanielNPC', N'Daniel Schleim', N'0', N'0', N'0', N'0', N'1', N'1300', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10023', N'BallEgg', N'Eierbombe', N'150', N'1', N'320', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10024', N'Egg_GoldEgg', N'Goldenes Ei', N'150', N'2000', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10025', N'Egg_Boogy01', N'Schildie', N'125', N'1000', N'30', N'95', N'0', N'1000', N'8', N'8', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10026', N'Egg_Boogy02', N'SchildieRitter', N'125', N'1000', N'30', N'110', N'0', N'1400', N'8', N'8', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10027', N'Egg_Boogy03', N'SchildieK?nig', N'125', N'1000', N'40', N'138', N'0', N'2000', N'8', N'8', N'0', N'13', N'0', N'400');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10028', N'Egg_Honeying01', N'Bienchen', N'125', N'1000', N'40', N'110', N'0', N'1000', N'8', N'9', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10029', N'Egg_Honeying02', N'FlammenBienchen', N'125', N'1000', N'40', N'138', N'0', N'2500', N'8', N'9', N'0', N'13', N'0', N'500');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10030', N'Egg_Honeying03', N'RiesenBienchen', N'125', N'1000', N'50', N'133', N'0', N'5000', N'8', N'6', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10031', N'Egg_Kebing', N'Kebing', N'125', N'1000', N'80', N'110', N'0', N'1000', N'7', N'9', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10032', N'Egg_Crab', N'Krabbe', N'125', N'1000', N'20', N'105', N'0', N'1000', N'7', N'8', N'0', N'13', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10033', N'Egg_KingCrab', N'K?nigskrabbe', N'125', N'1000', N'30', N'110', N'0', N'1600', N'7', N'8', N'0', N'13', N'0', N'300');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10034', N'Egg_Door', N'R?ckruft?r f?r Monster', N'0', N'76500', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10035', N'Egg_Digger', N'Bergarbeiter Palmers', N'0', N'0', N'0', N'0', N'1', N'1200', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10036', N'Egg_Melee', N'ShortRange Mine ', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'13', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10037', N'Egg_Range', N'LongRange Mine', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'0', N'13', N'2', N'100');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10038', N'WarL_ForasChief', N'ForasAnf?hrer', N'50', N'40410', N'50', N'100', N'0', N'1000', N'0', N'1', N'4', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10039', N'WarL_Devildom', N'Soldat des Teufelsdoms', N'55', N'22860', N'55', N'110', N'0', N'1000', N'4', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10040', N'WarL_FCitrie', N'Flammencitra', N'57', N'192180', N'85', N'170', N'0', N'1000', N'8', N'10', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10041', N'WarL_TCitrie', N'Blitzcitra', N'60', N'208140', N'85', N'170', N'0', N'1000', N'8', N'10', N'2', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10042', N'WarL_S_FMurumuru', N'Flammenmurumuru', N'55', N'50', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10043', N'WarL_S_TMurumuru', N'Blitzmurumuru', N'55', N'50', N'50', N'100', N'0', N'1000', N'8', N'9', N'0', N'28', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10044', N'WarL_EntranceGate', N'TeufelsdomBaracken', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10045', N'WarL_BrainWash', N'Gehirnw?scheApparatur', N'50', N'40410', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'28', N'0', N'8800');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10046', N'WarL_Pore', N'EnergieErz', N'50', N'40410', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'28', N'0', N'8200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10047', N'WarL_Foras', N'Gehirngewaschene Foras', N'50', N'20205', N'50', N'100', N'0', N'1800', N'1', N'4', N'0', N'28', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10048', N'WarL_MForas', N'Gerettete Foras', N'50', N'20205', N'50', N'100', N'0', N'1800', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10049', N'WarL_PForas', N'Gefangene Foras', N'50', N'20205', N'50', N'100', N'0', N'1800', N'1', N'4', N'0', N'25', N'2', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10050', N'WarL_Door1', N'Tor 1', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10051', N'WarL_Door2', N'Tor 2', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10052', N'Job1_Sentinelm', N'Shadow %n', N'99', N'3519', N'40', N'127', N'0', N'1000', N'19', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10053', N'Job1_Sentinelf', N'Shadow %n', N'99', N'3519', N'40', N'127', N'0', N'1000', N'19', N'4', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10054', N'Tiros', N'Tiros, Anf?hrer der Kreuzritter', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10055', N'LightOrb01', N'LichtKugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10056', N'LightOrb02', N'LichtKugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10057', N'LightOrb03', N'LichtKugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10058', N'LightOrb04', N'LichtKugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10059', N'LightOrb05', N'LichtKugel', N'100', N'3825', N'50', N'100', N'0', N'1000', N'0', N'0', N'0', N'12', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10060', N'LightField01', N'Shining Earth', N'115', N'3000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10061', N'LightField02', N'Shining Earth', N'115', N'5000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10062', N'LightField03', N'Shining Earth', N'115', N'10000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10063', N'LightField04', N'Shining Earth', N'115', N'15000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10064', N'LightField05', N'Shining Earth', N'115', N'30000', N'40', N'130', N'0', N'1000', N'0', N'0', N'0', N'27', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10065', N'WarL_TCircle', N'Elektrische Sph?re', N'55', N'182880', N'40', N'60', N'0', N'1000', N'8', N'0', N'2', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10100', N'BallHoney', N'Honigball', N'150', N'1', N'320', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10101', N'BallHive', N'Bienenstockball', N'150', N'1', N'300', N'170', N'0', N'1000', N'8', N'10', N'0', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10102', N'FiestaFlag', N'Flagge "Fiesta"', N'150', N'1', N'0', N'0', N'0', N'2000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10103', N'FlagPoint', N'Flagge "Riesenpunkt"', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10104', N'RedPoint', N'Punkt f?r das rote Team', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10105', N'BluePoint', N'Punkt f?r das blaue Team', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10106', N'KQSpringDoor', N'Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'0', N'20', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10107', N'SpUpShoes', N'Schnelle Items', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10108', N'SpImShield', N'Stahl Items', N'150', N'1', N'0', N'0', N'0', N'1000', N'0', N'0', N'4', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10109', N'KQSpring_Rman', N'Manager des roten Teams', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10110', N'KQSpring_Bman', N'Manager des blauen Teams', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10111', N'RouT_Tina', N'Tina', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10112', N'RouT_Smith', N'Schmied Swanson', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10113', N'RouT_Soul', N'Heilerin Sera', N'0', N'0', N'0', N'0', N'1', N'900', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10114', N'RouT_Skill', N'Lehrmeisterin Vayne', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10115', N'RouT_Gate', N'Mysteri?ses Tor', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'13', N'0', N'250');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10116', N'MapLinkGate_Rou', N'Roumen', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10117', N'MapLinkGate_Eld', N'Elderine', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10118', N'MapLinkGate_Urg', N'Uruga', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10119', N'MapLinkGate_EldGbl02', N'Sandige H?gel', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10120', N'MapLinkGate_Urg_Alruin', N'Ruinen von Alberstol', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10121', N'MapLinkGate_Adl', N'Adelia', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10122', N'RouT_Slime', N'Schleim', N'3', N'25', N'40', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10123', N'RouT_Honeying', N'Bienchen', N'5', N'30', N'20', N'105', N'0', N'1000', N'8', N'9', N'0', N'1', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'10124', N'MapLinkGate_Bera', N'Bera', N'0', N'0', N'0', N'0', N'1', N'1000', N'0', N'0', N'5', N'6', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12000', N'JokerEvent20', N'Seelenloser Joker', N'28', N'834', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12001', N'JokerEvent20N', N'Seelenloser Joker', N'28', N'834', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12002', N'JokerEvent20Big', N'W?tender Joker', N'29', N'12500', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12003', N'JokerEvent30', N'Seelenloser Joker', N'36', N'1500', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12004', N'JokerEvent30N', N'Seelenloser Joker', N'36', N'1500', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12005', N'JokerEvent30Big', N'W?tender Joker', N'37', N'20000', N'40', N'115', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12006', N'JokerEvent40', N'Seelenloser Joker', N'46', N'2000', N'40', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12007', N'JokerEvent40N', N'Seelenloser Joker', N'46', N'2000', N'40', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12008', N'JokerEvent40Big', N'W?tender Joker', N'47', N'25000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12009', N'JokerEvent50', N'Seelenloser Joker', N'56', N'2700', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12010', N'JokerEvent50N', N'Seelenloser Joker', N'56', N'2700', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12011', N'JokerEvent50Big', N'W?tender Joker', N'57', N'35000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12012', N'JokerEvent60', N'Seelenloser Joker', N'68', N'3500', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12013', N'JokerEvent60N', N'Seelenloser Joker', N'68', N'3500', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12014', N'JokerEvent60Big', N'W?tender Joker', N'69', N'45000', N'50', N'127', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12015', N'JokerEvent70', N'Seelenloser Joker', N'78', N'3300', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12016', N'JokerEvent70N', N'Seelenloser Joker', N'78', N'3300', N'50', N'127', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12017', N'JokerEvent70Big', N'W?tender Joker', N'80', N'60000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12018', N'JokerEvent80', N'Seelenloser Joker', N'87', N'11000', N'50', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12019', N'JokerEvent80N', N'Seelenloser Joker', N'87', N'11000', N'50', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12020', N'JokerEvent80Big', N'W?tender Joker', N'89', N'75000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12021', N'JokerEvent90', N'Seelenloser Joker', N'97', N'15000', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12022', N'JokerEvent90N', N'Seelenloser Joker', N'97', N'15000', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12023', N'JokerEvent90Big', N'W?tender Joker', N'99', N'120000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12024', N'JokerEvent100', N'Seelenloser Joker', N'106', N'17000', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12025', N'JokerEvent100N', N'Seelenloser Joker', N'106', N'17000', N'40', N'115', N'0', N'1000', N'0', N'0', N'0', N'0', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'12026', N'JokerEvent100Big', N'W?tender Joker', N'106', N'175000', N'40', N'110', N'0', N'4000', N'0', N'0', N'0', N'2', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50000', N'Daliy_Check', N'Kingdom Quest abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50001', N'Daliy_Check_Tower01', N'Turm von Iyzel abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50002', N'Daliy_Check_Tower02', N'Kristallschloss abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50003', N'Daliy_Check_d_graveyard', N'Drachengrab abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50004', N'Daliy_Check_d_Leviathan', N'LeviathanNest abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50005', N'Daliy_Check_Tower03', N'Geheimes Labor abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50006', N'Daliy_Check_Adlf', N'Brennendes Adelia abgeschlossen', N'1', N'27', N'30', N'105', N'0', N'1000', N'8', N'9', N'0', N'4', N'0', N'200');
GO
INSERT INTO [dbo].[MobInfo] ([ID], [InxName], [Name], [Level], [MaxHP], [WalkSpeed], [RunSpeed], [IsNPC], [Size], [WeaponType], [ArmorType], [GradeType], [Type], [IsPlayerSide], [AbsoluteSize]) VALUES (N'50007', N'Daliy_Merchant', N'Ruhmh?ndlerin Miss Lee', N'0', N'0', N'0', N'0', N'1', N'1100', N'0', N'0', N'5', N'6', N'0', N'200');
GO

-- ----------------------------
-- Table structure for [dbo].[npcitemlist]
-- ----------------------------
DROP TABLE [dbo].[npcitemlist]
GO
CREATE TABLE [dbo].[npcitemlist] (
[MobID] int NOT NULL ,
[Slot] smallint NOT NULL ,
[ItemID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of npcitemlist
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[npctable]
-- ----------------------------
DROP TABLE [dbo].[npctable]
GO
CREATE TABLE [dbo].[npctable] (
[MobID] smallint NOT NULL ,
[MapID] smallint NOT NULL ,
[X] int NOT NULL ,
[Y] int NOT NULL ,
[Rotation] int NOT NULL ,
[HasMenu] tinyint NOT NULL ,
[Role] tinyint NOT NULL ,
[RoleArgument] tinyint NOT NULL 
)


GO

-- ----------------------------
-- Records of npctable
-- ----------------------------

-- ----------------------------
-- Indexes structure for table MapInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[MapInfo]
-- ----------------------------
ALTER TABLE [dbo].[MapInfo] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table MobInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[MobInfo]
-- ----------------------------
ALTER TABLE [dbo].[MobInfo] ADD PRIMARY KEY ([ID])
GO
