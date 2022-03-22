/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : db_btm

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 20/03/2022 09:36:16
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 32, 13, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office & environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', 'assets/images/articles/project-pju.jpg', 'Y');
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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (4, 'contractor', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (5, 'procurement', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (6, 'maintenance', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (9, 'IT NETWORKING', 'products/category/9', 'product', 'Y');
INSERT INTO `category` VALUES (12, 'Visi dan Misi', NULL, 'articles', 'Y');
INSERT INTO `category` VALUES (13, 'About Us', NULL, 'articles', 'Y');
INSERT INTO `category` VALUES (14, 'Contractor', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (15, 'procurement', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (16, 'maintencae', NULL, 'news', 'Y');
INSERT INTO `category` VALUES (17, 'pemeliharaan', NULL, 'services', 'Y');
INSERT INTO `category` VALUES (20, 'HEATERS & THERMOCOUPLES', 'products/category/20', 'product', 'Y');
INSERT INTO `category` VALUES (21, 'AUTOMATION', 'products/category/21', 'product', 'Y');

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
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'assets/images/compro/favicon.ico',
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `since_years` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, 'Koperasi Bintang Tanjuang Madani', 'Koperasi Bintang Tanjung Madani', 'rey', 'Koperasi Bintang Tanjung Madani', 'bintang,tanjuang,madani,koperasi,indonesia,serba,usaha', 'Y', 'assets/images/compro/logo_koperasi.ico', 'assets/images/compro/kop_btm.PNG', 2017);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distributor
-- ----------------------------
INSERT INTO `distributor` VALUES (16, 'Aemic', '', 'assets/images/distributor/aemic.PNG', 'http://ae-mic.com/en/', 'Y');

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES (6, 'Company Pofile', '', 'assets/document/cover.jpg', 'assets/document/Proposal_Tugas_Akhir-Lena_Oktavianis_(11750325180).pdf', 'Y');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `employee` VALUES (1, '1', 6, 5, 1, 'Ilfan Taufik', 'Padang', '2019-09-17', '', '', '', 'Y', 'assets/images/employee/Ilfan_Taufik1.JPG');
INSERT INTO `employee` VALUES (8, '6', 10, 5, 1, 'Dian Kosasih', 'Padang', '1989-08-16', '082385727870', 'algazasolution@gmail.com', '<p>Pekanbaru<br></p>', 'Y', 'assets/images/employee/sadasdsad.jpg');

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
-- Table structure for log_access_group
-- ----------------------------
DROP TABLE IF EXISTS `log_access_group`;
CREATE TABLE `log_access_group`  (
  `ag_id` int NOT NULL,
  `ag_ug_id` int NULL DEFAULT NULL,
  `ag_rm_id` int NULL DEFAULT NULL,
  `ag_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Y',
  `last_user` int NULL DEFAULT NULL,
  `last_datetime` datetime(0) NULL DEFAULT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_access_group
-- ----------------------------
INSERT INTO `log_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 1);
INSERT INTO `log_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 2);
INSERT INTO `log_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 3);
INSERT INTO `log_access_group` VALUES (123, 1, 35, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 4);
INSERT INTO `log_access_group` VALUES (124, 1, 40, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 5);
INSERT INTO `log_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-09-26 10:46:30', 1, 'add', '2020-09-26 10:46:30', 6);
INSERT INTO `log_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 7);
INSERT INTO `log_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 8);
INSERT INTO `log_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 9);
INSERT INTO `log_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 10);
INSERT INTO `log_access_group` VALUES (129, 1, 37, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 11);
INSERT INTO `log_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 12);
INSERT INTO `log_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 13);
INSERT INTO `log_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-09-26 10:46:30', 1, 'edit', '2020-09-26 10:46:30', 14);

