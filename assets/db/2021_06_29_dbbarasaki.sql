/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : dbbarasaki

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/06/2021 00:39:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/263a1fd00144db5b62a1593eab85e2b7.jpg\" style=\"width: 100%;\"><br></p></td><td><p>HISTORY</p><p>Barasaki is the corporate which provide you the solution for your \r\ncompany needs, orientation to your demand, customize it and bring to \r\nyour benefit.Starting its operation on January 2013 , barasaki providing\r\n all kind of standard and customize heating’s for industrial grade; band\r\n heater, cartridge heater, strip heater, tubular heater and such kind, \r\ninclusive types of thermocouple and its range. Provide also the solution\r\n for measurement tools, Weighing Scale and any kind of Bearings, Linear \r\nMotion and E-Chain.</p><p>Beginning of 2014, barasaki began to develop the business market across \r\nall industrial needs. manufacturing; mechanical and electronic function,\r\n heavy industry, office &amp; environment and safety. With all of \r\nstrength we have, believed in the near future barasaki can provided \r\ndirect profit to the customer through competitive and reasonable \r\npricing, as well timing on delivery with trust.</p><p>Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p></td></tr><tr><td><h2>Vision</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Become a solution for every needs\r\n  										</h4><h2>Mission</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Addressing and deliver the best at most satisfaction to each and every customer</h4><h2>Value</h2><br><ul><li><b>Services to the best\r\n                      </b></li></ul><p style=\"margin-left: 25px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commitment to quality and expectation \r\n                      </p></td><td><p>&nbsp;<img src=\"http://localhost/barasaki-btm/assets/images/tmp/4dbca5a24330c22831084879d439ffae.png\" style=\"width: 100%;\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', 'assets/images/articles/project-pju.jpg', 'Y');
INSERT INTO `articles` VALUES (2, 34, 12, 'Visi dan Misi', '<p><!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"--\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]--><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><u><span style=\"font-size: 12pt; line-height: 107%; font-family: \"Source Sans Pro\";\">VISI, MISI, DAN NILAI </span></u><u><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\"Times New Roman\",\"serif\"\"></span></u></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Visi</span><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:51.35pt;margin-bottom:\r\n8.0pt;margin-left:.5in;text-align:justify\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Menjadi\r\nPerusahaan Yang Profesional, Berkembang dan Bermanfaat untuk Memenuhi Kebutuhan\r\nMasyarakat, Bangsa, dan Negara”</span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Misi</span><i><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Membangun Bisnis dan Aset\r\nProduktif secara terintegrasi guna memberikan Manfaat & Memberikan layanan\r\njasa pemeliharaan yang profesional, handal dan berorientasi pada karakter\r\npelanggan” </span></i><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Nilai </span><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-indent:.5in\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Cepat,\r\nTanggap dan Penuh Tanggung Tawab”</span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span>', 'visi_misi', 'assets/images/articles/project-pju.jpg', 'Y');
INSERT INTO `articles` VALUES (3, 4, 14, 'Kontraktor', '', '', NULL, 'Y');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'p',
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Air Conditioner', NULL, 'product', 'Y');
INSERT INTO `category` VALUES (2, 'Security System', NULL, 'product', 'Y');
INSERT INTO `category` VALUES (3, 'CCTV', NULL, 'product', 'Y');
INSERT INTO `category` VALUES (4, 'contractor', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (5, 'procurement', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (6, 'maintenance', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (9, 'PJU', 'products/category/9', 'product', 'Y');
INSERT INTO `category` VALUES (10, 'maintenance & services', NULL, 'services', 'N');
INSERT INTO `category` VALUES (11, 'PJU Services', NULL, 'services', 'N');
INSERT INTO `category` VALUES (12, 'Visi dan Misi', NULL, 'articles', 'Y');
INSERT INTO `category` VALUES (13, 'About Us', NULL, 'articles', 'Y');
INSERT INTO `category` VALUES (14, 'Contractor', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (15, 'procurement', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (16, 'maintencae', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (17, 'pemeliharaan', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (18, 'Klin Air', NULL, 'product', 'Y');
INSERT INTO `category` VALUES (19, 'Tes', 'products/category/19', 'product', 'Y');

-- ----------------------------
-- Table structure for category_type
-- ----------------------------
DROP TABLE IF EXISTS `category_type`;
CREATE TABLE `category_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category_type
-- ----------------------------
INSERT INTO `category_type` VALUES (1, 'product', 'Y');
INSERT INTO `category_type` VALUES (2, 'services', 'Y');
INSERT INTO `category_type` VALUES (3, 'articles', 'Y');
INSERT INTO `category_type` VALUES (4, 'news', 'Y');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'assets/images/compro/favicon.ico',
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `since_years` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', 'Y', 'assets/images/compro/index.ico', 'assets/images/compro/logo1.png', 2017);

-- ----------------------------
-- Table structure for company_legal
-- ----------------------------
DROP TABLE IF EXISTS `company_legal`;
CREATE TABLE `company_legal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company_legal
-- ----------------------------
INSERT INTO `company_legal` VALUES (1, 'Akte Pendirian Perusahaan/Company’s legal', '<!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG></o:AllowPNG>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><span style=\"font-family:\" times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:\"times=\"\" roman\";=\"\" mso-bidi-font-style:italic\"=\"\"><span style=\"mso-list:Ignore\"><span style=\"font: 7pt \" source=\"\" sans=\"\" pro\";\"=\"\"> </span></span></span><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">Akte\r\nPendirian Perusahaan/Company’s legal No. 60 TH. 29 Maret 2019. Suwanda, SH.,\r\nMkn </span><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\"></span><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">\r\n\r\n</span>', 'flaticon-certificate', 'assets/images/compro/legal-default.png', 1, 'Y');
INSERT INTO `company_legal` VALUES (2, 'Pengesahan Akta Pendirian Perusahaan/Company’s Legal ', '<span style=\"font-family: &quot;Source Sans Pro&quot;;\">Pengesahan\r\nAkta Pendirian Perusahaan/Company’s Legal Approval Keputusan Mentri Hukum dan\r\nHak Asasi Manusia Republik Indonesia Nomor AHU-0019186.AH.01.01 Tahun 2019</span>', 'flaticon-certificate', 'assets/images/compro/legal-default.png', 2, 'Y');
INSERT INTO `company_legal` VALUES (3, 'Surat Keterangan Terdaftar dari Kementrian Keuangan Republik Indonesia Direktorat Jenderal Pajak', '<p>Surat Keterangan Terdaftar dari Kementrian Keuangan Republik Indonesia Direktorat Jenderal Pajak, Kantor Wilayah DPJ Jakarta Utara Pratama Jakarta Pluit. Nomor S-2103KT/WPJ.21/KP.0703/2019<br></p>', 'flaticon-certificate', 'assets/images/compro/legal-default.png', 3, 'Y');
INSERT INTO `company_legal` VALUES (4, 'Nomor Induk Berusaha (NIB)', '<p>Nomor Induk Berusaha (NIB) 9120207492131<br></p>', 'flaticon-certificate', 'assets/images/compro/paper_certificate.png', 4, 'Y');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NULL DEFAULT NULL,
  `c_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `c_detail` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `c_url` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `c_message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 1, 'p', '(021) 22676044', '', '', 'Y');
INSERT INTO `contact` VALUES (2, 1, 'wa', '+6281 1860 6060', '628118606060', 'Halo%20Admin,%20Saya%20Membutuhkan%20Informasi%20di%20Perusahaan%20anda', 'Y');
INSERT INTO `contact` VALUES (3, 1, 'email', 'afifuddin@barasaki-btm.com', '', '', 'Y');
INSERT INTO `contact` VALUES (9, 1, 'email', 'sales@barasaki-btm.com', '', '', 'Y');
INSERT INTO `contact` VALUES (10, 1, 'email', 'andrysk@barasaki-btm.com', '', '', 'Y');

-- ----------------------------
-- Table structure for contact_type
-- ----------------------------
DROP TABLE IF EXISTS `contact_type`;
CREATE TABLE `contact_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `c_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contact_type
-- ----------------------------
INSERT INTO `contact_type` VALUES (1, 'p', 'Phone');
INSERT INTO `contact_type` VALUES (2, 'wa', 'Whatsapp');
INSERT INTO `contact_type` VALUES (3, 'email', 'Email');
INSERT INTO `contact_type` VALUES (4, 'handphone', 'Handphone');
INSERT INTO `contact_type` VALUES (5, 'other', 'Other');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'Igus', '', 'assets/images/customer/igus.PNG', 'https://www.igus.co.id/', 'Y');
INSERT INTO `customer` VALUES (9, 'Philips', '', 'assets/images/customer/philips.png', 'https://www.philips.co.id', 'Y');
INSERT INTO `customer` VALUES (10, 'Ridgid', '', 'assets/images/customer/ridgid.png', 'https://www.ridgid.eu', 'Y');
INSERT INTO `customer` VALUES (11, 'Safety Jogger', '', 'assets/images/customer/safety_joger.PNG', 'https://www.safetyjogger.com/en/eu/', 'Y');
INSERT INTO `customer` VALUES (12, 'Sanwa', '', 'assets/images/customer/sanwa.PNG', 'https://www.sanwa-meter.co.jp', 'Y');
INSERT INTO `customer` VALUES (13, 'Shutter', '', 'assets/images/customer/shutte.PNG', 'https://www.shuter.co.id/', 'Y');
INSERT INTO `customer` VALUES (14, 'Sumtak', '', 'assets/images/customer/sumtak.PNG', '', 'Y');
INSERT INTO `customer` VALUES (15, 'Suntes', '', 'assets/images/customer/suntes.PNG', 'https://www.suntes.co.jp/en/', 'Y');

-- ----------------------------
-- Table structure for distributor
-- ----------------------------
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distributor
-- ----------------------------
INSERT INTO `distributor` VALUES (16, 'Aemic', '', 'assets/images/distributor/aemic.PNG', 'http://ae-mic.com/en/', 'Y');

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES (1, 'TK', 'Taman Kanak - Kanak', 1, 'Y');
INSERT INTO `education` VALUES (2, 'SD', 'Sekolah Dasar', 2, 'Y');
INSERT INTO `education` VALUES (3, 'SMP', 'Sekolah Menengah Pertama', 3, 'Y');
INSERT INTO `education` VALUES (4, 'SMA', 'Sekolah Menengah Atas', 4, 'Y');
INSERT INTO `education` VALUES (5, 'D3', 'Diploma Tiga', 5, 'Y');
INSERT INTO `education` VALUES (6, 'S1', 'Strata Satu', 1, 'Y');
INSERT INTO `education` VALUES (7, 'S2', 'Strata Dua', 1, 'Y');
INSERT INTO `education` VALUES (8, 'S3', 'Strata Tiga', 1, 'Y');

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES (1, 1, 'info@iwebebs.com', 'Y');
INSERT INTO `email` VALUES (2, 1, 'info.iwebe@yahoo.com', 'Y');
INSERT INTO `email` VALUES (3, 1, 'iwebebs@gmail.com', 'Y');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `position_id` int NOT NULL,
  `education_id` int NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `fullname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pob` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '1', 6, 5, 1, 'Ilfan Taufik', 'Padang', '2019-09-17', NULL, NULL, NULL, 'Y', 'assets/images/employee/ilfan.jpg');

-- ----------------------------
-- Table structure for icon
-- ----------------------------
DROP TABLE IF EXISTS `icon`;
CREATE TABLE `icon`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'flaticon-',
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of icon
-- ----------------------------
INSERT INTO `icon` VALUES (1, 'flaticon-worker', 'Y');
INSERT INTO `icon` VALUES (2, 'flaticon-gear', 'Y');
INSERT INTO `icon` VALUES (3, 'flaticon-ui', 'Y');
INSERT INTO `icon` VALUES (4, 'flaticon-ui-1', 'Y');
INSERT INTO `icon` VALUES (5, 'flaticon-property', 'Y');
INSERT INTO `icon` VALUES (6, 'flaticon-worker-1', 'Y');
INSERT INTO `icon` VALUES (7, 'flaticon-engineer', 'Y');
INSERT INTO `icon` VALUES (8, 'flaticon-car-radiator', 'Y');
INSERT INTO `icon` VALUES (9, 'flaticon-air-conditioner', 'Y');
INSERT INTO `icon` VALUES (10, 'flaticon-garage', 'Y');
INSERT INTO `icon` VALUES (11, 'flaticon-duct-tape', 'Y');
INSERT INTO `icon` VALUES (12, 'flaticon-pipe', 'Y');
INSERT INTO `icon` VALUES (13, 'flaticon-wire', 'Y');
INSERT INTO `icon` VALUES (14, 'flaticon-cctv', 'Y');
INSERT INTO `icon` VALUES (15, 'flaticon-password', 'Y');
INSERT INTO `icon` VALUES (16, 'flaticon-phone-call', 'Y');
INSERT INTO `icon` VALUES (17, 'flaticon-battery', 'Y');
INSERT INTO `icon` VALUES (18, 'flaticon-fire-alarm', 'Y');
INSERT INTO `icon` VALUES (19, 'flaticon-fire-alarm-1', 'Y');
INSERT INTO `icon` VALUES (20, 'flaticon-fire-button', 'Y');
INSERT INTO `icon` VALUES (21, 'flaticon-technical-support', 'Y');
INSERT INTO `icon` VALUES (22, 'flaticon-customer-support', 'Y');
INSERT INTO `icon` VALUES (23, 'flaticon-construction', 'Y');
INSERT INTO `icon` VALUES (24, 'flaticon-maintenance', 'Y');
INSERT INTO `icon` VALUES (28, 'flaticon-certificate', 'Y');

-- ----------------------------
-- Table structure for log_articles
-- ----------------------------
DROP TABLE IF EXISTS `log_articles`;
CREATE TABLE `log_articles`  (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_articles
-- ----------------------------
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for \r\nyour company needs, orientation to your demand, customize it and bring \r\nto your benefit.Starting its operation on January 2013 , barasaki \r\nproviding all kind of standard and customize heating’s for industrial \r\ngrade; band heater, cartridge heater, strip heater, tubular heater and \r\nsuch kind, inclusive types of thermocouple and its range. Provide also \r\nthe solution for measurement tools, Weighing Scale and any kind of \r\nBearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business \r\nmarket across all industrial needs. manufacturing; mechanical and \r\nelectronic function, heavy industry, office &amp; environment and \r\nsafety. With all of strength we have, believed in the near future \r\nbarasaki can provided direct profit to the customer through competitive \r\nand reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 43, 'admin', 'update', '2021-06-27 00:13:26');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\" width=\"1001\" height=\"1013\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business expansion and aggressive market penetration, covering solution to a diverse client base.</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 44, 'admin', 'update', '2021-06-27 00:23:11');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/263a1fd00144db5b62a1593eab85e2b7.jpg\" style=\"width: 100%;\"><br></p></td><td><p>HISTORY</p><p>Barasaki is the corporate which provide you the solution for your \r\ncompany needs, orientation to your demand, customize it and bring to \r\nyour benefit.Starting its operation on January 2013 , barasaki providing\r\n all kind of standard and customize heating’s for industrial grade; band\r\n heater, cartridge heater, strip heater, tubular heater and such kind, \r\ninclusive types of thermocouple and its range. Provide also the solution\r\n for measurement tools, Weighing Scale and any kind of Bearings, Linear \r\nMotion and E-Chain.</p><p>Beginning of 2014, barasaki began to develop the business market across \r\nall industrial needs. manufacturing; mechanical and electronic function,\r\n heavy industry, office &amp; environment and safety. With all of \r\nstrength we have, believed in the near future barasaki can provided \r\ndirect profit to the customer through competitive and reasonable \r\npricing, as well timing on delivery with trust.</p><p>Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p></td></tr><tr><td><h2>Vision</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Become a solution for every needs\r\n  										</h4><h2>Mission</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Addressing and deliver the best at most satisfaction to each and every customer</h4><h2>Value</h2><br><ul><li><b>Services to the best\r\n                      </b></li></ul><p style=\"margin-left: 25px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commitment to quality and expectation \r\n                      </p></td><td><p>&nbsp;<img src=\"http://localhost/barasaki-btm/assets/images/tmp/4dbca5a24330c22831084879d439ffae.png\" style=\"width: 100%;\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 45, 'admin', 'update', '2021-06-27 00:34:57');
INSERT INTO `log_articles` VALUES (4, 0, 0, 'Company Profile', '<p>&lt;iframe src=\"https://drive.google.com/file/d/1ZYMDK4-f8XmupBWctH5RKBQGf0Xz0i5H/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"&gt;&lt;/iframe&gt;<br></p>', '', NULL, 'Y', 46, 'admin', 'insert', '2021-06-28 06:18:12');

-- ----------------------------
-- Table structure for log_category
-- ----------------------------
DROP TABLE IF EXISTS `log_category`;
CREATE TABLE `log_category`  (
  `id` int NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'p',
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_category
-- ----------------------------
INSERT INTO `log_category` VALUES (19, 'Tes', 'products/category/19', 'product', 'Y', 24, 'admin', 'insert', '2021-06-26 01:46:18');
INSERT INTO `log_category` VALUES (9, 'PJU', 'products/category/9', 'product', 'Y', 25, 'admin', 'update', '2021-06-26 06:39:22');
INSERT INTO `log_category` VALUES (9, 'PJU', 'products/category/9', 'product', 'Y', 26, 'admin', 'update', '2021-06-26 06:39:27');

-- ----------------------------
-- Table structure for log_company
-- ----------------------------
DROP TABLE IF EXISTS `log_company`;
CREATE TABLE `log_company`  (
  `id` int UNSIGNED NOT NULL,
  `fullname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_company
-- ----------------------------
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', 'Y', 13, 'admin', 'update', '2021-06-24 14:03:30', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', 'Y', 14, 'admin', 'update', '2021-06-24 14:03:30', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', 'Y', 15, 'admin', 'update', '2021-06-24 14:04:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', 'Y', 16, 'admin', 'update', '2021-06-24 14:04:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 17, 'admin', 'update', '2021-06-24 14:08:49', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 18, 'admin', 'update', '2021-06-24 14:08:49', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 19, 'admin', 'update', '2021-06-24 14:10:21', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 20, 'admin', 'update', '2021-06-24 14:10:21', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 21, 'admin', 'update', '2021-06-24 14:11:23', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 22, 'admin', 'update', '2021-06-24 14:14:03', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 23, 'admin', 'update', '2021-06-24 14:14:03', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 24, 'admin', 'update', '2021-06-24 14:16:45', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 25, 'admin', 'update', '2021-06-24 14:16:45', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 26, 'admin', 'update', '2021-06-24 14:18:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 27, 'admin', 'update', '2021-06-24 14:18:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 28, 'admin', 'update', '2021-06-24 14:58:20', 'assets/images/compro/logo1.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 29, 'admin', 'update', '2021-06-24 14:59:08', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 30, 'admin', 'update', '2021-06-24 14:59:51', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 31, 'admin', 'update', '2021-06-24 15:01:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 32, 'admin', 'update', '2021-06-24 15:02:42', 'assets/images/compro/logo1.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 33, 'admin', 'update', '2021-06-24 15:03:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 34, 'admin', 'update', '2021-06-24 15:04:53', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 35, 'admin', 'update', '2021-06-24 15:14:35', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 36, 'admin', 'update', '2021-06-24 15:14:43', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 37, 'admin', 'update', '2021-06-24 15:18:13', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 38, 'admin', 'update', '2021-06-24 15:18:19', NULL, 'assets/images/compro/favicon2.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', 'Y', 39, 'admin', 'update', '2021-06-24 15:21:12', NULL, 'assets/images/compro/index.ico');

-- ----------------------------
-- Table structure for log_company_legal
-- ----------------------------
DROP TABLE IF EXISTS `log_company_legal`;
CREATE TABLE `log_company_legal`  (
  `id` int NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_company_legal
-- ----------------------------

-- ----------------------------
-- Table structure for log_contact
-- ----------------------------
DROP TABLE IF EXISTS `log_contact`;
CREATE TABLE `log_contact`  (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `c_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `c_detail` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `c_url` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `c_message` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_contact
-- ----------------------------

-- ----------------------------
-- Table structure for log_customer
-- ----------------------------
DROP TABLE IF EXISTS `log_customer`;
CREATE TABLE `log_customer`  (
  `id` int NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_customer
-- ----------------------------
INSERT INTO `log_customer` VALUES (0, 'Igus', '', 'assets/images/customer/slider-default.jpg', 'https://www.igus.co.id/', 'Y', 1, 'admin', 'insert', '2021-06-25 15:34:09');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/igus.PNG', 'https://www.igus.co.id/', 'Y', 2, 'admin', 'insert', '2021-06-25 15:35:20');
INSERT INTO `log_customer` VALUES (9, 'Philips', '', 'assets/images/customer/philips.png', 'https://www.philips.co.id', 'Y', 3, 'admin', 'insert', '2021-06-25 15:37:59');
INSERT INTO `log_customer` VALUES (10, 'Ridgid', '', 'assets/images/customer/ridgid.png', 'https://www.ridgid.eu', 'Y', 4, 'admin', 'insert', '2021-06-25 15:38:24');
INSERT INTO `log_customer` VALUES (11, 'Safety Jogger', '', 'assets/images/customer/safety_joger.PNG', 'https://www.safetyjogger.com/en/eu/', 'Y', 5, 'admin', 'insert', '2021-06-25 15:39:39');
INSERT INTO `log_customer` VALUES (12, 'Sanwa', '', 'assets/images/customer/sanwa.PNG', 'https://www.sanwa-meter.co.jp', 'Y', 6, 'admin', 'insert', '2021-06-25 15:40:12');
INSERT INTO `log_customer` VALUES (13, 'Shutter', '', 'assets/images/customer/shutte.PNG', 'https://www.shuter.co.id/', 'Y', 7, 'admin', 'insert', '2021-06-25 15:42:45');
INSERT INTO `log_customer` VALUES (14, 'Sumtak', '', 'assets/images/customer/sumtak.PNG', '', 'Y', 8, 'admin', 'insert', '2021-06-25 15:45:39');
INSERT INTO `log_customer` VALUES (15, 'Suntes', '', 'assets/images/customer/suntes.PNG', 'https://www.suntes.co.jp/en/', 'Y', 9, 'admin', 'insert', '2021-06-25 15:51:30');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/suntes1.PNG', 'https://www.igus.co.id/', 'Y', 10, 'admin', 'update', '2021-06-25 16:09:11');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/sumtak1.PNG', 'https://www.igus.co.id/', 'Y', 11, 'admin', 'update', '2021-06-25 16:09:22');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/igus1.PNG', 'https://www.igus.co.id/', 'Y', 12, 'admin', 'update', '2021-06-25 16:10:34');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/ridgid1.png', 'https://www.igus.co.id/', 'Y', 13, 'admin', 'update', '2021-06-25 16:12:31');
INSERT INTO `log_customer` VALUES (1, 'Igus', '', 'assets/images/customer/igus.PNG', 'https://www.igus.co.id/', 'Y', 14, 'admin', 'update', '2021-06-25 16:12:52');
INSERT INTO `log_customer` VALUES (16, 'tes', '<p>te<br></p>', 'assets/images/customer/ACER_Aspire_All_In_One_AZ1-211.jpg', 'te', 'Y', 15, 'admin', 'insert', '2021-06-25 23:15:46');
INSERT INTO `log_customer` VALUES (16, 'tes', '<p>te<br></p>', 'assets/images/customer/ACER_Aspire_All_In_One_AZ1-211.jpg', 'te', 'Y', 16, 'admin', 'delete', '2021-06-25 23:18:56');
INSERT INTO `log_customer` VALUES (17, 'te', '', 'assets/images/customer/ACER_Aspire_All_In_One_AZ1-2111.jpg', 'te', 'Y', 17, 'admin', 'insert', '2021-06-25 23:19:40');
INSERT INTO `log_customer` VALUES (17, 'te', '', 'assets/images/customer/ACER_Aspire_All_In_One_AZ1-2111.jpg', 'te', 'Y', 18, 'admin', 'delete', '2021-06-25 23:19:45');

-- ----------------------------
-- Table structure for log_distributor
-- ----------------------------
DROP TABLE IF EXISTS `log_distributor`;
CREATE TABLE `log_distributor`  (
  `id` int NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_distributor
-- ----------------------------
INSERT INTO `log_distributor` VALUES (16, 'Aemic', '', 'assets/images/distributor/aemic.PNG', 'http://ae-mic.com/en/', 'Y', 15, 'admin', 'insert', '2021-06-25 16:28:00');
INSERT INTO `log_distributor` VALUES (17, 'tes', '', 'assets/images/distributor/ACER_Aspire_All_In_One_AZ1-211.jpg', 'te', 'Y', 16, 'admin', 'insert', '2021-06-25 23:23:07');
INSERT INTO `log_distributor` VALUES (17, 'tes', '', 'assets/images/distributor/ACER_Aspire_All_In_One_AZ1-211.jpg', 'te', 'Y', 17, 'admin', 'delete', '2021-06-25 23:24:45');
INSERT INTO `log_distributor` VALUES (18, 'tes', '', 'assets/images/distributor/ACER_Aspire_All_In_One_AZ1-211.jpg', 'tes', 'Y', 18, 'admin', 'insert', '2021-06-25 23:24:57');
INSERT INTO `log_distributor` VALUES (18, 'tes', '', 'assets/images/distributor/ACER_Aspire_All_In_One_AZ1-211.jpg', 'tes', 'Y', 19, 'admin', 'delete', '2021-06-25 23:25:01');

-- ----------------------------
-- Table structure for log_education
-- ----------------------------
DROP TABLE IF EXISTS `log_education`;
CREATE TABLE `log_education`  (
  `id` int NOT NULL,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_education
-- ----------------------------

-- ----------------------------
-- Table structure for log_email
-- ----------------------------
DROP TABLE IF EXISTS `log_email`;
CREATE TABLE `log_email`  (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_email
-- ----------------------------

-- ----------------------------
-- Table structure for log_employee
-- ----------------------------
DROP TABLE IF EXISTS `log_employee`;
CREATE TABLE `log_employee`  (
  `id` int NULL DEFAULT NULL,
  `userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `position_id` int NOT NULL,
  `education_id` int NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `fullname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pob` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_employee
-- ----------------------------

-- ----------------------------
-- Table structure for log_menu
-- ----------------------------
DROP TABLE IF EXISTS `log_menu`;
CREATE TABLE `log_menu`  (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_target` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `is_admin` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_menu
-- ----------------------------
INSERT INTO `log_menu` VALUES (32, NULL, 'About Us', 'pages/detail/about_us', NULL, '', 'Y', 'N', NULL, '', 54, 'admin', 'update', '2021-06-24 15:22:34');
INSERT INTO `log_menu` VALUES (3, NULL, 'Services', 'services', NULL, '', 'N', 'N', NULL, '', 55, 'admin', 'update', '2021-06-24 15:23:42');
INSERT INTO `log_menu` VALUES (41, NULL, 'News', 'news', NULL, '', 'N', 'N', NULL, '', 56, 'admin', 'update', '2021-06-24 15:24:04');
INSERT INTO `log_menu` VALUES (43, NULL, 'Chat Us', 'https://api.whatsapp.com/send?phone=628118202020&text=Halo%20Admin,%20Saya%20Membutuhkan%20Informasi%20di%20Perusahaan%20anda', NULL, '', 'N', 'N', NULL, '', 57, 'admin', 'update', '2021-06-24 15:24:12');
INSERT INTO `log_menu` VALUES (45, 8, 'Aemic', 'products/aemic', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 58, 'admin', 'insert', '2021-06-24 15:25:05');
INSERT INTO `log_menu` VALUES (46, 45, 'teeeee', 'tetete', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 59, 'admin', 'insert', '2021-06-24 15:51:46');
INSERT INTO `log_menu` VALUES (47, 8, 'karambiac', '', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 60, 'admin', 'insert', '2021-06-24 16:06:58');
INSERT INTO `log_menu` VALUES (48, 32, 'Tesssss', 'tt', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 61, 'admin', 'insert', '2021-06-24 17:05:22');
INSERT INTO `log_menu` VALUES (48, 46, 'Tesssss', 'tt', NULL, '', 'Y', 'N', NULL, '', 62, 'admin', 'update', '2021-06-24 17:06:53');
INSERT INTO `log_menu` VALUES (19, 18, 'Employee', 'employee', NULL, '', 'Y', 'Y', 'assets/images/compro/ador.png', 'fa fa-users', 63, 'admin', 'update', '2021-06-25 01:20:24');
INSERT INTO `log_menu` VALUES (19, 18, 'Employee', 'employee', NULL, '', 'Y', 'Y', 'assets/images/compro/ador1.png', 'fa fa-users', 64, 'admin', 'update', '2021-06-25 01:20:27');
INSERT INTO `log_menu` VALUES (19, 18, 'Employee', 'employee', NULL, '', 'Y', 'Y', 'assets/images/compro/ador2.png', 'fa fa-users', 65, 'admin', 'update', '2021-06-25 01:20:30');
INSERT INTO `log_menu` VALUES (49, 13, 'Customer', 'pages/customer', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-users', 66, 'admin', 'insert', '2021-06-25 15:12:40');
INSERT INTO `log_menu` VALUES (49, 13, 'Customer', 'customer', NULL, '', 'Y', 'Y', NULL, 'fa fa-users', 67, 'admin', 'update', '2021-06-25 15:13:03');
INSERT INTO `log_menu` VALUES (50, 13, 'Distributor', 'distributor', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', '', 68, 'admin', 'insert', '2021-06-25 16:17:38');
INSERT INTO `log_menu` VALUES (50, 13, 'Distributor', 'distributor', NULL, '', 'Y', 'Y', NULL, 'fa fa-automobile', 69, 'admin', 'update', '2021-06-25 16:19:25');
INSERT INTO `log_menu` VALUES (30, NULL, 'Certificate & Legal', 'certificate_legal', NULL, 'Sertificate, Legals & Financial Strength', 'N', 'N', NULL, '', 70, 'admin', 'update', '2021-06-25 23:26:42');
INSERT INTO `log_menu` VALUES (31, 13, 'Certificate & Legal', 'certificate_legal', NULL, '', 'N', 'Y', NULL, 'fa fa-gavel', 71, 'admin', 'update', '2021-06-25 23:26:52');
INSERT INTO `log_menu` VALUES (14, 13, 'Services', 'services', NULL, '', 'N', 'Y', NULL, 'fa fa-cog', 72, 'admin', 'update', '2021-06-25 23:27:40');
INSERT INTO `log_menu` VALUES (51, 22, 'Category', 'category', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-navicon', 73, 'admin', 'insert', '2021-06-26 00:26:42');
INSERT INTO `log_menu` VALUES (52, 22, 'Category Product', 'category_product', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-navicon', 74, 'admin', 'insert', '2021-06-26 00:27:23');
INSERT INTO `log_menu` VALUES (53, 8, 'Heater & Thermocouples', 'products/category/19', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 75, 'admin', 'insert', '2021-06-26 06:21:59');
INSERT INTO `log_menu` VALUES (53, 8, 'Heater & Thermocouples', 'products/category/9', NULL, '', 'Y', 'N', NULL, '', 76, 'admin', 'update', '2021-06-26 06:39:46');
INSERT INTO `log_menu` VALUES (45, 8, 'Aemic', 'http://ae-mic.com/', NULL, '', 'Y', 'N', NULL, '', 77, 'admin', 'update', '2021-06-26 23:07:02');
INSERT INTO `log_menu` VALUES (45, 8, 'Aemic', 'http://ae-mic.com/', '_blank', '', 'Y', 'N', NULL, '', 78, 'admin', 'update', '2021-06-26 23:09:49');
INSERT INTO `log_menu` VALUES (32, NULL, 'About Us', 'about_us', NULL, '', 'Y', 'N', NULL, '', 79, 'admin', 'update', '2021-06-26 23:48:45');
INSERT INTO `log_menu` VALUES (32, NULL, 'About Us', 'pages/detail/about_us', NULL, '', 'Y', 'N', NULL, '', 80, 'admin', 'update', '2021-06-27 00:13:46');
INSERT INTO `log_menu` VALUES (54, NULL, 'Menu', 'menu', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-picture-o', 81, 'admin', 'insert', '2021-06-28 06:47:01');
INSERT INTO `log_menu` VALUES (23, 54, 'Menu', '', NULL, '', 'Y', 'Y', NULL, 'fa fa-picture-o', 82, 'admin', 'update', '2021-06-28 06:47:49');
INSERT INTO `log_menu` VALUES (54, 18, 'Menu', '', NULL, '', 'Y', 'Y', NULL, 'fa fa-picture-o', 83, 'admin', 'update', '2021-06-28 06:48:12');
INSERT INTO `log_menu` VALUES (55, 23, 'Site Map', 'site_map', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-picture-o', 84, 'admin', 'insert', '2021-06-28 06:50:07');
INSERT INTO `log_menu` VALUES (55, 54, 'Site Map', 'site_map', NULL, '', 'Y', 'Y', NULL, 'fa fa-picture-o', 85, 'admin', 'update', '2021-06-28 06:50:26');

-- ----------------------------
-- Table structure for log_position
-- ----------------------------
DROP TABLE IF EXISTS `log_position`;
CREATE TABLE `log_position`  (
  `id` int NOT NULL,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_position
-- ----------------------------

-- ----------------------------
-- Table structure for log_products
-- ----------------------------
DROP TABLE IF EXISTS `log_products`;
CREATE TABLE `log_products`  (
  `id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `products_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `products_price` decimal(10, 2) NULL DEFAULT NULL,
  `products_short_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `products_detail_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `date` datetime(0) NULL DEFAULT NULL,
  `is_best` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  `products_spesification` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_products
-- ----------------------------
INSERT INTO `log_products` VALUES (19, 1, 'Illume SSL-36', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">60W Motion Sensor Solar Street Light Main Function:1. 3 Lighting Mode for choosing;2. PIR Motion Sensor for Energy Saving;3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">60W Motion Sensor Solar Street Light </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Main Function:</span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1. 3 Lighting Mode for choosing;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. PIR Motion Sensor for Energy Saving;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or Rainy Day.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a49e3e5e0fb5100449c795bab5ed59fb.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/781cb204957f41fede86e3cb3c532afe.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b07cf7c9e57acae94c85a3c91e0db19d.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/de93879e3d808d53202b31eac66021af.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2cdb8986cc20a4242ca7dc6d46bc65fa.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/d3c6d5939be0c1804e6dfa9dbfff0725.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f1c114892cb1499ea925aa080fdf8687.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/931318947b6d9ef15a5397202e2e3eb3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/78c7f736450ddc57294a524194da42f2.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 01:49:53', 'Y', 52, 'admin', 'update', '2021-06-26 01:49:53', NULL);
INSERT INTO `log_products` VALUES (24, 1, 'Illume Type : I-BOX SSL-13-12W', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/880807b7cd3643d6ecd69d3e83867336.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c8869ada0c56696aeb8913e505ee418f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/05cb3ef21a242d2dae94735ddb68c064.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/11cceba9d7e0f866faf9e8473bf8b494.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f24d0c0b6f8340257e28cf6f8ba5fcb0.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/98a4ed048e7394ad5c66eefdaae5363f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 01:50:10', NULL, 53, 'admin', 'update', '2021-06-26 01:50:10', NULL);
INSERT INTO `log_products` VALUES (19, 1, 'Illume SSL-36', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">60W Motion Sensor Solar Street Light Main Function:1. 3 Lighting Mode for choosing;2. PIR Motion Sensor for Energy Saving;3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">60W Motion Sensor Solar Street Light </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Main Function:</span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1. 3 Lighting Mode for choosing;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. PIR Motion Sensor for Energy Saving;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or Rainy Day.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a49e3e5e0fb5100449c795bab5ed59fb.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/781cb204957f41fede86e3cb3c532afe.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b07cf7c9e57acae94c85a3c91e0db19d.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/de93879e3d808d53202b31eac66021af.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2cdb8986cc20a4242ca7dc6d46bc65fa.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/d3c6d5939be0c1804e6dfa9dbfff0725.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f1c114892cb1499ea925aa080fdf8687.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/931318947b6d9ef15a5397202e2e3eb3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/78c7f736450ddc57294a524194da42f2.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 06:50:20', 'Y', 54, 'admin', 'update', '2021-06-26 06:50:20', NULL);
INSERT INTO `log_products` VALUES (23, 9, 'Illume Type : I-BOX SSL-18-22W', 0.00, '<p>Model : IBox<br></p>', '<p><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/b6a99647c5555fb24d0234d21bea21c2.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/23fc9f5f566579f500d1afee46be390a.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/5674897adce6bb7c2818cf66c2d3fc2d.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/b6e8c2960d3dfe844345073d2dda25e4.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/c6fef157e0af88389900f2cf2830ffe7.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/34198b6d54aba31978deaa5d88dce577.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span><img src=\"https://illume.ne.jp/assets/images/tmp/1d2dc4eec47c6bf9cef0b6610be0ff69.jpg\"></p>', 'Y', '2021-06-26 06:51:01', 'Y', 55, 'admin', 'update', '2021-06-26 06:51:01', NULL);
INSERT INTO `log_products` VALUES (25, 9, 'Illume Type : I-BOX SSL-25-35W', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/9a2cd7ccea00c008b2544cd3bea32841.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/76f89041c6ae811070bf532a70981330.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2ea44271b2ca729c08e4cd7ed43d54ea.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/e68b2618fe14e1041dda33bc63132791.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/62e8b92ca104d3f7acbedbe9ea1a278b.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a6ded4caa6ba7bc9e257b0eb3af9a6fb.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 06:56:17', NULL, 56, 'admin', 'update', '2021-06-26 06:56:17', NULL);
INSERT INTO `log_products` VALUES (26, 9, 'Illume Type : I-BOX SSL-35', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/657c9c4b9651a03299722623cac354c3.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f6dd594ffb79d54be0fd0f24ba6cfc9.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/545edbe860668dec771cd2fbf6aceb4c.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/226a294f22691f25275fa62c20e6ac68.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/455c0b6397530ebe1c0f67280e95d7f0.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/8b29c13e5e61ea0397e03da0fdcf9a5f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 06:56:35', NULL, 57, 'admin', 'update', '2021-06-26 06:56:35', NULL);
INSERT INTO `log_products` VALUES (22, 9, 'Illume Type : SSL-12N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\"><br></pre><pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">20W Remote Control UFO Solar Plaza LightMain Function:1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\">20W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"font-size: 16px;\">Main Function:</span></strong></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f673b251535c20fcfedf0c8b5aba043.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c60bb0856ba4c377d90085ed6c142eb3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/0a6e79a95786536e6e4780c8d64209bd.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/256970f828be6db7dfff05d4d5305090.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/d810bc8d538c374f161c5047da3cda59.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/bab741d59836e7b8c9b8f1983c1e6f17.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 06:57:01', NULL, 58, 'admin', 'update', '2021-06-26 06:57:01', NULL);
INSERT INTO `log_products` VALUES (21, 9, 'Illume Type : SSL-14N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">30W Remote Control UFO Solar Plaza LightMain Function: 1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">30W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Main Function: </span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2f07b700eec5bc67cf9d6d76c13cf543.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b79043001b2c11459cbb3c9bb565cc76.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/1d3c21b54b9264d43b9fe012b7142c3e.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/060cefd202236aadae54abd74ea42d65.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/eb7002aaed7f73f88b670495659c8fe3.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/71c731cf3a143c236e25768fbc1c1ff9.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f63afa5bdc76b325f098a73e723b8f5.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p>', 'Y', '2021-06-26 06:59:36', 'Y', 59, 'admin', 'update', '2021-06-26 06:59:36', NULL);
INSERT INTO `log_products` VALUES (20, 9, 'Illume Type : SSL-16N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">50W Remote Control UFO Solar Plaza LightMain Function:1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">50W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">Main Function:</span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b5cb452b3233e97923a6757b6088eea8.jpg\" style=\"width: 759px; height: 753px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f3bf97bb0013040ad48236c61e204462.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/e7968e41e780834e664b361531682cee.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a2effb1758e9f9f2dd5cc115ac5913eb.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/48924bdc06b0addb02413b6084308ce5.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a3e6ccfa037c19ed7bc4e0b42195d000.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/35047cbfcad05e46d1e10a74aa48f61a.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', 'Y', '2021-06-26 07:00:06', NULL, 60, 'admin', 'update', '2021-06-26 07:00:06', NULL);

-- ----------------------------
-- Table structure for log_projects
-- ----------------------------
DROP TABLE IF EXISTS `log_projects`;
CREATE TABLE `log_projects`  (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `project_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img_ori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `front` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_projects
-- ----------------------------
INSERT INTO `log_projects` VALUES (1, 4, 'RS. Ainun Habibi', 'Unit AC Single Split LG dan Single Split McQuay', 'Jakarta', 'assets/images/projects/ador.png', NULL, '1', 'Y', 13, 'admin', 'update', '2021-06-25 01:17:16');
INSERT INTO `log_projects` VALUES (7, 1, 'tes', '', 'te', 'assets/images/projects/default.jpg', NULL, '1', 'Y', 14, 'admin', 'insert', '2021-06-25 23:44:19');
INSERT INTO `log_projects` VALUES (7, 0, 'tes', '', 'te', 'assets/images/projects/ACER_Aspire_All_In_One_AZ1-211.jpg', NULL, '1', 'Y', 15, 'admin', 'update', '2021-06-25 23:46:12');
INSERT INTO `log_projects` VALUES (7, 1, 'tes', '', 'te', 'assets/images/projects/ACER_Aspire_All_In_One_AZ1-2111.jpg', NULL, '1', 'Y', 16, 'admin', 'update', '2021-06-25 23:54:37');
INSERT INTO `log_projects` VALUES (8, 1, 'tes', '', 'te', 'assets/images/projects/ACER_Aspire_All_In_One_AZ1-211.jpg', NULL, '0', 'Y', 17, 'admin', 'insert', '2021-06-25 23:55:12');
INSERT INTO `log_projects` VALUES (8, 1, 'tes', '', 'te', 'assets/images/projects/ACER_Aspire_All_In_One_AZ1-211.jpg', NULL, '0', 'Y', 18, 'admin', 'delete', '2021-06-25 23:56:44');

-- ----------------------------
-- Table structure for log_services
-- ----------------------------
DROP TABLE IF EXISTS `log_services`;
CREATE TABLE `log_services`  (
  `id` int NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `menu_id` int NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_services
-- ----------------------------

-- ----------------------------
-- Table structure for log_site_map
-- ----------------------------
DROP TABLE IF EXISTS `log_site_map`;
CREATE TABLE `log_site_map`  (
  `id` int NOT NULL,
  `ut_id` int NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_site_map
-- ----------------------------
INSERT INTO `log_site_map` VALUES (1, 3, 'Home', '', 'Y', 2, '', '', NULL);
INSERT INTO `log_site_map` VALUES (3, 3, 'Home', '', 'Y', 3, 'admin', 'insert', '2021-06-28 07:44:04');
INSERT INTO `log_site_map` VALUES (4, 3, 'Home', '', 'Y', 4, 'admin', 'insert', '2021-06-28 07:44:42');
INSERT INTO `log_site_map` VALUES (5, 3, 'Home', '', 'Y', 5, 'admin', 'insert', '2021-06-28 07:50:19');
INSERT INTO `log_site_map` VALUES (6, 3, 'Home', '', 'Y', 6, 'admin', 'insert', '2021-06-28 07:51:08');
INSERT INTO `log_site_map` VALUES (7, 2, 'home', '', 'Y', 7, 'admin', 'insert', '2021-06-28 07:51:56');
INSERT INTO `log_site_map` VALUES (8, 1, 'Home', '', 'Y', 8, 'admin', 'insert', '2021-06-28 07:52:17');
INSERT INTO `log_site_map` VALUES (9, 3, 'Home', '', 'Y', 9, 'admin', 'insert', '2021-06-28 07:52:25');
INSERT INTO `log_site_map` VALUES (9, 3, 'Home', '', 'Y', 10, 'admin', 'delete', '2021-06-28 07:52:47');
INSERT INTO `log_site_map` VALUES (10, 3, 'Home', '', 'Y', 11, 'admin', 'insert', '2021-06-28 07:57:56');
INSERT INTO `log_site_map` VALUES (11, 1, 'Company Profile', 'algazasolution.com', 'Y', 12, 'admin', 'insert', '2021-06-28 08:00:54');
INSERT INTO `log_site_map` VALUES (11, 1, 'Company Profile', 'http://barasaki-btm.com', 'Y', 13, 'admin', 'update', '2021-06-28 08:05:02');
INSERT INTO `log_site_map` VALUES (11, 1, 'Company Profile', 'company_profile', 'Y', 14, 'admin', 'update', '2021-06-28 08:06:10');
INSERT INTO `log_site_map` VALUES (11, 3, 'Company Profile', 'company_profile', 'Y', 15, 'admin', 'update', '2021-06-28 08:12:04');

-- ----------------------------
-- Table structure for log_slide
-- ----------------------------
DROP TABLE IF EXISTS `log_slide`;
CREATE TABLE `log_slide`  (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img_ori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_slide
-- ----------------------------
INSERT INTO `log_slide` VALUES (2, 'Ae-mic', 'authorized agent', '', 'assets/images/slide/pexels-photo-1591447.jpeg', NULL, 1, 'Y', 26, 'admin', 'update', '2021-06-25 23:01:11');
INSERT INTO `log_slide` VALUES (2, 'Ae-mic', 'authorized agent', '', 'assets/images/slide/slider0_medium.jpg', NULL, 1, 'Y', 27, 'admin', 'update', '2021-06-25 23:01:53');
INSERT INTO `log_slide` VALUES (2, 'Ae-mic', 'authorized agent', 'http://ae-mic.com/en/', NULL, NULL, 1, 'Y', 28, 'admin', 'update', '2021-06-25 23:02:22');
INSERT INTO `log_slide` VALUES (6, 'rte', '<p>te<br></p>', 'te', 'assets/images/slide/about_us.jpg', NULL, 5, 'Y', 29, 'admin', 'insert', '2021-06-25 23:03:56');
INSERT INTO `log_slide` VALUES (7, 'tes', '<p>te<br></p>', '', 'assets/images/slide/work2.jpg', NULL, 6, 'Y', 30, 'admin', 'insert', '2021-06-25 23:04:32');
INSERT INTO `log_slide` VALUES (6, 'rte', '<p>te<br></p>', 'te', 'assets/images/slide/about_us.jpg', NULL, 5, 'Y', 31, 'admin', 'delete', '2021-06-25 23:05:12');
INSERT INTO `log_slide` VALUES (7, 'tes', '<p>te<br></p>', '', 'assets/images/slide/work2.jpg', NULL, 6, 'Y', 32, 'admin', 'delete', '2021-06-25 23:05:15');

-- ----------------------------
-- Table structure for log_url_target
-- ----------------------------
DROP TABLE IF EXISTS `log_url_target`;
CREATE TABLE `log_url_target`  (
  `id` int NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_url_target
-- ----------------------------

-- ----------------------------
-- Table structure for log_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `log_user_detail`;
CREATE TABLE `log_user_detail`  (
  `id` int NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ori_password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_group` int NOT NULL,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_user_detail
-- ----------------------------

-- ----------------------------
-- Table structure for log_user_group
-- ----------------------------
DROP TABLE IF EXISTS `log_user_group`;
CREATE TABLE `log_user_group`  (
  `id` int NOT NULL,
  `caption` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for log_user_sub_group
-- ----------------------------
DROP TABLE IF EXISTS `log_user_sub_group`;
CREATE TABLE `log_user_sub_group`  (
  `id` int NOT NULL,
  `caption` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `group_id` int NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_user_sub_group
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int NULL DEFAULT NULL,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_target` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_admin` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'Y', NULL, 'N', NULL);
INSERT INTO `menu` VALUES (2, NULL, 'My Company', '', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (3, NULL, 'Services', 'services', NULL, '', 'N', NULL, 'N', '');
INSERT INTO `menu` VALUES (4, 3, 'Kontraktor', 'services/service/contractor', NULL, 'Penyediaan jasa konstruksi dalam bidang kelistrikan dan mekanik<br>', 'Y', 'assets/images/compro/slider-default.jpg', 'N', 'flaticon-building');
INSERT INTO `menu` VALUES (5, 3, 'Pengadaan', 'services/service/procurement', NULL, 'Jasa pengadaan barang sesuai dengan permintaan konsumen.', 'Y', 'assets/images/compro/slider-default.jpg', 'N', 'flaticon-deal');
INSERT INTO `menu` VALUES (6, 3, 'Perbaikan', 'services/service/maintenance', NULL, 'Penyedia jasa perbaikan di bidang kelistrikan dan mekanikal<br>', 'Y', 'assets/images/compro/slider-default.jpg', 'N', 'flaticon-construction');
INSERT INTO `menu` VALUES (7, 2, 'Our Projects', 'project', NULL, 'Pengadaan barang untuk pekerjaan di bidang mekanikal dan elektrikal', 'Y', 'assets/images/compro/slider-default.jpg', 'N', NULL);
INSERT INTO `menu` VALUES (8, NULL, 'Products', 'products', NULL, 'Pemeliharaan dan perbaikan pekerjaan di bidang mekanikal dan elektrikal', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (12, 35, 'About Us', 'about_us', NULL, '', 'N', NULL, 'Y', 'fa fa-info-circle');
INSERT INTO `menu` VALUES (13, NULL, 'Pages', 'configuration', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-check-circle');
INSERT INTO `menu` VALUES (14, 13, 'Services', 'services', NULL, '', 'N', NULL, 'Y', 'fa fa-cog');
INSERT INTO `menu` VALUES (15, 13, 'Projects', 'projects', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-pencil-square-o');
INSERT INTO `menu` VALUES (16, 13, 'Products', 'products', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-cube');
INSERT INTO `menu` VALUES (17, 13, 'Slide', 'slide', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-picture-o');
INSERT INTO `menu` VALUES (18, NULL, 'Settings', '', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-wrench');
INSERT INTO `menu` VALUES (19, 18, 'Employee', 'employee', NULL, '', 'Y', 'assets/images/compro/ador2.png', 'Y', 'fa fa-users');
INSERT INTO `menu` VALUES (20, 18, 'Users', 'users', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-key');
INSERT INTO `menu` VALUES (21, 18, 'Company', 'company', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-building');
INSERT INTO `menu` VALUES (22, 18, 'Category', 'category', NULL, NULL, 'Y', NULL, 'Y', 'fa fa-navicon');
INSERT INTO `menu` VALUES (23, 54, 'Menu', 'menu', NULL, '', 'Y', NULL, 'Y', 'fa fa-picture-o');
INSERT INTO `menu` VALUES (28, 3, 'Maintenance & Services', 'services/service/maintenance_services', NULL, '<p>Maintenance dan services<br></p>', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (29, 3, 'PJU Services', 'services/service/pju_services', NULL, '<p>Proyek Pengerjaan PJU<br></p>', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (30, NULL, 'Certificate & Legal', 'certificate_legal', NULL, 'Sertificate, Legals & Financial Strength', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (31, 13, 'Certificate & Legal', 'certificate_legal', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-gavel');
INSERT INTO `menu` VALUES (32, NULL, 'About Us', 'pages/detail/about_us', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (33, 13, 'Visi dan Misi', 'visi_misi', NULL, '<p>Visi Dan Misi PT. Iwebe Bangun Solusi    <br></p>', 'N', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-building');
INSERT INTO `menu` VALUES (34, 2, 'Visi dan Misi', 'pages/detail/visi_misi', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (35, NULL, 'Content', '', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-file-text');
INSERT INTO `menu` VALUES (36, 35, 'Visi dan Misi', 'visi_misi', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-building');
INSERT INTO `menu` VALUES (37, 35, 'Articles', 'articles', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-paperclip');
INSERT INTO `menu` VALUES (38, 35, 'News', 'news', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-newspaper-o');
INSERT INTO `menu` VALUES (39, 35, 'Message', 'message', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-comment');
INSERT INTO `menu` VALUES (40, 4, 'tes', 'asd', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (41, NULL, 'News', 'news', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (42, NULL, 'Contact', 'contact', NULL, NULL, 'Y', 'assets/images/compro/slider-default.jpg', 'N', NULL);
INSERT INTO `menu` VALUES (43, NULL, 'Chat Us', 'https://api.whatsapp.com/send?phone=628118202020&text=Halo%20Admin,%20Saya%20Membutuhkan%20Informasi%20di%20Perusahaan%20anda', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (44, 3, 'Pemeliharaan', 'services/service/pemeliharaan', NULL, '<p>Penyedia  jasa pemeliharaan dalam bidang kelistrikan dan mekanikal<br></p>', 'Y', 'assets/images/compro/slider-default.jpg', 'N', 'flaticon-tools');
INSERT INTO `menu` VALUES (45, 8, 'Aemic', 'http://ae-mic.com/', '_blank', '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (46, 45, 'teeeee', 'tetete', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (47, 8, 'karambiac', '', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (48, 46, 'Tesssss', 'tt', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (49, 13, 'Customer', 'customer', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-users');
INSERT INTO `menu` VALUES (50, 13, 'Distributor', 'distributor', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-automobile');
INSERT INTO `menu` VALUES (51, 22, 'Category', 'category', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-navicon');
INSERT INTO `menu` VALUES (52, 22, 'Category Product', 'category_product', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-navicon');
INSERT INTO `menu` VALUES (53, 8, 'Heater & Thermocouples', 'products/category/9', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (54, 18, 'Menu', '', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-picture-o');
INSERT INTO `menu` VALUES (55, 54, 'Site Map', 'site_map', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-picture-o');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_read` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 'dian', 'kosasih', 'didendiko@gmail.com', 'tes', 'tes', 'N', '2020-02-20 09:56:19');
INSERT INTO `message` VALUES (2, 'asdasdas', 'dsdsd', 'asdasd@gmail.com', 'asdasd', 'asdasda', 'N', '2020-03-17 14:40:45');
INSERT INTO `message` VALUES (3, 'asdasd', 'asdsd', 'asdasd@gmail.com', 'sdasd', 'asdasdasdas', 'N', '2020-03-17 14:41:23');
INSERT INTO `message` VALUES (4, 'erna', 'wati', 'ernawati123.erna@yahoo.com', 'permintaan penawaran', '', 'N', '2020-08-11 17:02:45');
INSERT INTO `message` VALUES (5, 'Silvanus ', 'AGBEYOME (Mr)', 'mr.silvanus.info@gmail.com', 'Business Inquiry', 'Dear Sir,\r\nMy name is Mr. Silvanus AGBEYOME. I am the Proprietor/Business Development Manager of AGBEYOME ENTERPRISE Sarl-U. I got your company information through my search for foreign suppliers.\r\nAGBEYOME ENTERPRISE Sarl-U is a Togolese company distribu', 'N', '2020-11-04 17:53:40');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `count_read` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 14, 'Pengerjaan PJU Jlan Rasuna Said', 'Pengerjaan lampu penerangan di jalan rasuna said, jakarta selatan dengan lama kontrak 3 tahun', '2019-09-25 01:58:37', 'zulhendri', 'assets/images/news/project-pju.jpg', 'Y', 212);
INSERT INTO `news` VALUES (2, 14, 'Unit AC Single Split LG dan Single Split McQuay', 'Pengerjaan pemasangan unit Unit AC Single Split LG dan Single Split McQuay di RS Ainun Habibie Kota Gorontalodfsdfdsfs', '2019-09-25 01:56:51', 'zulhendri', 'assets/images/news/ainun-habibie.jpg', 'Y', 102);
INSERT INTO `news` VALUES (3, 14, 'Pemasangan AC Single Split Inverter di Stasiun Cisauk', 'Pengerjaan pemasangan AC Single Split di Stasiun Cisauk', '2020-03-03 01:25:05', 'zulhendri', 'assets/images/news/7cd62f55494640a1b9ae05ff6b822b9b.jpg', 'Y', 157);

-- ----------------------------
-- Table structure for offering
-- ----------------------------
DROP TABLE IF EXISTS `offering`;
CREATE TABLE `offering`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `field` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_read` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of offering
-- ----------------------------
INSERT INTO `offering` VALUES (3, 'asdasd', 'asdasd', '', '085267467848', 'saya ingin menanyakan tentang penawaran project koanstruksi', 'N', '2020-03-16 19:25:34');
INSERT INTO `offering` VALUES (4, 'leo alif', 'mahendra', '', '085273029858', 'Kepada Yth,\r\nPerusahaan BUMN/Swasta\r\nDi Tempat \r\nAttn: Pimpinan Perusahaan /Finance\r\n 	\r\nPerihal  : Penawaran kerja sama penerbitan bank garansi dan surety bond\r\n \r\nDengan Hormat,\r\nPerkenalkan kami   PT.BINTANG HARAPAN BERSAMA  Dengan sertifikat ke agenan', 'N', '2020-11-23 07:28:44');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, 'Komisaris', 'Komisaris', 1, 'Y');
INSERT INTO `position` VALUES (2, 'Direktur Utama', 'Direktur Utama', 2, 'Y');
INSERT INTO `position` VALUES (3, 'Direktur', 'Direktur', 3, 'Y');
INSERT INTO `position` VALUES (4, 'CEO', 'CEO', 4, 'Y');
INSERT INTO `position` VALUES (5, 'Marketing Manager', 'Marketing Manager', 5, 'Y');
INSERT INTO `position` VALUES (6, 'Engineer', 'Engineer', 6, 'Y');
INSERT INTO `position` VALUES (7, 'Administrasi', 'Administrasi', 7, 'Y');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `products_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `products_price` decimal(10, 2) NULL DEFAULT NULL,
  `products_short_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `products_detail_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `products_spesification` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `is_best` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (15, 9, 'Solar Street Light Type : SSL-32', 5600000.00, '<pre style=\"box-sizing: border-box; font-family: Arial; font-size: 14px; overflow: hidden; margin: 0px 0px 10px; display: block; color: rgb(0, 0, 0); padding: 0px; border: none; border-radius: 4px; line-height: 21px; word-break: keep-all; overflow-wrap: break-word; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">20W Motion Sensor Solar Street Light Main Features:ALS2.0 HI-technology to support 7-10 cloudy or raining days\' lighting.TCS(Temperature Control System) to protect the battery\'s safety in</pre>', '<p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 18px; color: rgb(0, 0, 0);\">20W Motion Sensor Solar Street Light </span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 0);\"><strong style=\"box-sizing: border-box; font-weight: bold;\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-size: 16px;\">Main Features:</span></strong></span></p><ul class=\" list-paddingleft-2\" style=\"box-sizing: border-box; margin: 0px; list-style: disc; padding: 0px; font-family: Arial; color: rgb(42, 51, 60); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">ALS2.0 HI-technology to support 7-10 cloudy or raining days\' lighting.</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">TCS(Temperature Control System) to protect the battery\'s safety in high temperature.</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">Motion Sensor for Energy Saving,induction distance can reach 8M</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">3 Lighting Mode for choosing.</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">20pcs Superbright LEDs,lighting angle 140°</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">Aluminum alloy case, all in one design with Patent</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">Integrated design cableless,easy to install </span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">Smart lighting system, Auto on/off</span></p></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Arial; list-style: none;\"><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">ODM, lighting solution</span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/57eb47cc962732a22b1d9803c32ce32c.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/acc4aaccb223800da1d21e4a0ec7713c.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a57fa41cfbe470152fbe1d994d07869c.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/4c96ca94da3e8bfd8bc7e5689963f9c3.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c609f929f63b1425ef8ce2f238f148e1.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/ad61e44382037021c1badebe0ec75265.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/7ca92699af8a61fd65ce2c3e13341481.jpg\" style=\"width: 100%;\"></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/079cc77a8e614172ed15b43f4362b429.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c51a34beaa0170ddfdb834716ce45b87.jpg\" style=\"width: 100%;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p></li></ul>', NULL, '2020-02-13 09:12:24', 'Y', 'Y');
INSERT INTO `products` VALUES (16, 9, 'Solar Street Light Type : SSL-34', 0.00, 'Illume separated design outdoor dust proof led split solar street light.Japan factory direct sale professional manufacturer super brightness 20W-150w solar powered outdoor street lights.Hot selling product 20W 40W 60W 80W street lamp outdoor solar parking lights allowed in usa.', '<p><span style=\"box-sizing: content-box; font-weight: 700; font-family: Roboto; white-space: pre-wrap;\"><span style=\"color:#000000;box-sizing: content-box; font-size: 18px;\">Product Features:</span></span></p><div style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 21px; font-family: inherit; vertical-align: baseline;\"><span style=\"box-sizing: content-box; font-size: 16px;\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 24px; font-family: inherit; vertical-align: baseline;\"></span></span></span></div><p style=\"margin-top: 5px; margin-bottom: 5px; line-height: normal;\"><span style=\"box-sizing: content-box; font-size: 16px; font-family: Roboto; white-space: pre-wrap;\"><span style=\"box-sizing: content-box; font-weight: 700;\">1</span>. 1500 cycle Li-ion battery,10 years spen life.</span></p><p style=\"margin-top: 5px; margin-bottom: 5px; line-height: normal;\"><span style=\"box-sizing: content-box; font-size: 16px; font-family: Roboto; white-space: pre-wrap;\"><span style=\"box-sizing: content-box; font-weight: 700;\">2.</span> <span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 24px; font-family: inherit; vertical-align: baseline;\">Saving labor cost with FAS technology for find out problem by itself</span></span></p><p style=\"margin-top: 5px; margin-bottom: 5px; line-height: normal;\"><span style=\"box-sizing: content-box; font-size: 16px; font-family: Roboto; white-space: pre-wrap;\"><span style=\"box-sizing: content-box; font-weight: 700;\">3.</span> </span><strong><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; white-space: pre-wrap;\">Supportminus temperature working environment.</span></strong></p><p style=\"box-sizing: content-box; margin: 5px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Roboto; vertical-align: baseline; white-space: pre-wrap; line-height: normal;\"><span style=\"box-sizing: content-box; font-size: 16px;\"><span style=\"box-sizing: content-box; font-weight: 700;\">4.</span> <span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 24px; font-family: inherit; vertical-align: baseline;\">ALS2.0 + VFT technology for all night lighting even in cloudy or rainy day</span>.<span style=\"box-sizing: content-box; font-weight: 700;\">5.</span> <span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 24px; font-family: inherit; vertical-align: baseline;\">Support 50W-100W solar panels</span> .</span></p><p style=\"box-sizing: content-box; margin: 5px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Roboto; vertical-align: baseline; white-space: pre-wrap; line-height: normal;\"><span style=\"box-sizing: content-box; font-size: 16px;\"><span style=\"box-sizing: content-box; font-weight: 700;\">6.</span> Turn on at dusk and tun off at dawn automatically.</span></p>', NULL, '2020-02-13 09:12:11', 'Y', 'Y');
INSERT INTO `products` VALUES (17, 9, 'Solar Street Light Type : SSL-33', 0.00, '<pre style=\"box-sizing: border-box; font-family: Arial; font-size: 14px; overflow: hidden; margin: 0px 0px 10px; display: block; color: rgb(0, 0, 0); padding: 0px; border: none; border-radius: 4px; line-height: 21px; word-break: keep-all; overflow-wrap: break-word; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">40W Motion Sensor Solar Street Light Main Function:1. 3 Lighting Mode for choosing;2. PIR Motion Sensor for Energy Saving;3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or</pre>', '<p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-size: 18px;\">40W Motion Sensor Solar Street Light </span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bold;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">Main Function:</span></strong></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">1. 3 Lighting Mode for choosing;</span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">2. PIR Motion Sensor for Energy Saving;</span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\">3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or Rainy Day.</span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5fde8146389c90460f721f2fe41f5c43.jpg\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5fb1c2a365c2e2edacc70eb060ece7d6.jpg\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><img src=\"https://illume.ne.jp/assets/images/tmp/8d32aa91e760f0d1ebf9192446acc961.jpg\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><img src=\"https://illume.ne.jp/assets/images/tmp/433764b763feb69f6d5bc45abd6b52f8.jpg\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; margin: 0px; font: 15px / 26px Arial; color: rgb(137, 137, 137); padding: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2020-02-13 09:11:58', 'Y', 'Y');
INSERT INTO `products` VALUES (18, 9, 'Illume Type : SSL-35', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">50W Motion Sensor Solar Street Light Main Function:1. 3 Lighting Mode for choosing;2. PIR Motion Sensor for Energy Saving;3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">50W Motion Sensor Solar Street Light </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"font-size: 16px;\">Main Function:</span></strong></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1. 3 Lighting Mode for choosing;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. PIR Motion Sensor for Energy Saving;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or Rainy Day.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/51ac8846a08ed353cf8b16350c21b6f3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f717f97ba290f8e7651bb9cd2e86cb0c.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/48cfa4100c384323d5e40d3a6543209c.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/4f4af61da2ef5584d966f98dd3066168.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/87836e711e85aa926df694a078d44786.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/08045c0e1cb337fda57c78b76f5fa2f8.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/936bd4899acfd575a6119ac1a0f7bb10.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/8caf467ba41c14297629b521819ba219.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/de29e7bf8d128c8a61bc8e3c257d20e5.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2020-02-13 09:13:03', 'N', 'Y');
INSERT INTO `products` VALUES (19, 1, 'Illume SSL-36', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">60W Motion Sensor Solar Street Light Main Function:1. 3 Lighting Mode for choosing;2. PIR Motion Sensor for Energy Saving;3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">60W Motion Sensor Solar Street Light </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Main Function:</span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1. 3 Lighting Mode for choosing;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. PIR Motion Sensor for Energy Saving;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. ALS2.0 + VFT + TCS Technology for All Night Lighting even in Cloudy or Rainy Day.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a49e3e5e0fb5100449c795bab5ed59fb.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/781cb204957f41fede86e3cb3c532afe.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b07cf7c9e57acae94c85a3c91e0db19d.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/de93879e3d808d53202b31eac66021af.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2cdb8986cc20a4242ca7dc6d46bc65fa.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/d3c6d5939be0c1804e6dfa9dbfff0725.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f1c114892cb1499ea925aa080fdf8687.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/931318947b6d9ef15a5397202e2e3eb3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/78c7f736450ddc57294a524194da42f2.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 06:50:20', 'Y', 'Y');
INSERT INTO `products` VALUES (20, 9, 'Illume Type : SSL-16N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">50W Remote Control UFO Solar Plaza LightMain Function:1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">50W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">Main Function:</span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b5cb452b3233e97923a6757b6088eea8.jpg\" style=\"width: 759px; height: 753px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f3bf97bb0013040ad48236c61e204462.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/e7968e41e780834e664b361531682cee.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a2effb1758e9f9f2dd5cc115ac5913eb.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/48924bdc06b0addb02413b6084308ce5.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a3e6ccfa037c19ed7bc4e0b42195d000.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/35047cbfcad05e46d1e10a74aa48f61a.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 07:00:06', NULL, 'Y');
INSERT INTO `products` VALUES (21, 9, 'Illume Type : SSL-14N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">30W Remote Control UFO Solar Plaza LightMain Function: 1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 18px;\">30W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Main Function: </span></strong></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2f07b700eec5bc67cf9d6d76c13cf543.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/b79043001b2c11459cbb3c9bb565cc76.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/1d3c21b54b9264d43b9fe012b7142c3e.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/060cefd202236aadae54abd74ea42d65.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/eb7002aaed7f73f88b670495659c8fe3.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/71c731cf3a143c236e25768fbc1c1ff9.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f63afa5bdc76b325f098a73e723b8f5.jpg\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\"><br></span></p>', NULL, '2021-06-26 06:59:36', 'Y', 'Y');
INSERT INTO `products` VALUES (22, 9, 'Illume Type : SSL-12N', 0.00, '<pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\"><br></pre><pre style=\"font-family: Arial; font-size: 14px; overflow: hidden; color: rgb(0, 0, 0); padding: 0px; border-width: initial; border-style: none; border-color: initial; line-height: 21px; word-break: keep-all; background: none rgb(255, 255, 255); white-space: pre-wrap; width: 290px;\">20W Remote Control UFO Solar Plaza LightMain Function:1.TCS technology for battery safety;2. ALS2.0 technology for lighting in any wheather;3. 2 lighting modes for choosing.</pre>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 18px; color: rgb(0, 0, 0);\">20W Remote Control UFO Solar Plaza Light</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"font-size: 16px;\">Main Function:</span></strong></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">1.TCS technology for battery safety;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">2. ALS2.0 technology for lighting in any wheather;</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\">3. 2 lighting modes for choosing.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f673b251535c20fcfedf0c8b5aba043.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c60bb0856ba4c377d90085ed6c142eb3.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/0a6e79a95786536e6e4780c8d64209bd.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/256970f828be6db7dfff05d4d5305090.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/d810bc8d538c374f161c5047da3cda59.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><img src=\"https://illume.ne.jp/assets/images/tmp/bab741d59836e7b8c9b8f1983c1e6f17.jpg\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px;\"><span style=\"font-size: 16px; color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 06:57:01', NULL, 'Y');
INSERT INTO `products` VALUES (23, 9, 'Illume Type : I-BOX SSL-18-22W', 0.00, '<p>Model : IBox<br></p>', '<p><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/b6a99647c5555fb24d0234d21bea21c2.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/23fc9f5f566579f500d1afee46be390a.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/5674897adce6bb7c2818cf66c2d3fc2d.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/b6e8c2960d3dfe844345073d2dda25e4.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/c6fef157e0af88389900f2cf2830ffe7.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><img src=\"https://illume.ne.jp/assets/images/tmp/34198b6d54aba31978deaa5d88dce577.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span><img src=\"https://illume.ne.jp/assets/images/tmp/1d2dc4eec47c6bf9cef0b6610be0ff69.jpg\"></p>', NULL, '2021-06-26 06:51:01', 'Y', 'Y');
INSERT INTO `products` VALUES (24, 1, 'Illume Type : I-BOX SSL-13-12W', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/880807b7cd3643d6ecd69d3e83867336.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/c8869ada0c56696aeb8913e505ee418f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/05cb3ef21a242d2dae94735ddb68c064.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/11cceba9d7e0f866faf9e8473bf8b494.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/f24d0c0b6f8340257e28cf6f8ba5fcb0.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/98a4ed048e7394ad5c66eefdaae5363f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 01:50:10', NULL, 'Y');
INSERT INTO `products` VALUES (25, 9, 'Illume Type : I-BOX SSL-25-35W', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/9a2cd7ccea00c008b2544cd3bea32841.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/76f89041c6ae811070bf532a70981330.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/2ea44271b2ca729c08e4cd7ed43d54ea.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/e68b2618fe14e1041dda33bc63132791.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/62e8b92ca104d3f7acbedbe9ea1a278b.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/a6ded4caa6ba7bc9e257b0eb3af9a6fb.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 06:56:17', NULL, 'Y');
INSERT INTO `products` VALUES (26, 9, 'Illume Type : I-BOX SSL-35', 0.00, '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', '<p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">Main Function:</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1.  Patent FAS technology identify the damage parts to make maintenance simple</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2.  4 LED indicators remind battery charging and discharging capacity</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3.  ALS2.0 New technology support 6~8 rainy days lighting </span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4.  Professional lighting distribution for wide lighting area</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5.  Turn on at dusk and tun off at dawn automatically.</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">6.  Two installation options</span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/657c9c4b9651a03299722623cac354c3.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/5f6dd594ffb79d54be0fd0f24ba6cfc9.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/545edbe860668dec771cd2fbf6aceb4c.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/226a294f22691f25275fa62c20e6ac68.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><img src=\"https://illume.ne.jp/assets/images/tmp/455c0b6397530ebe1c0f67280e95d7f0.jpg\"><img src=\"https://illume.ne.jp/assets/images/tmp/8b29c13e5e61ea0397e03da0fdcf9a5f.jpg\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Arial; color: rgb(137, 137, 137); padding: 0px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p>', NULL, '2021-06-26 06:56:35', NULL, 'Y');

-- ----------------------------
-- Table structure for products_image
-- ----------------------------
DROP TABLE IF EXISTS `products_image`;
CREATE TABLE `products_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products_image
-- ----------------------------
INSERT INTO `products_image` VALUES (24, 15, 'assets/images/product/a4fff12619c8b4ba0a1042900dafb85d.JPG', 1, NULL, 'Y');
INSERT INTO `products_image` VALUES (25, 16, 'assets/images/product/a5e3868942c46600772090083a8bd185.JPG', 1, NULL, 'Y');
INSERT INTO `products_image` VALUES (26, 17, 'assets/images/product/9e664de53b046ba6d9df490d1661cf07.JPG', 1, NULL, 'Y');
INSERT INTO `products_image` VALUES (27, 17, 'assets/images/product/1cd341ac2c6e3258c4c3bed97edac1f5.JPG', 2, NULL, 'Y');
INSERT INTO `products_image` VALUES (28, 17, 'assets/images/product/aa1ca3d4c78c1f7f47860e437014dfe7.JPG', 3, NULL, 'Y');
INSERT INTO `products_image` VALUES (29, 17, 'assets/images/product/3f1a9e88932af52cc9f07d36a6ffd61d.JPG', 4, NULL, 'Y');
INSERT INTO `products_image` VALUES (30, 17, 'assets/images/product/cf5d01ddabef293789def0c7412e5209.JPG', 5, NULL, 'Y');
INSERT INTO `products_image` VALUES (32, 18, 'assets/images/product/91593712c1d9032f23e2c6a188716cab.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (33, 18, 'assets/images/product/1f29fde29b3e9852939de75ade5cb3cf.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (34, 18, 'assets/images/product/8f2dc8873f3a63d2b8f864ec0be42932.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (35, 18, 'assets/images/product/8b91f0c6f4b548d9f473a05b10839147.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (51, 24, 'assets/images/product/83005e6dc589e91b65f487f379a02ae2.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (59, 19, 'assets/images/product/1d2539a3e2e68a72e93359587feecf82.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (60, 23, 'assets/images/product/a86a441c794de19076886ce26f3a55cf.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (61, 25, 'assets/images/product/cdf59df034b28cfc31e05686a1186d2f.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (62, 26, 'assets/images/product/0762b734209fc8574fa9a269c2623809.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (63, 22, 'assets/images/product/a030e2bc74264947e6fdbf9bb88dec0a.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (64, 21, 'assets/images/product/716f3bb0113fb2ffb45445e3d2806be1.jpg', 0, NULL, 'Y');
INSERT INTO `products_image` VALUES (65, 20, 'assets/images/product/a9f0d5c5a07d6dc8274ea190b6b52b4c.jpg', 0, NULL, 'Y');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img_ori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `front` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `short_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `menu_id` int NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 4, 'Air Conditioning', 'Mengerjakan Pekerjaan Di Bidang pendigin udara', 'berpengalaman di bidang pemasangan pendingin udara<br>', 'assets/images/compro/icon/worker.png', 1, 'Y', 2, 'flaticon-air-conditioner');
INSERT INTO `services` VALUES (2, 5, 'Kaiqian Smart Parking', 'Kaiqian Smart Parking', 'Kaiqian Smart Parking', 'assets/images/compro/icon/insurance.png', 2, 'Y', 5, 'flaticon-garage');
INSERT INTO `services` VALUES (3, 6, 'Perawatan System Unit Pendingin', 'Perawatan System Unit Pendingin', 'Pemeliharaan dan perbaikan pekerjaan di bidang mekanikal dan elektrikal', 'assets/images/compro/icon/setting.png', 3, 'Y', 6, 'flaticon-technical-support');
INSERT INTO `services` VALUES (5, 17, 'Pemeliharaan AC (Air Conditioning)', 'Pemeliharaan AC ', '<p>Maintenance dan services<br></p>', 'assets/images/compro/icon/services-default.png', 1, 'Y', 44, 'flaticon-worker');
INSERT INTO `services` VALUES (6, 17, 'PJU Services', 'Project PJU', '<br>', 'assets/images/compro/icon/pjuservice.png', 1, 'Y', 44, 'flaticon-worker');
INSERT INTO `services` VALUES (7, 4, 'HVAC System ', 'heating, ventilation, dan air-conditioning system', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi unde impedit, necessitatibus, soluta sit quam minima expedita atque corrupti reiciendis.<br></p>', 'assets/images/compro/icon/services-default.png', 1, 'Y', 4, 'flaticon-air-conditioner');
INSERT INTO `services` VALUES (8, 5, 'Air Conditoning System', 'Air Conditoning System', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi unde impedit, necessitatibus, soluta sit quam minima expedita atque corrupti reiciendis.<br></p>', 'assets/images/compro/icon/services-default.png', 1, 'Y', 5, 'flaticon-engineer');

-- ----------------------------
-- Table structure for site_map
-- ----------------------------
DROP TABLE IF EXISTS `site_map`;
CREATE TABLE `site_map`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ut_id` int NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of site_map
-- ----------------------------
INSERT INTO `site_map` VALUES (10, 3, 'Home', '', 'Y');
INSERT INTO `site_map` VALUES (11, 3, 'Company Profile', 'company_profile', 'Y');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img_ori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (2, 'Ae-mic', 'authorized agent', 'http://ae-mic.com/en/', 'assets/images/slide/slider0_medium.jpg', NULL, 1, 'Y');
INSERT INTO `slide` VALUES (3, 'Plastic', 'For longer life', NULL, 'assets/images/img/logiform.jpg', NULL, 1, 'Y');
INSERT INTO `slide` VALUES (4, 'we provide', 'Safety Needs To Protect You', '', 'assets/images/img/igus_medium.jpg', NULL, 3, 'Y');
INSERT INTO `slide` VALUES (5, 'we built', 'Your Trust', '', 'assets/images/img/slider_medium.jpg', NULL, 1, 'Y');

-- ----------------------------
-- Table structure for url_target
-- ----------------------------
DROP TABLE IF EXISTS `url_target`;
CREATE TABLE `url_target`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of url_target
-- ----------------------------
INSERT INTO `url_target` VALUES (1, '_blank', 'New Window', 'Y');
INSERT INTO `url_target` VALUES (2, '_top', 'Topmost Window', 'Y');
INSERT INTO `url_target` VALUES (3, '_self', 'Same Window', 'Y');
INSERT INTO `url_target` VALUES (4, '_parent', 'Parent Window', 'Y');

-- ----------------------------
-- Table structure for user_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ori_password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_group` int NOT NULL,
  `is_active` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_detail
-- ----------------------------
INSERT INTO `user_detail` VALUES (1, 'admin', '05962b1a8d2e2153db9c2facf89504532b901aa6', 'P@ssw0rd', 1, 'Y');
INSERT INTO `user_detail` VALUES (3, 'administrator', '7418f5dcd96be8b3f207d725c2689285bb24bc3e', 'P@ssw0rd', 1, 'Y');
INSERT INTO `user_detail` VALUES (4, 'userlog', 'd241978193e35c8be8f3adca2ea50a8b42e3b97e', 'userlog123', 1, 'Y');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, 'Administrators', 'Administrators', 1, 'Y');

-- ----------------------------
-- Table structure for user_sub_group
-- ----------------------------
DROP TABLE IF EXISTS `user_sub_group`;
CREATE TABLE `user_sub_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `group_id` int NOT NULL,
  `seq` int NOT NULL DEFAULT 1,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_sub_group
-- ----------------------------
INSERT INTO `user_sub_group` VALUES (1, 'Super Administrators', 'Super Administrators', 1, 1, 'Y');

SET FOREIGN_KEY_CHECKS = 1;