-- ----------------------------
-- Table structure for log_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `log_access_menu`;
CREATE TABLE `log_access_menu`  (
  `am_id` int UNSIGNED NOT NULL,
  `am_user_id` int UNSIGNED NOT NULL,
  `am_menu_id` int UNSIGNED NOT NULL,
  `am_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_access_menu
-- ----------------------------

-- ----------------------------
-- Table structure for log_access_sub_group
-- ----------------------------
DROP TABLE IF EXISTS `log_access_sub_group`;
CREATE TABLE `log_access_sub_group`  (
  `asg_id` int NULL DEFAULT NULL,
  `asg_ug_id` int NULL DEFAULT NULL,
  `asg_usg_id` int NULL DEFAULT NULL,
  `asg_rm_id` int NULL DEFAULT NULL,
  `asg_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `last_user` int NULL DEFAULT NULL,
  `last_datetime` datetime(0) NULL DEFAULT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_access_sub_group
-- ----------------------------
INSERT INTO `log_access_sub_group` VALUES (7, 1, 1, 1, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 14);
INSERT INTO `log_access_sub_group` VALUES (8, 1, 1, 4, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 15);
INSERT INTO `log_access_sub_group` VALUES (9, 1, 1, 5, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 16);
INSERT INTO `log_access_sub_group` VALUES (10, 1, 1, 40, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 17);
INSERT INTO `log_access_sub_group` VALUES (11, 1, 1, 42, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 18);
INSERT INTO `log_access_sub_group` VALUES (12, 1, 1, 2, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 19);
INSERT INTO `log_access_sub_group` VALUES (13, 1, 1, 36, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 20);
INSERT INTO `log_access_sub_group` VALUES (14, 1, 1, 33, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 21);
INSERT INTO `log_access_sub_group` VALUES (15, 1, 1, 41, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 22);
INSERT INTO `log_access_sub_group` VALUES (16, 1, 1, 37, 'Y', 1, '2020-09-26 19:30:14', 1, 'add', '2020-09-26 19:30:14', 23);
INSERT INTO `log_access_sub_group` VALUES (17, 1, 1, 3, 'Y', 1, '2020-09-26 19:30:15', 1, 'add', '2020-09-26 19:30:15', 24);
INSERT INTO `log_access_sub_group` VALUES (18, 1, 1, 38, 'Y', 1, '2020-09-26 19:30:15', 1, 'add', '2020-09-26 19:30:15', 25);
INSERT INTO `log_access_sub_group` VALUES (19, 1, 1, 39, 'Y', 1, '2020-09-26 19:30:15', 1, 'add', '2020-09-26 19:30:15', 26);

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
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_articles
-- ----------------------------
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for \r\nyour company needs, orientation to your demand, customize it and bring \r\nto your benefit.Starting its operation on January 2013 , barasaki \r\nproviding all kind of standard and customize heating’s for industrial \r\ngrade; band heater, cartridge heater, strip heater, tubular heater and \r\nsuch kind, inclusive types of thermocouple and its range. Provide also \r\nthe solution for measurement tools, Weighing Scale and any kind of \r\nBearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business \r\nmarket across all industrial needs. manufacturing; mechanical and \r\nelectronic function, heavy industry, office &amp; environment and \r\nsafety. With all of strength we have, believed in the near future \r\nbarasaki can provided direct profit to the customer through competitive \r\nand reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 43, 'admin', 'update', '2021-06-27 00:13:26');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\" width=\"1001\" height=\"1013\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business expansion and aggressive market penetration, covering solution to a diverse client base.</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 44, 'admin', 'update', '2021-06-27 00:23:11');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/263a1fd00144db5b62a1593eab85e2b7.jpg\" style=\"width: 100%;\"><br></p></td><td><p>HISTORY</p><p>Barasaki is the corporate which provide you the solution for your \r\ncompany needs, orientation to your demand, customize it and bring to \r\nyour benefit.Starting its operation on January 2013 , barasaki providing\r\n all kind of standard and customize heating’s for industrial grade; band\r\n heater, cartridge heater, strip heater, tubular heater and such kind, \r\ninclusive types of thermocouple and its range. Provide also the solution\r\n for measurement tools, Weighing Scale and any kind of Bearings, Linear \r\nMotion and E-Chain.</p><p>Beginning of 2014, barasaki began to develop the business market across \r\nall industrial needs. manufacturing; mechanical and electronic function,\r\n heavy industry, office &amp; environment and safety. With all of \r\nstrength we have, believed in the near future barasaki can provided \r\ndirect profit to the customer through competitive and reasonable \r\npricing, as well timing on delivery with trust.</p><p>Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p></td></tr><tr><td><h2>Vision</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Become a solution for every needs\r\n  										</h4><h2>Mission</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Addressing and deliver the best at most satisfaction to each and every customer</h4><h2>Value</h2><br><ul><li><b>Services to the best\r\n                      </b></li></ul><p style=\"margin-left: 25px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commitment to quality and expectation \r\n                      </p></td><td><p>&nbsp;<img src=\"http://localhost/barasaki-btm/assets/images/tmp/4dbca5a24330c22831084879d439ffae.png\" style=\"width: 100%;\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', NULL, 'Y', 45, 'admin', 'update', '2021-06-27 00:34:57');
INSERT INTO `log_articles` VALUES (4, 0, 0, 'Company Profile', '<p>&lt;iframe src=\"https://drive.google.com/file/d/1ZYMDK4-f8XmupBWctH5RKBQGf0Xz0i5H/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"&gt;&lt;/iframe&gt;<br></p>', '', NULL, 'Y', 46, 'admin', 'insert', '2021-06-28 06:18:12');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<br>', 'about_us', NULL, 'Y', 47, 'admin', 'update', '2021-06-29 08:06:11');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"<?php echo base_url(); ?>assets/img/vision-mission.png\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', NULL, 'Y', 48, 'admin', 'update', '2021-06-29 08:09:50');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', NULL, 'Y', 49, 'admin', 'update', '2021-06-29 08:11:00');
INSERT INTO `log_articles` VALUES (1, 32, 13, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office & environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', NULL, 'Y', 50, 'admin', 'update', '2021-06-29 08:11:59');

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_category
-- ----------------------------
INSERT INTO `log_category` VALUES (19, 'Tes', 'products/category/19', 'product', 'Y', 24, 'admin', 'insert', '2021-06-26 01:46:18');
INSERT INTO `log_category` VALUES (9, 'PJU', 'products/category/9', 'product', 'Y', 25, 'admin', 'update', '2021-06-26 06:39:22');
INSERT INTO `log_category` VALUES (9, 'PJU', 'products/category/9', 'product', 'Y', 26, 'admin', 'update', '2021-06-26 06:39:27');
INSERT INTO `log_category` VALUES (1, 'HEATERS & THERMOCOUPLES', '', 'product', 'Y', 27, 'admin', 'update', '2021-07-02 15:39:47');
INSERT INTO `log_category` VALUES (18, 'AUTOMATION', '', 'product', 'Y', 28, 'admin', 'update', '2021-07-02 15:40:05');
INSERT INTO `log_category` VALUES (9, 'IT NETWORKING', 'products/category/9', 'product', 'Y', 29, 'admin', 'update', '2021-07-02 15:55:29');
INSERT INTO `log_category` VALUES (19, 'Tes', 'products/category/19', 'product', 'N', 30, 'admin', 'update', '2021-07-02 15:55:48');
INSERT INTO `log_category` VALUES (1, 'HEATERS & THERMOCOUPLES', '', 'product', 'N', 31, 'admin', 'update', '2021-07-02 15:59:06');
INSERT INTO `log_category` VALUES (20, 'HEATERS & THERMOCOUPLES', 'products/category/20', 'product', 'Y', 32, 'admin', 'insert', '2021-07-02 15:59:16');
INSERT INTO `log_category` VALUES (21, 'AUTOMATION', 'products/category/21', 'product', 'Y', 33, 'admin', 'insert', '2021-07-02 16:01:15');

-- ----------------------------
-- Table structure for log_company
-- ----------------------------
DROP TABLE IF EXISTS `log_company`;
CREATE TABLE `log_company`  (
  `id` int UNSIGNED NOT NULL,
  `fullname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_company
-- ----------------------------
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', NULL, NULL, 'Y', 13, 'admin', 'update', '2021-06-24 14:03:30', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', NULL, NULL, 'Y', 14, 'admin', 'update', '2021-06-24 14:03:30', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', NULL, NULL, 'Y', 15, 'admin', 'update', '2021-06-24 14:04:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Iwebe Bangun Solusi', 'Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450', 'Ir. Yulia Herlina', NULL, NULL, 'Y', 16, 'admin', 'update', '2021-06-24 14:04:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 17, 'admin', 'update', '2021-06-24 14:08:49', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 18, 'admin', 'update', '2021-06-24 14:08:49', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 19, 'admin', 'update', '2021-06-24 14:10:21', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 20, 'admin', 'update', '2021-06-24 14:10:21', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 21, 'admin', 'update', '2021-06-24 14:11:23', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 22, 'admin', 'update', '2021-06-24 14:14:03', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 23, 'admin', 'update', '2021-06-24 14:14:03', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 24, 'admin', 'update', '2021-06-24 14:16:45', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 25, 'admin', 'update', '2021-06-24 14:16:45', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 26, 'admin', 'update', '2021-06-24 14:18:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 27, 'admin', 'update', '2021-06-24 14:18:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 28, 'admin', 'update', '2021-06-24 14:58:20', 'assets/images/compro/logo1.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 29, 'admin', 'update', '2021-06-24 14:59:08', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 30, 'admin', 'update', '2021-06-24 14:59:51', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 31, 'admin', 'update', '2021-06-24 15:01:57', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 32, 'admin', 'update', '2021-06-24 15:02:42', 'assets/images/compro/logo1.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 33, 'admin', 'update', '2021-06-24 15:03:41', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 34, 'admin', 'update', '2021-06-24 15:04:53', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 35, 'admin', 'update', '2021-06-24 15:14:35', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 36, 'admin', 'update', '2021-06-24 15:14:43', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 37, 'admin', 'update', '2021-06-24 15:18:13', NULL, 'assets/images/compro/favicon1.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 38, 'admin', 'update', '2021-06-24 15:18:19', NULL, 'assets/images/compro/favicon2.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'Batam', 'Ilfan Taufik', NULL, NULL, 'Y', 39, 'admin', 'update', '2021-06-24 15:21:12', NULL, 'assets/images/compro/index.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 40, 'admin', 'update', '2021-07-02 09:26:28', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading sasaasas<small>?</small></p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 41, 'admin', 'update', '2021-07-02 09:30:37', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 42, 'admin', 'update', '2021-07-02 09:31:03', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 43, 'admin', 'update', '2022-03-17 21:54:53', NULL, 'assets/images/compro/logo_koperasi.ico');
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 44, 'admin', 'update', '2022-03-17 22:00:51', 'assets/images/compro/logo_koperasi.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 45, 'admin', 'update', '2022-03-17 22:05:49', 'assets/images/compro/logo_BTM.png', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 46, 'admin', 'update', '2022-03-19 06:41:10', 'assets/images/compro/WhatsApp_Image_2022-03-18_at_13_35_50.jpeg', NULL);
INSERT INTO `log_company` VALUES (1, 'PT. Barasaki Semesta', 'PT. Barasaki Sinergi Semesta\r\n				Griya Pratama Blok CC No. 13\r\n				Batu Aji, Batam. 29428', 'Ilfan Taufik', '<p>Baraski Sinergi Semesta General Supplier and trading</p>', 'Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading', 'Y', 47, 'admin', 'update', '2022-03-19 06:44:40', 'assets/images/compro/kop_btm.PNG', NULL);
INSERT INTO `log_company` VALUES (1, 'Koperasi Bintang Tanjuang Madani', 'Koperasi Bintang Tanjung Madani', 'rey', 'Koperasi Bintang Tanjung Madani', 'bintang,tanjuang,madani,koperasi,indonesia,serba,usaha', 'Y', 48, 'admin', 'update', '2022-03-19 08:56:18', NULL, NULL);
INSERT INTO `log_company` VALUES (1, 'Koperasi Bintang Tanjuang Madani', 'Koperasi Bintang Tanjung Madani', 'rey', 'Koperasi Bintang Tanjung Madani', 'bintang,tanjuang,madani,koperasi,indonesia,serba,usaha', 'Y', 49, 'admin', 'update', '2022-03-19 08:56:24', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `log_customer` VALUES (3, NULL, NULL, NULL, NULL, NULL, 19, 'admin', 'delete', '2021-06-29 13:32:51');

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
-- Table structure for log_download
-- ----------------------------
DROP TABLE IF EXISTS `log_download`;
CREATE TABLE `log_download`  (
  `id` int NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_download
-- ----------------------------
INSERT INTO `log_download` VALUES (1, 'Company Pofile', 'Company Profile <br><p><br></p>', 'assets/images/download/cover.jpg', NULL, 'Y', 1, 'admin', 'insert', '2021-06-29 10:42:31');
INSERT INTO `log_download` VALUES (2, 'Company', '', 'assets/document/cover1.jpg', 'assets/document/company_profile_default.pdf', 'Y', 2, 'admin', 'insert', '2021-06-29 10:56:14');
INSERT INTO `log_download` VALUES (3, 'Company Pofile', '', 'assets/document/cover2.jpg', 'assets/document/IM_Pembayaran_THR_Natal_2020-final.pdf', 'Y', 3, 'admin', 'insert', '2021-06-29 10:58:03');
INSERT INTO `log_download` VALUES (4, 'tes', '', 'assets/document/measuringtape.jpg', 'assets/document/Laporan_Pengeluaran.pdf', 'Y', 4, 'admin', 'insert', '2021-06-29 12:30:41');
INSERT INTO `log_download` VALUES (5, 'Company Profile', 'asd<p><br></p>', 'assets/document/cover.jpg', 'assets/document/Proposal_Tugas_Akhir-Lena_Oktavianis_(11750325180).pdf', 'Y', 5, 'admin', 'insert', '2021-06-29 13:34:38');
INSERT INTO `log_download` VALUES (5, 'Company Profile', 'asd<p><br></p>', NULL, NULL, 'Y', 6, 'admin', 'update', '2021-06-29 13:41:56');
INSERT INTO `log_download` VALUES (5, NULL, NULL, NULL, NULL, NULL, 7, 'admin', 'delete', '2021-06-29 13:44:02');
INSERT INTO `log_download` VALUES (6, 'Company Pofile', '', 'assets/document/cover.jpg', 'assets/document/Proposal_Tugas_Akhir-Lena_Oktavianis_(11750325180).pdf', 'Y', 8, 'admin', 'insert', '2021-06-29 13:45:27');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_employee
-- ----------------------------
INSERT INTO `log_employee` VALUES (8, NULL, 9, 7, 1, 'sadasdsad', 'asdasd', '2021-07-29', '6546465', '', '<p>asdasd<br></p>', NULL, 'assets/images/employee/sadasdsad.jpg', 4, 'admin', 'insert', '2021-07-12 01:28:27');
INSERT INTO `log_employee` VALUES (8, NULL, 10, 5, 1, 'Dian Kosasih', 'Padang', '1989-08-16', '082385727870', 'algazasolution@gmail.com', '<p>Pekanbaru<br></p>', NULL, NULL, 5, 'admin', 'update', '2021-07-12 01:35:22');

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
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `log_menu` VALUES (52, 22, 'Category Product', 'category_product', NULL, '', 'N', 'Y', NULL, 'fa fa-navicon', 86, 'admin', 'update', '2021-06-29 08:37:08');
INSERT INTO `log_menu` VALUES (51, 22, 'Category', 'category', NULL, '', 'N', 'Y', NULL, 'fa fa-navicon', 87, 'admin', 'update', '2021-06-29 08:37:18');
INSERT INTO `log_menu` VALUES (56, 35, 'Company Profile', 'company_profile', NULL, '', 'Y', 'Y', 'assets/images/compro/slider-default.jpg', 'fa fa-newspaper-o', 88, 'admin', 'insert', '2021-06-29 08:39:46');
INSERT INTO `log_menu` VALUES (56, 35, 'Download', 'download', NULL, '', 'Y', 'Y', NULL, 'fa fa-newspaper-o', 89, 'admin', 'update', '2021-06-29 09:59:27');
INSERT INTO `log_menu` VALUES (8, NULL, 'Products', '', NULL, 'Pemeliharaan dan perbaikan pekerjaan di bidang mekanikal dan elektrikal', 'Y', 'N', NULL, '', 90, 'admin', 'update', '2021-06-29 13:40:14');
INSERT INTO `log_menu` VALUES (53, 8, 'Heater & Thermocouples', 'products/category/20', NULL, '', 'Y', 'N', NULL, '', 91, 'admin', 'update', '2021-07-02 15:59:33');
INSERT INTO `log_menu` VALUES (57, 8, 'AUTOMATION', 'products/category/21', NULL, '', 'Y', 'N', 'assets/images/compro/slider-default.jpg', '', 92, 'admin', 'insert', '2021-07-02 16:02:11');

-- ----------------------------
-- Table structure for log_menu_access_group
-- ----------------------------
DROP TABLE IF EXISTS `log_menu_access_group`;
CREATE TABLE `log_menu_access_group`  (
  `mag_id` int NOT NULL,
  `mag_ug_id` int NULL DEFAULT NULL,
  `mag_rm_id` int NULL DEFAULT NULL,
  `mag_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Y',
  `last_user` int NULL DEFAULT NULL,
  `last_datetime` datetime(0) NULL DEFAULT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_menu_access_group
-- ----------------------------
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 1);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 2);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 3);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 4);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 5);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-12 22:33:28', 1, 'edit', '2020-10-12 22:33:28', 6);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 7);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 8);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 9);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 10);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 11);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 12);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 13);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 14);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 15);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-12 22:33:29', 1, 'edit', '2020-10-12 22:33:29', 16);
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 17);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 18);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 19);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 20);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 21);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 22);
INSERT INTO `log_menu_access_group` VALUES (140, 1, 47, 'Y', 1, '2020-10-12 23:06:59', 1, 'add', '2020-10-12 23:06:59', 23);
INSERT INTO `log_menu_access_group` VALUES (141, 1, 48, 'Y', 1, '2020-10-12 23:06:59', 1, 'add', '2020-10-12 23:06:59', 24);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 25);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 26);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 27);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 28);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 29);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 30);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 31);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 32);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 33);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-12 23:06:59', 1, 'edit', '2020-10-12 23:06:59', 34);
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 35);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 36);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 37);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 38);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 39);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 40);
INSERT INTO `log_menu_access_group` VALUES (140, 1, 47, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 41);
INSERT INTO `log_menu_access_group` VALUES (141, 1, 48, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 42);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 43);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 44);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 45);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 46);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 47);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 48);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 49);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 50);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 51);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-12 23:07:00', 1, 'edit', '2020-10-12 23:07:00', 52);
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 53);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 54);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 55);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 56);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 57);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 58);
INSERT INTO `log_menu_access_group` VALUES (140, 1, 47, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 59);
INSERT INTO `log_menu_access_group` VALUES (141, 1, 48, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 60);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 61);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 62);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 63);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 64);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 65);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 66);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 67);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 68);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 69);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-21 23:57:22', 1, 'edit', '2020-10-21 23:57:22', 70);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-21 23:57:22', 1, 'add', '2020-10-21 23:57:22', 71);
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 72);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 73);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 74);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 75);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 76);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 77);
INSERT INTO `log_menu_access_group` VALUES (140, 1, 47, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 78);
INSERT INTO `log_menu_access_group` VALUES (141, 1, 48, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 79);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 80);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 81);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 82);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 83);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 84);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 85);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 86);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 87);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 88);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 89);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-21 23:57:24', 1, 'edit', '2020-10-21 23:57:24', 90);
INSERT INTO `log_menu_access_group` VALUES (1, 1, 1, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 91);
INSERT INTO `log_menu_access_group` VALUES (122, 1, 4, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 92);
INSERT INTO `log_menu_access_group` VALUES (5, 1, 5, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 93);
INSERT INTO `log_menu_access_group` VALUES (132, 1, 42, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 94);
INSERT INTO `log_menu_access_group` VALUES (135, 1, 43, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 95);
INSERT INTO `log_menu_access_group` VALUES (138, 1, 46, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:42', 96);
INSERT INTO `log_menu_access_group` VALUES (140, 1, 47, 'Y', 1, '2020-10-21 23:58:42', 1, 'edit', '2020-10-21 23:58:43', 97);
INSERT INTO `log_menu_access_group` VALUES (141, 1, 48, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 98);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 99);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 100);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 101);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 102);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 103);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 104);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 105);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 106);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 107);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 108);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-21 23:58:43', 1, 'edit', '2020-10-21 23:58:43', 109);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-21 23:58:43', 1, 'add', '2020-10-21 23:58:43', 110);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 111);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 112);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 113);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 114);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 115);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 116);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 117);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 118);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 119);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 120);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 121);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-22 01:51:42', 1, 'edit', '2020-10-22 01:51:42', 122);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-22 01:51:42', 1, 'add', '2020-10-22 01:51:42', 123);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-23 11:31:22', 1, 'add', '2020-10-23 11:31:22', 124);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 125);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 126);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 127);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 128);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 129);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 130);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-23 11:31:22', 1, 'edit', '2020-10-23 11:31:22', 131);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 132);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 133);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 134);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 135);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 136);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-23 11:31:23', 1, 'edit', '2020-10-23 11:31:23', 137);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 138);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-23 11:41:19', 1, 'add', '2020-10-23 11:41:19', 139);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 140);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 141);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 142);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 143);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 144);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 145);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-23 11:41:19', 1, 'edit', '2020-10-23 11:41:19', 146);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 147);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 148);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 149);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 150);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 151);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-23 11:41:20', 1, 'edit', '2020-10-23 11:41:20', 152);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-23 12:10:53', 1, 'edit', '2020-10-23 12:10:53', 153);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 154);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 155);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 156);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 157);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 158);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 159);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 160);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 161);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 162);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-23 12:10:54', 1, 'edit', '2020-10-23 12:10:54', 163);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-23 12:10:55', 1, 'edit', '2020-10-23 12:10:55', 164);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-23 12:10:55', 1, 'edit', '2020-10-23 12:10:55', 165);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-23 12:10:55', 1, 'edit', '2020-10-23 12:10:55', 166);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-23 12:10:55', 1, 'edit', '2020-10-23 12:10:55', 167);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-23 12:10:55', 1, 'add', '2020-10-23 12:10:55', 168);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-23 12:16:46', 1, 'edit', '2020-10-23 12:16:46', 169);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-23 12:16:46', 1, 'edit', '2020-10-23 12:16:46', 170);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-23 12:16:46', 1, 'edit', '2020-10-23 12:16:46', 171);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-23 12:16:46', 1, 'edit', '2020-10-23 12:16:46', 172);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 173);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 174);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 175);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 176);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 177);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 178);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 179);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 180);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 181);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 182);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 183);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-23 12:16:47', 1, 'edit', '2020-10-23 12:16:47', 184);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-23 12:16:48', 1, 'add', '2020-10-23 12:16:48', 185);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 186);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 187);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 188);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 189);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 190);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 191);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 192);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 193);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 194);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 195);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 196);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 197);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 198);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 199);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 200);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 201);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-25 08:41:16', 1, 'edit', '2020-10-25 08:41:16', 202);
INSERT INTO `log_menu_access_group` VALUES (149, 1, 56, 'Y', 1, '2020-10-25 08:41:16', 1, 'add', '2020-10-25 08:41:16', 203);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 204);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 205);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 206);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 207);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 208);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 209);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 210);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 211);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-27 10:02:29', 1, 'edit', '2020-10-27 10:02:29', 212);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 213);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 214);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 215);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 216);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 217);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-27 10:02:30', 1, 'edit', '2020-10-27 10:02:30', 218);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-27 10:02:31', 1, 'edit', '2020-10-27 10:02:31', 219);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-27 10:02:31', 1, 'edit', '2020-10-27 10:02:31', 220);
INSERT INTO `log_menu_access_group` VALUES (149, 1, 56, 'Y', 1, '2020-10-27 10:02:31', 1, 'edit', '2020-10-27 10:02:31', 221);
INSERT INTO `log_menu_access_group` VALUES (150, 1, 57, 'Y', 1, '2020-10-27 10:02:31', 1, 'add', '2020-10-27 10:02:31', 222);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-27 10:08:14', 1, 'edit', '2020-10-27 10:08:14', 223);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-27 10:08:14', 1, 'edit', '2020-10-27 10:08:14', 224);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 225);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 226);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 227);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 228);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 229);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 230);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 231);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 232);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 233);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-27 10:08:15', 1, 'edit', '2020-10-27 10:08:15', 234);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 235);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 236);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 237);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 238);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 239);
INSERT INTO `log_menu_access_group` VALUES (149, 1, 56, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 240);
INSERT INTO `log_menu_access_group` VALUES (150, 1, 57, 'Y', 1, '2020-10-27 10:08:16', 1, 'edit', '2020-10-27 10:08:16', 241);
INSERT INTO `log_menu_access_group` VALUES (151, 1, 58, 'Y', 1, '2020-10-27 10:08:17', 1, 'add', '2020-10-27 10:08:17', 242);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 243);
INSERT INTO `log_menu_access_group` VALUES (152, 1, 59, 'Y', 1, '2020-10-27 10:24:32', 1, 'add', '2020-10-27 10:24:32', 244);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 245);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 246);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 247);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 248);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-27 10:24:32', 1, 'edit', '2020-10-27 10:24:32', 249);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 250);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 251);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 252);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 253);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 254);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 255);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 256);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 257);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 258);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 259);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-27 10:24:33', 1, 'edit', '2020-10-27 10:24:33', 260);
INSERT INTO `log_menu_access_group` VALUES (149, 1, 56, 'Y', 1, '2020-10-27 10:24:34', 1, 'edit', '2020-10-27 10:24:34', 261);
INSERT INTO `log_menu_access_group` VALUES (150, 1, 57, 'Y', 1, '2020-10-27 10:24:34', 1, 'edit', '2020-10-27 10:24:34', 262);
INSERT INTO `log_menu_access_group` VALUES (151, 1, 58, 'Y', 1, '2020-10-27 10:24:34', 1, 'edit', '2020-10-27 10:24:34', 263);
INSERT INTO `log_menu_access_group` VALUES (145, 1, 52, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 264);
INSERT INTO `log_menu_access_group` VALUES (152, 1, 59, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 265);
INSERT INTO `log_menu_access_group` VALUES (147, 1, 54, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 266);
INSERT INTO `log_menu_access_group` VALUES (146, 1, 53, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 267);
INSERT INTO `log_menu_access_group` VALUES (148, 1, 55, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 268);
INSERT INTO `log_menu_access_group` VALUES (125, 1, 2, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 269);
INSERT INTO `log_menu_access_group` VALUES (126, 1, 36, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 270);
INSERT INTO `log_menu_access_group` VALUES (127, 1, 33, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 271);
INSERT INTO `log_menu_access_group` VALUES (128, 1, 41, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 272);
INSERT INTO `log_menu_access_group` VALUES (136, 1, 44, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 273);
INSERT INTO `log_menu_access_group` VALUES (137, 1, 45, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 274);
INSERT INTO `log_menu_access_group` VALUES (133, 1, 37, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 275);
INSERT INTO `log_menu_access_group` VALUES (3, 1, 3, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 276);
INSERT INTO `log_menu_access_group` VALUES (130, 1, 38, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 277);
INSERT INTO `log_menu_access_group` VALUES (131, 1, 39, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 278);
INSERT INTO `log_menu_access_group` VALUES (142, 1, 49, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 279);
INSERT INTO `log_menu_access_group` VALUES (143, 1, 50, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 280);
INSERT INTO `log_menu_access_group` VALUES (144, 1, 51, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 281);
INSERT INTO `log_menu_access_group` VALUES (149, 1, 56, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 282);
INSERT INTO `log_menu_access_group` VALUES (150, 1, 57, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 283);
INSERT INTO `log_menu_access_group` VALUES (151, 1, 58, 'Y', 1, '2020-10-30 01:24:23', 1, 'edit', '2020-10-30 01:24:23', 284);
INSERT INTO `log_menu_access_group` VALUES (153, 1, 60, 'Y', 1, '2020-10-30 01:24:23', 1, 'add', '2020-10-30 01:24:23', 285);

-- ----------------------------
-- Table structure for log_menu_access_sub_group
-- ----------------------------
DROP TABLE IF EXISTS `log_menu_access_sub_group`;
CREATE TABLE `log_menu_access_sub_group`  (
  `masg_id` int NULL DEFAULT NULL,
  `masg_ug_id` int NULL DEFAULT NULL,
  `masg_usg_id` int NULL DEFAULT NULL,
  `masg_rm_id` int NULL DEFAULT NULL,
  `masg_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `last_user` int NULL DEFAULT NULL,
  `last_datetime` datetime(0) NULL DEFAULT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_menu_access_sub_group
-- ----------------------------

-- ----------------------------
-- Table structure for log_menu_access_user
-- ----------------------------
DROP TABLE IF EXISTS `log_menu_access_user`;
CREATE TABLE `log_menu_access_user`  (
  `mau_id` int UNSIGNED NOT NULL,
  `mau_user_id` int UNSIGNED NOT NULL,
  `mau_menu_id` int UNSIGNED NOT NULL,
  `mau_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_menu_access_user
-- ----------------------------

-- ----------------------------
-- Table structure for log_pages
-- ----------------------------
DROP TABLE IF EXISTS `log_pages`;
CREATE TABLE `log_pages`  (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_pages
-- ----------------------------
INSERT INTO `log_pages` VALUES (1, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for \r\nyour company needs, orientation to your demand, customize it and bring \r\nto your benefit.Starting its operation on January 2013 , barasaki \r\nproviding all kind of standard and customize heating’s for industrial \r\ngrade; band heater, cartridge heater, strip heater, tubular heater and \r\nsuch kind, inclusive types of thermocouple and its range. Provide also \r\nthe solution for measurement tools, Weighing Scale and any kind of \r\nBearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business \r\nmarket across all industrial needs. manufacturing; mechanical and \r\nelectronic function, heavy industry, office &amp; environment and \r\nsafety. With all of strength we have, believed in the near future \r\nbarasaki can provided direct profit to the customer through competitive \r\nand reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 300; line-height: 1.1; color: rgb(68, 68, 68); margin-top: 0px; margin-bottom: 20px; font-size: 28px; text-transform: uppercase; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 20px; color: rgb(51, 51, 51); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin-bottom: 0px; background-color: rgb(255, 255, 255); border: none; border-radius: 4px; box-shadow: none; margin-top: 5px;\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 10px 15px; border: none !important; border-top-left-radius: 3px; border-top-right-radius: 3px; color: rgb(51, 51, 51); background-color: inherit;\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; content: &quot;&quot;; float: left; width: 28px; height: 28px; background: url(&quot;../img/right-arrow.png&quot;) no-repeat; position: relative; top: -4px; left: -4px;\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; padding: 5px 15px 0px; font-size: 14px; font-weight: 300; color: rgb(150, 150, 150); line-height: 26px; margin-left: 30px; text-align: justify; border: none !important;\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', 'Y', 43, 'admin', 'update', '2021-06-27 00:13:26');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<p><br></p><table class=\"table table-bordered\" width=\"1001\" height=\"1013\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/50115487da864a98aa168f00dac1d36f.jpg\" style=\"\"><br></p></td><td><div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business expansion and aggressive market penetration, covering solution to a diverse client base.</p>\r\n  					</div></td></tr><tr><td><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VISION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">BECOME A SOLUTION FOR EVERY NEEDS</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">MISSION</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\">ADDRESSING AND DELIVER THE BEST AT MOST SATISFACTION TO EACH AND EVERY CUSTOMER</h4></div></div></div><h2 style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-weight:=\"\" 300;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);=\"\" margin-top:=\"\" 0px;=\"\" margin-bottom:=\"\" 20px;=\"\" font-size:=\"\" 28px;=\"\" text-transform:=\"\" uppercase;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\">VALUE</h2><div class=\"panel-group\" id=\"accordion\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 20px;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" none;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>SERVICES TO THE BEST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">commitment to quality and expectation</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>PASSION FOR EXCELLENT</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We aim to the best on what all we do</div></div><div class=\"panel panel-default\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" margin-bottom:=\"\" 0px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" border:=\"\" none;=\"\" border-radius:=\"\" 4px;=\"\" box-shadow:=\"\" margin-top:=\"\" 5px;\"=\"\"><div class=\"panel-heading\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 10px=\"\" 15px;=\"\" border:=\"\" none=\"\" !important;=\"\" border-top-left-radius:=\"\" 3px;=\"\" border-top-right-radius:=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" inherit;\"=\"\"><h4 class=\"panel-title\" style=\"box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 16px; text-transform: uppercase;\"><span class=\"right-icon\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" content:=\"\" \"\";=\"\" float:=\"\" left;=\"\" width:=\"\" 28px;=\"\" height:=\"\" background:=\"\" url(\"..=\"\" img=\"\" right-arrow.png\")=\"\" no-repeat;=\"\" position:=\"\" relative;=\"\" top:=\"\" -4px;=\"\" left:=\"\" -4px;\"=\"\"></span>INSPIRE TRUST</h4></div><div class=\"panel-body\" style=\"box-sizing: border-box; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" padding:=\"\" 5px=\"\" 15px=\"\" 0px;=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 300;=\"\" color:=\"\" rgb(150,=\"\" 150,=\"\" 150);=\"\" line-height:=\"\" 26px;=\"\" margin-left:=\"\" 30px;=\"\" text-align:=\"\" justify;=\"\" border:=\"\" none=\"\" !important;\"=\"\">We work with credibility, professionalism and integrity to instill customer trust and confidence.</div></div></div></td><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/246c63564462f6db8293b96856f3a51a.png\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', 'Y', 44, 'admin', 'update', '2021-06-27 00:23:11');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img src=\"http://localhost/barasaki-btm/assets/images/tmp/263a1fd00144db5b62a1593eab85e2b7.jpg\" style=\"width: 100%;\"><br></p></td><td><p>HISTORY</p><p>Barasaki is the corporate which provide you the solution for your \r\ncompany needs, orientation to your demand, customize it and bring to \r\nyour benefit.Starting its operation on January 2013 , barasaki providing\r\n all kind of standard and customize heating’s for industrial grade; band\r\n heater, cartridge heater, strip heater, tubular heater and such kind, \r\ninclusive types of thermocouple and its range. Provide also the solution\r\n for measurement tools, Weighing Scale and any kind of Bearings, Linear \r\nMotion and E-Chain.</p><p>Beginning of 2014, barasaki began to develop the business market across \r\nall industrial needs. manufacturing; mechanical and electronic function,\r\n heavy industry, office &amp; environment and safety. With all of \r\nstrength we have, believed in the near future barasaki can provided \r\ndirect profit to the customer through competitive and reasonable \r\npricing, as well timing on delivery with trust.</p><p>Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p></td></tr><tr><td><h2>Vision</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Become a solution for every needs\r\n  										</h4><h2>Mission</h2><h4 class=\"panel-title\" style=\"margin-left: 25px;\">Addressing and deliver the best at most satisfaction to each and every customer</h4><h2>Value</h2><br><ul><li><b>Services to the best\r\n                      </b></li></ul><p style=\"margin-left: 25px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commitment to quality and expectation \r\n                      </p></td><td><p>&nbsp;<img src=\"http://localhost/barasaki-btm/assets/images/tmp/4dbca5a24330c22831084879d439ffae.png\" style=\"width: 100%;\"><br></p></td></tr></tbody></table><p><br></p>', 'about_us', 'Y', 45, 'admin', 'update', '2021-06-27 00:34:57');
INSERT INTO `log_pages` VALUES (4, 'Company Profile', '<p>&lt;iframe src=\"https://drive.google.com/file/d/1ZYMDK4-f8XmupBWctH5RKBQGf0Xz0i5H/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"&gt;&lt;/iframe&gt;<br></p>', '', 'Y', 46, 'admin', 'insert', '2021-06-28 06:18:12');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<br>', 'about_us', 'Y', 47, 'admin', 'update', '2021-06-29 08:06:11');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"<?php echo base_url(); ?>assets/img/vision-mission.png\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', 'Y', 48, 'admin', 'update', '2021-06-29 08:09:50');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office &amp; environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', 'Y', 49, 'admin', 'update', '2021-06-29 08:11:00');
INSERT INTO `log_pages` VALUES (1, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office & environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', 'Y', 50, 'admin', 'update', '2021-06-29 08:11:59');

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
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `date` datetime(0) NULL DEFAULT NULL,
  `is_best` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_action` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `log_created_date` datetime(0) NOT NULL,
  `products_spesification` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_products
-- ----------------------------
INSERT INTO `log_products` VALUES (27, 1, 'CATRIDGE HEATERS', 0.00, '', '', 'CATRIDGE HEATERS', 'catridge,heaters', 'Y', '2021-07-02 15:57:41', NULL, 64, 'admin', 'insert', '2021-07-02 15:57:41', NULL);
INSERT INTO `log_products` VALUES (27, 1, 'CATRIDGE HEATERS', 0.00, '', '', 'CATRIDGE HEATERS', 'catridge,heaters', 'Y', '2021-07-02 15:58:09', NULL, 65, 'admin', 'update', '2021-07-02 15:58:09', NULL);
INSERT INTO `log_products` VALUES (27, 20, 'CATRIDGE HEATERS', 0.00, '', '', 'CATRIDGE HEATERS', 'catridge,heaters', 'Y', '2021-07-02 15:59:44', NULL, 66, 'admin', 'update', '2021-07-02 15:59:44', NULL);

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
-- Table structure for log_ref_menu
-- ----------------------------
DROP TABLE IF EXISTS `log_ref_menu`;
CREATE TABLE `log_ref_menu`  (
  `rm_id` int NOT NULL,
  `rm_parent_id` int UNSIGNED NULL DEFAULT NULL,
  `rm_caption` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rm_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_url_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_sequence` int UNSIGNED NOT NULL DEFAULT 1,
  `rm_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `rm_is_admin` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NULL DEFAULT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_ref_menu
-- ----------------------------
INSERT INTO `log_ref_menu` VALUES (1, NULL, 'Findings', 'Findings', 'trademark/invented_brand', NULL, 'fas fa-search', 1, 'Y', NULL, 1, '2020-10-12 22:32:29', 1, 'edit', '2020-10-12 22:32:29', 7);
INSERT INTO `log_ref_menu` VALUES (43, 4, 'Similar Letters and/or Numbers', 'Similar Letters and/or Numbers', 'trademark/similar_letters', NULL, 'fas fa-font', 4, 'Y', NULL, 1, '2020-10-12 22:35:35', 1, 'edit', '2020-10-12 22:35:35', 8);
INSERT INTO `log_ref_menu` VALUES (48, 4, 'BRM List', 'BRM List', 'trademark/brm_list', NULL, 'fas fa-list', 6, 'Y', NULL, 1, '2020-10-12 23:06:45', 1, 'add', '2020-10-12 23:06:45', 9);
INSERT INTO `log_ref_menu` VALUES (49, 2, 'Master Data', 'Master Data', NULL, NULL, 'fas fa-table', 3, 'Y', NULL, 1, '2020-10-21 23:57:12', 1, 'add', '2020-10-21 23:57:12', 10);
INSERT INTO `log_ref_menu` VALUES (50, 49, 'Item List', 'Item List', 'settings/item_list', NULL, 'fas fa-list', 1, 'Y', NULL, 1, '2020-10-21 23:58:26', 1, 'add', '2020-10-21 23:58:26', 11);
INSERT INTO `log_ref_menu` VALUES (51, 49, 'Item Unit', 'Item Unit', 'settings/item_unit', NULL, 'fas fa-boxes', 2, 'Y', NULL, 1, '2020-10-22 01:51:26', 1, 'add', '2020-10-22 01:51:26', 12);
INSERT INTO `log_ref_menu` VALUES (52, NULL, 'PROJECTS', 'DATA PROJECTS', NULL, NULL, 'fas fa-briefcase', 1, 'Y', NULL, 1, '2020-10-23 11:31:10', 1, 'add', '2020-10-23 11:31:10', 13);
INSERT INTO `log_ref_menu` VALUES (52, NULL, 'Projects', 'Data Projects', NULL, NULL, 'fas fa-briefcase', 1, 'Y', NULL, 1, '2020-10-23 11:31:38', 1, 'edit', '2020-10-23 11:31:38', 14);
INSERT INTO `log_ref_menu` VALUES (52, NULL, 'Master Data', 'Master Data', NULL, NULL, 'fas fa-briefcase', 1, 'Y', NULL, 1, '2020-10-23 11:40:02', 1, 'edit', '2020-10-23 11:40:02', 15);
INSERT INTO `log_ref_menu` VALUES (53, 52, 'RAB', 'RAB Data', 'master_data', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-23 11:41:11', 1, 'add', '2020-10-23 11:41:11', 16);
INSERT INTO `log_ref_menu` VALUES (53, 52, 'RAB', 'RAB Data', 'master_data/rab', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-23 11:43:51', 1, 'edit', '2020-10-23 11:43:51', 17);
INSERT INTO `log_ref_menu` VALUES (54, 49, 'Template RAB', 'Template RAB', 'settings/rab_template', NULL, 'fas fa-ruler-vertical', 3, 'Y', NULL, 1, '2020-10-23 12:10:43', 1, 'add', '2020-10-23 12:10:43', 18);
INSERT INTO `log_ref_menu` VALUES (54, 2, 'Template RAB', 'Template RAB', 'settings/rab_template', NULL, 'fas fa-ruler-vertical', 4, 'Y', NULL, 1, '2020-10-23 12:15:59', 1, 'edit', '2020-10-23 12:15:59', 19);
INSERT INTO `log_ref_menu` VALUES (55, 54, 'Item RAB', 'Item Data RAB', 'settings/item_rab', NULL, 'fas fa-pencil-ruler', 1, 'Y', NULL, 1, '2020-10-23 12:16:39', 1, 'add', '2020-10-23 12:16:39', 20);
INSERT INTO `log_ref_menu` VALUES (54, 52, 'Template RAB', 'Template RAB', 'settings/rab_template', NULL, 'fas fa-ruler-vertical', 4, 'Y', NULL, 1, '2020-10-25 08:38:07', 1, 'edit', '2020-10-25 08:38:07', 21);
INSERT INTO `log_ref_menu` VALUES (49, 2, 'RAB Config', 'Master Data', NULL, NULL, 'fas fa-table', 3, 'Y', NULL, 1, '2020-10-25 08:38:57', 1, 'edit', '2020-10-25 08:38:57', 22);
INSERT INTO `log_ref_menu` VALUES (49, 2, 'Master Data', 'Master Data', NULL, NULL, 'fas fa-table', 3, 'Y', NULL, 1, '2020-10-25 08:40:16', 1, 'edit', '2020-10-25 08:40:16', 23);
INSERT INTO `log_ref_menu` VALUES (52, NULL, 'RAB Config', 'RAB Config', NULL, NULL, 'fas fa-briefcase', 1, 'Y', NULL, 1, '2020-10-25 08:40:26', 1, 'edit', '2020-10-25 08:40:26', 24);
INSERT INTO `log_ref_menu` VALUES (56, 49, 'Building Type', 'Building Type', 'settings/building_type', NULL, 'fas fa-building', 3, 'Y', NULL, 1, '2020-10-25 08:41:03', 1, 'add', '2020-10-25 08:41:03', 25);
INSERT INTO `log_ref_menu` VALUES (53, 54, 'RAB', 'RAB Data', 'master_data/rab', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-26 17:38:56', 1, 'edit', '2020-10-26 17:38:56', 26);
INSERT INTO `log_ref_menu` VALUES (53, 54, 'RAB List Template', 'RAB List Template', 'master_data/rab_list', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-26 18:36:07', 1, 'edit', '2020-10-26 18:36:07', 27);
INSERT INTO `log_ref_menu` VALUES (53, 54, 'RAB List Template', 'RAB List Template', 'settings/rab_list', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-26 18:36:50', 1, 'edit', '2020-10-26 18:36:50', 28);
INSERT INTO `log_ref_menu` VALUES (53, 54, 'RAB List Template', 'RAB List Template', 'master_data/rab_list', NULL, 'fas fa-building', 1, 'Y', NULL, 1, '2020-10-26 18:38:39', 1, 'edit', '2020-10-26 18:38:39', 29);
INSERT INTO `log_ref_menu` VALUES (55, 54, 'Item RAB', 'Item Data RAB', 'master_data/item_rab', NULL, 'fas fa-pencil-ruler', 1, 'Y', NULL, 1, '2020-10-26 18:38:50', 1, 'edit', '2020-10-26 18:38:50', 30);
INSERT INTO `log_ref_menu` VALUES (57, NULL, 'Projects', 'Projects', NULL, NULL, 'fas fa-paint-roller', 3, 'Y', NULL, 1, '2020-10-27 10:02:22', 1, 'add', '2020-10-27 10:02:22', 31);
INSERT INTO `log_ref_menu` VALUES (58, 57, 'Projects Data', 'Projects Data', 'projects/projects_data', NULL, 'fas fa-hard-hat', 1, 'Y', NULL, 1, '2020-10-27 10:08:04', 1, 'add', '2020-10-27 10:08:04', 32);
INSERT INTO `log_ref_menu` VALUES (59, 52, 'RAB Building', 'RAB Building', 'master_data/rab_building', NULL, 'fas fa-ruler-combined', 3, 'Y', NULL, 1, '2020-10-27 10:24:24', 1, 'add', '2020-10-27 10:24:24', 33);
INSERT INTO `log_ref_menu` VALUES (60, 57, 'Material Consumption', 'Material Consumption', 'projects/material_consumption', NULL, 'fas fa-pencil-ruler', 2, 'Y', NULL, 1, '2020-10-30 01:24:12', 1, 'add', '2020-10-30 01:24:12', 34);

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_url_target
-- ----------------------------

-- ----------------------------
-- Table structure for log_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `log_user_detail`;
CREATE TABLE `log_user_detail`  (
  `ud_id` int UNSIGNED NOT NULL,
  `ud_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ud_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ud_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `ud_sub_group` int UNSIGNED NOT NULL DEFAULT 3,
  `ud_notif_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  `log_user_id` int UNSIGNED NOT NULL,
  `log_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_datetime` datetime(0) NOT NULL,
  `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_user_detail
-- ----------------------------
INSERT INTO `log_user_detail` VALUES (1, 'admin', '2b9d2a9db155ff51d4574bc2482b510e0946487b', 'Y', 1, 'Y', 1, '2020-10-22 02:10:20', 1, 'edit', '2020-10-22 02:10:20', 5);

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
-- Table structure for log_user_registration
-- ----------------------------
DROP TABLE IF EXISTS `log_user_registration`;
CREATE TABLE `log_user_registration`  (
  `ur_id` int NOT NULL,
  `ur_no_reg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_place_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_date_birth` date NULL DEFAULT NULL,
  `ur_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_verifikasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N',
  `ur_is_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y',
  `ur_url_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_url_selfie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_url_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_userid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_action` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_user_registration
-- ----------------------------
INSERT INTO `log_user_registration` VALUES (6, '00000001', '04645645', 'Dian Kosasih', 'padang', '1989-08-16', 'padang', 'Wiraswasta', 'dian@kosasih.com', '0825487', 'N', 'Y', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO `log_user_registration` VALUES (8, '00000003', '1371111608890001', 'DIAN KOSASIH', 'PADANG', '0000-00-00', 'PADANG', 'WIRASWASTA', 'dian@kosasih.com', '0852635241', 'N', 'Y', 'assets/images/registrasi/1df12112ec8d7acbe5656be534326cd6', 'assets/images/registrasi/450cb850c42923f8a93019e407de2e99', 'assets/images/registrasi/e596320cdd94864e524cfb9b8fbfc27a', 8, 'admin', 'insert', '2022-03-19 09:44:04');
INSERT INTO `log_user_registration` VALUES (9, '00000004', '1352222', 'onti', 'Padang', '1999-05-19', 'padang', 'PNS', 'asdas@gaks.cop', '085244545', 'N', 'Y', 'assets/images/registrasi/d88ec64aa8c00df5c188ccc8201123f0', 'assets/images/registrasi/d3ef3f11dc5e532410d7e1d8cae4eb86', 'assets/images/registrasi/17000a40fdcae757d93519f4438f60f9', 9, 'admin', 'insert', '2022-03-19 10:44:33');

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
INSERT INTO `menu` VALUES (8, NULL, 'Products', '', NULL, 'Pemeliharaan dan perbaikan pekerjaan di bidang mekanikal dan elektrikal', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
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
INSERT INTO `menu` VALUES (51, 22, 'Category', 'category', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-navicon');
INSERT INTO `menu` VALUES (52, 22, 'Category Product', 'category_product', NULL, '', 'N', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-navicon');
INSERT INTO `menu` VALUES (53, 8, 'Heater & Thermocouples', 'products/category/9', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'N', '');
INSERT INTO `menu` VALUES (54, 18, 'Menu', '', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-picture-o');
INSERT INTO `menu` VALUES (55, 54, 'Site Map', 'site_map', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-picture-o');
INSERT INTO `menu` VALUES (56, 35, 'Download', 'download', NULL, '', 'Y', 'assets/images/compro/slider-default.jpg', 'Y', 'fa fa-newspaper-o');

-- ----------------------------
-- Table structure for menu_access_sub_group
-- ----------------------------
DROP TABLE IF EXISTS `menu_access_sub_group`;
CREATE TABLE `menu_access_sub_group`  (
  `masg_id` int NOT NULL AUTO_INCREMENT,
  `masg_ug_id` int NULL DEFAULT NULL,
  `masg_usg_id` int NULL DEFAULT NULL,
  `masg_rm_id` int NULL DEFAULT NULL,
  `masg_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `last_user` int NULL DEFAULT NULL,
  `last_datetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`masg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of menu_access_sub_group
-- ----------------------------
INSERT INTO `menu_access_sub_group` VALUES (7, 1, 1, 1, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (8, 1, 1, 4, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (9, 1, 1, 5, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (10, 1, 1, 40, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (11, 1, 1, 42, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (12, 1, 1, 2, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (13, 1, 1, 36, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (14, 1, 1, 33, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (15, 1, 1, 41, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (17, 1, 1, 3, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (18, 1, 1, 38, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (19, 1, 1, 39, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (20, 1, 1, 43, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (21, 1, 1, 45, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (22, 1, 1, 37, 'Y', 1, '2020-09-27 00:03:50');
INSERT INTO `menu_access_sub_group` VALUES (23, 1, 2, 1, 'Y', 1, '2020-09-28 16:20:10');
INSERT INTO `menu_access_sub_group` VALUES (24, 1, 2, 4, 'Y', 1, '2020-09-28 16:20:10');
INSERT INTO `menu_access_sub_group` VALUES (25, 1, 2, 2, 'Y', 1, '2020-09-28 16:20:10');

-- ----------------------------
-- Table structure for menu_access_user
-- ----------------------------
DROP TABLE IF EXISTS `menu_access_user`;
CREATE TABLE `menu_access_user`  (
  `mau_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `mau_user_id` int UNSIGNED NOT NULL,
  `mau_menu_id` int UNSIGNED NOT NULL,
  `mau_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`mau_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of menu_access_user
-- ----------------------------
INSERT INTO `menu_access_user` VALUES (1, 1, 1, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (2, 1, 2, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (4, 1, 4, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (5, 1, 5, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (39, 1, 33, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (40, 1, 36, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (45, 1, 40, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (46, 1, 41, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (47, 1, 43, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (48, 1, 45, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (49, 1, 42, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (50, 1, 37, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (51, 1, 3, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (52, 1, 38, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (53, 1, 39, 'Y', 1, '2020-09-27 00:04:51');
INSERT INTO `menu_access_user` VALUES (54, 2, 1, 'Y', 1, '2020-09-27 23:46:19');
INSERT INTO `menu_access_user` VALUES (55, 2, 4, 'Y', 1, '2020-09-27 23:46:19');
INSERT INTO `menu_access_user` VALUES (56, 2, 5, 'Y', 1, '2020-09-27 23:46:19');
INSERT INTO `menu_access_user` VALUES (57, 2, 40, 'Y', 1, '2020-09-27 23:46:19');
INSERT INTO `menu_access_user` VALUES (58, 2, 42, 'Y', 1, '2020-09-27 23:46:19');

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
INSERT INTO `message` VALUES (1, 'dian', 'kosasih', 'didendiko@gmail.com', 'tes', 'tes', 'Y', '2020-02-20 09:56:19');
INSERT INTO `message` VALUES (2, 'asdasdas', 'dsdsd', 'asdasd@gmail.com', 'asdasd', 'asdasda', 'Y', '2020-03-17 14:40:45');
INSERT INTO `message` VALUES (3, 'asdasd', 'asdsd', 'asdasd@gmail.com', 'sdasd', 'asdasdasdas', 'Y', '2020-03-17 14:41:23');
INSERT INTO `message` VALUES (4, 'erna', 'wati', 'ernawati123.erna@yahoo.com', 'permintaan penawaran', '', 'Y', '2020-08-11 17:02:45');
INSERT INTO `message` VALUES (5, 'Silvanus ', 'AGBEYOME (Mr)', 'mr.silvanus.info@gmail.com', 'Business Inquiry', 'Dear Sir,\r\nMy name is Mr. Silvanus AGBEYOME. I am the Proprietor/Business Development Manager of AGBEYOME ENTERPRISE Sarl-U. I got your company information through my search for foreign suppliers.\r\nAGBEYOME ENTERPRISE Sarl-U is a Togolese company distribu', 'Y', '2020-11-04 17:53:40');
INSERT INTO `message` VALUES (6, 'Dian', 'Kosasih', 'algazasolution@gmail.com', 'Tanya', 'Saya membutuhkan sebuah penawaran produk pelangsing', 'Y', '2021-06-29 09:00:33');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of offering
-- ----------------------------
INSERT INTO `offering` VALUES (3, 'asdasd', 'asdasd', '', '085267467848', 'saya ingin menanyakan tentang penawaran project koanstruksi', 'N', '2020-03-16 19:25:34');
INSERT INTO `offering` VALUES (4, 'leo alif', 'mahendra', '', '085273029858', 'Kepada Yth,\r\nPerusahaan BUMN/Swasta\r\nDi Tempat \r\nAttn: Pimpinan Perusahaan /Finance\r\n 	\r\nPerihal  : Penawaran kerja sama penerbitan bank garansi dan surety bond\r\n \r\nDengan Hormat,\r\nPerkenalkan kami   PT.BINTANG HARAPAN BERSAMA  Dengan sertifikat ke agenan', 'N', '2020-11-23 07:28:44');
INSERT INTO `offering` VALUES (5, '', '', '', '', '', 'N', '2022-03-19 08:51:52');
INSERT INTO `offering` VALUES (6, '', '', '', '', '', 'N', '2022-03-19 08:52:51');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'About Us', '<div class=\"\">\r\n  					<p></p><div class=\"col-md-6 no-padding-left\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/f9f5771863cefa18a04ef1edf7a3aff6.jpg\" style=\"width: 100%;\">\r\n  					</div><p></p>\r\n  					<div class=\"col-md-6\">\r\n  						<h2>History</h2>\r\n  						<p>\r\n  							Barasaki is the corporate which provide you the solution for your company needs, orientation to your demand, customize it and bring to your benefit.Starting its operation on January 2013 , barasaki providing all kind of standard and customize heating’s for industrial grade; band heater, cartridge heater, strip heater, tubular heater and such kind, inclusive types of thermocouple and its range. Provide also the solution for measurement tools, Weighing Scale and any kind of Bearings, Linear Motion and E-Chain.<br><br>\r\n\r\n  							Beginning of 2014, barasaki began to develop the business market across all industrial needs. manufacturing; mechanical and electronic function, heavy industry, office & environment and safety. With all of strength we have, believed in the near future barasaki can provided direct profit to the customer through competitive and reasonable pricing, as well timing on delivery with trust.<br><br>\r\n                Year 2015 change the name to PT. Barasaki Sinergi Semesta, continuing on strategic business\r\nexpansion and aggressive market penetration, covering solution to a diverse client base.\r\n  						</p>\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>\r\n<div class=\"what-we-do\">\r\n  					<div class=\"col-md-6 no-padding-left\">\r\n  						<h2>Vision</h2>\r\n  							<div class=\"panel-group\" id=\"accordion\">\r\n  								<div class=\"panel panel-default\">\r\n  									<div class=\"panel-heading\">\r\n  										<h4 class=\"panel-title\">\r\n  												Become a solution for every needs\r\n  										</h4>\r\n  									</div>\r\n  								</div>\r\n  							</div>\r\n                <h2>Mission</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          Addressing and deliver the best at most satisfaction to each and every customer\r\n                      </h4>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <h2>Value</h2>\r\n                <div class=\"panel-group\" id=\"accordion\">\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        <span class=\"right-icon\"></span>\r\n                          Services to the best\r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        commitment to quality and expectation \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                        \r\n                          <span class=\"right-icon\"></span>\r\n                          Passion for Excellent \r\n                      </h4>\r\n                    </div>\r\n                      <div class=\"panel-body\">\r\n                        We aim to the best on what all we do \r\n                      </div>\r\n                  </div>\r\n                  <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                      <h4 class=\"panel-title\">\r\n                          <span class=\"right-icon\"></span>\r\n                          Inspire trust\r\n                        \r\n                    </h4></div>\r\n                      <div class=\"panel-body\">\r\n                        We work with credibility, professionalism and integrity to instill customer trust and confidence. \r\n                      </div>\r\n                  </div>\r\n                </div>\r\n\r\n\r\n  					</div>\r\n  					<div class=\"col-md-6 no-padding-right\">\r\n  						<img src=\"http://localhost/barasaki-btm/assets/images/tmp/e2e695fdf40dcb3dfbf228b58a7dfedb.png\" style=\"width: 100%;\">\r\n  					</div>\r\n  					<div class=\"clearfix\"></div>\r\n  				</div>', 'about_us', 'Y');
INSERT INTO `pages` VALUES (2, 'Visi dan Misi', '<p><!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"--\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]--><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><u><span style=\"font-size: 12pt; line-height: 107%; font-family: \"Source Sans Pro\";\">VISI, MISI, DAN NILAI </span></u><u><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\"Times New Roman\",\"serif\"\"></span></u></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Visi</span><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:51.35pt;margin-bottom:\r\n8.0pt;margin-left:.5in;text-align:justify\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Menjadi\r\nPerusahaan Yang Profesional, Berkembang dan Bermanfaat untuk Memenuhi Kebutuhan\r\nMasyarakat, Bangsa, dan Negara”</span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Misi</span><i><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"margin-left:.5in;text-align:justify\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Membangun Bisnis dan Aset\r\nProduktif secara terintegrasi guna memberikan Manfaat & Memberikan layanan\r\njasa pemeliharaan yang profesional, handal dan berorientasi pada karakter\r\npelanggan” </span></i><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:.25in\"><span style=\"font-family: \"Source Sans Pro\";\">Nilai </span><span style=\"font-family:\"Times New Roman\",\"serif\"\"></span></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span><p class=\"MsoNormal\" style=\"text-indent:.5in\"><i><span style=\"font-family: \"Source Sans Pro\";\">“Cepat,\r\nTanggap dan Penuh Tanggung Tawab”</span></i></p><span style=\"font-family: \"Source Sans Pro\";\">\r\n\r\n</span>', 'visi_misi', 'Y');
INSERT INTO `pages` VALUES (3, 'Kontraktor', '', '', 'Y');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (8, 'Direktur', 'Direktur', 1, 'Y');
INSERT INTO `position` VALUES (9, 'Manager', 'Manager', 1, 'Y');
INSERT INTO `position` VALUES (10, 'Staff', 'Staff', 1, 'Y');

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
  `meta_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_best` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (27, 20, 'CATRIDGE HEATERS', 0.00, '', '', NULL, '2021-07-02 15:59:44', 'catridge,heaters', 'CATRIDGE HEATERS', NULL, 'Y');

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
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products_image
-- ----------------------------
INSERT INTO `products_image` VALUES (68, 27, 'assets/images/product/58da1f13a3e69ef39a12babdceb5d787.jpg', 0, NULL, 'Y');

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for ref_menu
-- ----------------------------
DROP TABLE IF EXISTS `ref_menu`;
CREATE TABLE `ref_menu`  (
  `rm_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rm_parent_id` int UNSIGNED NULL DEFAULT NULL,
  `rm_caption` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rm_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_url_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rm_sequence` int UNSIGNED NOT NULL DEFAULT 1,
  `rm_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  `rm_is_admin` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ref_menu
-- ----------------------------
INSERT INTO `ref_menu` VALUES (100, NULL, 'Home', 'sdfsdf', 'home', NULL, '', 1, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (102, 109, 'Customer', '', 'customer', NULL, 'fa fa-users', 3, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (103, 3, 'Kontraktor', 'Penyediaan jasa konstruksi dalam bidang kelistrikan dan mekanik<br>', 'services/service/contractor', NULL, 'flaticon-building', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (107, NULL, 'Products', 'Pemeliharaan dan perbaikan pekerjaan di bidang mekanikal dan elektrikal', '', NULL, '-', 2, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (108, 109, 'Distributor', '', 'distributor', NULL, 'fa fa-automobile', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (109, NULL, 'Pages', NULL, 'configuration', NULL, 'fa fa-check-circle', 1, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (110, 8, 'AUTOMATION', '', 'products/category/21', NULL, '', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (111, 109, 'Projects', NULL, 'projects', NULL, 'fa fa-pencil-square-o', 5, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (112, 109, 'Products', NULL, 'products', NULL, 'fa fa-cube', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (113, 109, 'Slide', NULL, 'slide', NULL, 'fa fa-picture-o', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (114, NULL, 'Settings', NULL, '', NULL, 'fa fa-wrench', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (115, 114, 'Employee', '', 'employee', NULL, 'fa fa-users', 1, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (116, 114, 'Users', NULL, 'users', NULL, 'fa fa-key', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (117, 114, 'Company', NULL, 'company', NULL, 'fa fa-building', 1, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (118, 114, 'Category', NULL, 'category', NULL, 'fa fa-navicon', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (119, 114, 'Menu', '', 'menu', NULL, 'fa fa-picture-o', 5, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (120, 107, 'Heater & Thermocouples', 'Thermocouples are cheap, interchangeable, have common connectors & can measure a large range of temperatures.', 'products/category/20', NULL, '', 5, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (121, 114, 'Menu', '', '', NULL, 'fa fa-picture-o', 2, 'N', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (122, 114, 'Site Map', '', 'site_map', NULL, 'fa fa-picture-o', 6, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (123, 127, 'Download', '', 'download', NULL, 'fa fa-newspaper-o', 5, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (124, NULL, 'About Us', '', 'pages/detail/about_us', NULL, '-', 3, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (125, 127, 'Message', '', 'message', NULL, 'fa fa-comment', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (126, 2, 'Visi dan Misi', '', 'pages/detail/visi_misi', NULL, '', 1, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (127, NULL, 'Content', '', '', NULL, 'fa fa-file-text', 2, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (128, 127, 'Articles', '', 'articles', NULL, 'fa fa-paperclip', 3, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (129, 127, 'News', '', 'news', NULL, 'fa fa-newspaper-o', 4, 'Y', 1, '2021-07-04 02:06:19', 'Y');
INSERT INTO `ref_menu` VALUES (130, NULL, 'Contact', '', 'contact', NULL, '-', 4, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (132, 107, 'Aemic', '', 'http://ae-mic.com/', '_blank', '', 1, 'Y', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (133, 107, 'teeeee', '', 'tetete', NULL, '', 2, 'N', 1, '2021-07-04 02:06:19', 'N');
INSERT INTO `ref_menu` VALUES (134, 107, 'karambiac', '', '', NULL, '', 1, 'Y', 1, '2021-07-04 02:06:19', 'N');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `ud_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ud_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ud_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ud_sub_group` int UNSIGNED NOT NULL DEFAULT 3,
  `ud_is_active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `last_user` int UNSIGNED NOT NULL,
  `last_datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`ud_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_detail
-- ----------------------------
INSERT INTO `user_detail` VALUES (1, 'admin', '05962b1a8d2e2153db9c2facf89504532b901aa6', 1, 'Y', 1, '2020-10-22 02:10:20');

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
-- Table structure for user_registration
-- ----------------------------
DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE `user_registration`  (
  `ur_id` int NOT NULL AUTO_INCREMENT,
  `ur_no_reg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_place_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_date_birth` date NULL DEFAULT NULL,
  `ur_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_verifikasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N',
  `ur_is_active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y',
  `ur_url_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_url_selfie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ur_url_kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_registration
-- ----------------------------
INSERT INTO `user_registration` VALUES (6, '00000001', '04645645', 'Dian Kosasih', 'padang', '1989-08-16', 'padang', 'Wiraswasta', 'dian@kosasih.com', '0825487', 'N', 'Y', NULL, NULL, NULL);
INSERT INTO `user_registration` VALUES (7, '00000002', '1371111608890001', 'DIAN KOSASIH', 'PADANG', '0000-00-00', 'PADANG', 'WIRASWASTA', 'dian@kosasih.com', '0852635241', 'N', 'Y', 'assets/images/registrasi/1df12112ec8d7acbe5656be534326cd6', 'assets/images/registrasi/450cb850c42923f8a93019e407de2e99', 'assets/images/registrasi/e596320cdd94864e524cfb9b8fbfc27a');
INSERT INTO `user_registration` VALUES (8, '00000003', '1371111608890001', 'DIAN KOSASIH', 'PADANG', '0000-00-00', 'PADANG', 'WIRASWASTA', 'dian@kosasih.com', '0852635241', 'N', 'Y', 'assets/images/registrasi/1df12112ec8d7acbe5656be534326cd6', 'assets/images/registrasi/450cb850c42923f8a93019e407de2e99', 'assets/images/registrasi/e596320cdd94864e524cfb9b8fbfc27a');
INSERT INTO `user_registration` VALUES (9, '00000004', '1352222', 'onti', 'Padang', '1999-05-19', 'padang', 'PNS', 'asdas@gaks.cop', '085244545', 'N', 'Y', 'assets/images/registrasi/d88ec64aa8c00df5c188ccc8201123f0', 'assets/images/registrasi/d3ef3f11dc5e532410d7e1d8cae4eb86', 'assets/images/registrasi/17000a40fdcae757d93519f4438f60f9');

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
