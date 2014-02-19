-- MySQL dump 10.13  Distrib 5.5.35, for Linux (x86_64)
--
-- Host: localhost    Database: inbiomed_portal
-- ------------------------------------------------------
-- Server version	5.5.35-cll

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES (1,0,'Nosotros','','nosotros','','2','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(2,0,'Consultorias','','consultorias','','1','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(3,0,'Cientificos','','cientificos','','3','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(4,0,'Apoyo a la Investigacion','','apoyo-a-la-investigacion','','6','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(5,0,'Articulos','','articulos','','4','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(6,0,'Proveedores de equipos medicos','','proveedores-de-equipos-medicos','','5','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(7,0,'Consultorias Cientificas','','consultorias-cientificas','','3','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(8,0,'Servicios de Apoyo','','servicios-de-apoyo','','6','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,php,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=0\nallowed_media_usergroup=3\ncheck_mime=0\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=1\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(34,'JCE','option=com_jce',0,0,'option=com_jce','JCE','com_jce',0,'components/com_jce/img/logo.png',0,'\npackage=1',1),(35,'JCE MENU CPANEL','',0,34,'option=com_jce','JCE MENU CPANEL','com_jce',0,'templates/khepri/images/menu/icon-16-cpanel.png',0,'',1),(36,'JCE MENU CONFIG','',0,34,'option=com_jce&type=config','JCE MENU CONFIG','com_jce',1,'templates/khepri/images/menu/icon-16-config.png',0,'',1),(37,'JCE MENU GROUPS','',0,34,'option=com_jce&type=group','JCE MENU GROUPS','com_jce',2,'templates/khepri/images/menu/icon-16-user.png',0,'',1),(38,'JCE MENU PLUGINS','',0,34,'option=com_jce&type=plugin','JCE MENU PLUGINS','com_jce',3,'templates/khepri/images/menu/icon-16-plugin.png',0,'',1),(39,'JCE MENU INSTALL','',0,34,'option=com_jce&type=install','JCE MENU INSTALL','com_jce',4,'templates/khepri/images/menu/icon-16-install.png',0,'',1),(40,'RSform!Pro','option=com_rsform',0,0,'option=com_rsform','RSform!Pro','com_rsform',0,'../administrator/components/com_rsform/images/rsformpro.gif',0,'formId=1\n',1),(41,'Manage Forms','',0,40,'option=com_rsform&task=forms.manage','Manage Forms','com_rsform',0,'js/ThemeOffice/component.png',0,'',1),(42,'Manage Submissions','',0,40,'option=com_rsform&task=submissions.manage','Manage Submissions','com_rsform',1,'js/ThemeOffice/component.png',0,'',1),(43,'Configuration','',0,40,'option=com_rsform&task=configuration.edit','Configuration','com_rsform',2,'js/ThemeOffice/component.png',0,'',1),(44,'Backup/Restore','',0,40,'option=com_rsform&task=backup.restore','Backup/Restore','com_rsform',3,'js/ThemeOffice/component.png',0,'',1),(45,'Updates','',0,40,'option=com_rsform&task=updates.manage','Updates','com_rsform',4,'js/ThemeOffice/component.png',0,'',1),(46,'Plugins','',0,40,'option=com_rsform&task=goto.plugins','Plugins','com_rsform',5,'js/ThemeOffice/component.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES (1,'Institución','institucion','','<p><img style=\"margin-top: 10px; margin-left: 10px; float: right; border: 4px double #80c0e4;\" src=\"images/stories/detection.jpg\" alt=\"detection\" width=\"177\" height=\"177\" /><strong>INBIOMEDIC</strong> es una innovadora institución que tiene como fin promover la investigación clínica, biomédica y de medicina molecular, con el criterio primordial de entender la patología de las enfermedades para sugerir estrategias de prevención y  tratamiento, guiada por una filosofía basada en evidencias de investigación.</p>\r\n<p><strong>INBIOMEDIC</strong> imparte las técnicas de investigación, el orden, la ética, la comunicación y cooperación que son los pilares esenciales que difundimos entre la comunidad médica, institutos de investigación, universidades, entidades reguladoras de salud, la industria farmacéutica, gobiernos regionales y público en general.</p>\r\n<p>Nuestras metas son estimular y propiciar un ambiente favorable que permita la presencia de condiciones éticas, legales, científicas, técnicas y económicas suficientes para el desarrollo de la investigación científica, así como entender los procesos a nivel celular y molecular en sus condiciones normales y patológicas.</p>\r\n<br />','',1,2,0,1,'2011-05-30 01:10:48',62,'','2011-06-24 22:51:41',62,0,'0000-00-00 00:00:00','2011-05-30 01:10:48','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',41,0,1,'','',0,1277,'robots=\nauthor='),(2,'Consultorías','consultorias','','<p><strong>Consultoría</strong></p>\r\n<p>Consultoría y apoyo logístico en el transporte de muestras biológicas de los  centros de reclutamiento de los sujetos en investigación a los laboratorios clínicos o de investigación biomédica.</p>\r\n<p><strong>Análisis</strong></p>\r\n<p>Análisis estadístico e interpretación de bases de datos.</p>\r\n<p><strong>Asesoría</strong></p>\r\n<p>Servicios de asesoría durante la edición y elaboración de publicaciones cientificas.</p>\r\n<p> </p>','',1,1,0,2,'2011-05-30 19:58:19',62,'','2011-06-15 20:06:18',62,0,'0000-00-00 00:00:00','2011-05-30 19:58:19','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,1,'','',0,8,'robots=\nauthor='),(3,'Consultorías','consultorias','','<p>La misión de <strong>INBIOMEDIC </strong>es identificar los problemas de salud pública y plantear mejoras basados en el análisis de la situación propia de cada región, evaluando las enfermedades prevalentes de la zona, condiciones de salubridad, situación y diagnostico poblacional, equipamiento, personal de salud y logística.</p>','',1,3,0,3,'2011-05-30 19:58:49',62,'','2011-06-24 22:53:53',62,0,'0000-00-00 00:00:00','2011-05-30 19:58:49','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',15,0,2,'','',0,1403,'robots=\nauthor='),(4,'Bibliografía','bibliografia','','<p style=\"text-align: justify;\">Publicaciones de los proyectos de investigación donde nuestros profesionales han formado parte.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto A, Solari L, Díaz J, Mantilla A, Matthys F, van der Stuyft P. </strong>Validation of a clinical-radiographic score to assess the probability of pulmonary tuberculosis in suspect patients with negative sputum smears. PLoS One. 2011 Apr 5;6(4):e18486.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Mamani E, Alvarez C, García M M, Figueroa D, Gatti M, Guio H, Merino S, Valencia P, Cal ampa C, Franco L, Cabezas C. </strong>Circulation of a different lineage of dengue virus serotype 2 American / Asian genotype in the Peruvian amazon, 2010. Rev Peru Med Exp Salud Publica . 2011 Mar;28(1):72-77.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Solari L, Acuna-Villaorduna C, Soto A, van der Stuyft P.</strong> Evaluation of clinical prediction rules for respiratory isolation of inpatients with suspected pulmonary tuberculosis. Clin Infect Dis. 2011 Mar;52(5):595-603.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto A, Solari L, Gotuzzo E, Acinelli R, Vargas D, Van der Stuyft P.</strong> Performance of an algorithm based on WHO recommendations for the diagnosis of smear-negative pulmonary tuberculosis in patients without HIV infection. Trop Med Int Health. 2011 Apr;16(4):424-30. doi: 10.1111/j.1365-3156.2010.02715.x. Epub 2011 Jan 5.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Guio H, Vilapalana C, Cardona PJ.</strong> Immunodiagnosis and Biomarkers in Tuberculosis. Med Clin 2010 In press.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Gideon HP, Wilkinson KA, Rustad TR, Oni T, Guio H, Kozak RA, Sherman DR, Meintjes G, Behr MA, Vordermeier HM, Young DB, Wilkinson RJ.</strong> Hypoxia Induces an Immunodominant Target of Tuberculosis Specific T cells Absent from Common BCG Vaccines PLoS Pathog. 2010 Dec 23;6(12):e10012</p>\r\n<p style=\"text-align: justify;\"><strong>·       Taype CA, Shamsuzzaman S, Accinelli RA, Espinoza JR, Shaw MA</strong> Genetic susceptibility to different clinical forms of tuberculosis in the Peruvian population. Infect Genet Evol. 2010 May;10(4):495-504.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Guio H, Ashino Y, Mizusawa M, Xiao P, Soto A, Hattori T.</strong> “ High Interferon-Gamma-Produccion by T-cells and Low Serum titters of anti-TBGL antibody (IgG) in Latent Tuberculosis Infection ”. Toh J Exp Med. January; 220 (1):21-5 (2010) .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Bacon DJ, Tang D, Salas C, Roncal N, Lucas C, Gerena L, Tapia L, Llanos-Cuentas AA, Garcia C, Solari L, Kyle D, Magill AJ. </strong>Effects of point mutations in Plasmodium falciparum dihydrofolate reductase and dihydropterate synthase genes on clinical outcomes and in vitro susceptibility to sulfadoxine and pyrimethamine. PLoS One . 2009 Aug 26;4(8):e6762.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto A, Agapito J, Acuña-Villaorduña C, Solari L, Samalvides F, Gotuzzo E . </strong>Evaluation of the performance of two liquid-phase culture media for the diagnosis of pulmonary tuberculosis in a national hospital in Lima,  Peru. (Evaluación de la exactitud de dos medios de cultivo en fase líquida para el diagnóstico de tuberculosis pulmonar en un hospital nacional en Lima, Peru)   International Journal of Infectious Diseases, 2009; 13:40-5.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Solari L, Acuna-Villaorduna C, Soto A et al. </strong>A clinical prediction rule for pulmonary tuberculosis in emergency departments.Int J Tuberc Lung Dis. 2008 Jun; 12 ( 6 ): 619-24.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Ashino Y, Guio H, Matsumura T, Iwamoto A, Yano I. Hattori T. </strong>“Serological response against MAC glycolipid antigens in Patients with Acquired    immunodeficiency Syndrome (AIDS)”   Microbiol Immunol. 2008; 52 ( 1 ): 36-9</p>\r\n<p style=\"text-align: justify;\"><strong>·       Rojas C, Solari L, Herrera C, Sanchez E, Young G, Bonilla C, Hurtado R, Muñoz M, Zeladita J, Espiritu B, Shin S.</strong> Challenges of Diagnosis and Management of Tuberculosis and HIV Coinfection in Resource-Limited Settings: A Case Report from Lima, Peru. (Retos en el Diagnóstico y Manejo de Coinfección por Tuberculosis y VIH en lugares con recursos limitados: Un reporte de caso de Lma, Peru). Journal of the International Association of Physicians in AIDS Care, 2008, 7 : 232-7 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Solari L, Acuna-Villaorduna C, Soto A, Agapito J, Perez F, Samalvides F, Zegarra J, Diaz J, Gotuzzo E, Van der Stuyft P. </strong>A clinical prediction rule for pulmonary tuberculosis in emergency departments (Una regla de predicción clínica para tuberculosis pulmonar en departamentos de emergencia). International Journal of Tuberculosis and   Lung Disease, 2008,1 2 : 619-24 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto A, Solari L, et al.</strong> Development of a Clinical Scoring System for the Diagnosis of Smear-Negative Pulmonary Tuberculosis. Brazilian Journal of Infectious diseases. 2008; 12(2):128-132.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto A, Solari L, Agapito J, Acuna-Villaorduna C, Lambert ML, Gotuzzo E, Van der Stuyft P</strong>. Development of a clinical scoring system for the diagnosis of smear-negative pulmonary tuberculosis.(Desarrollo de un sistema de puntaje clínico para el diagnóstico de tuberculosis BK negativo). Brazilian Journal of Infectious Diseases,   2008, 12 : 128-32 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Guio H, Okayama H, Ashino Y, Saitoh H, Xiao P, Miki M, Yoshijara N, Nakanowatari S, Hattori </strong>“Method for efficient storing and transport of sputum specimens for molecular testing of tuberculosis” Int J Tuberc Lung Dis August; 10: 906-910 (2006)</p>\r\n<p style=\"text-align: justify;\"><strong>·       Taype CA, Castro JC, Accinelli RA, Herrera-Velit P, Shaw MA, Espinoza JR.</strong> Association between SLC11A1 polymorphisms and susceptibility to different clinical forms of tuberculosis in the Peruvian population. nfect Genet Evol. 2006 Sep;6(5):361-7.</p>\r\n<p style=\"text-align: justify;\"><strong>·       Chappuis F, Rijal S, Soto A et al. </strong>A meta-analysis of the diagnostic performance of the agglutination test and rK39 dipstick for visceral leishmaniasis. British Medical Journal. doi:10.1136/bmj.38917.503056.7C (published 1 August 2006).</p>\r\n<p style=\"text-align: justify;\"><strong>·       Qin L , Watanabe H, Yoshimine H, Guio H, Watanabe K, Kawakami K, Iwagaki A, Nagai H, Goto H, Kuriyama T, Fukushi Y, Matsushima T, Kudoh S, Matsumoto K, Nagatake T, Mizota T and Oishi K. </strong>“Antimicrobial susceptibility and serotype distribution of Streptococcus pneumoniae isolated from patients with community-acquired pneumonia and molecular analysis of multidrug-resistant serotype 19F and 23F strains in Japan”. Epidemiol Infection May; 2:1-7 (2006)</p>\r\n<p style=\"text-align: justify;\"><strong>·       Ashino J, Ashino Y, Guio H, Saitoh, Mizusawa M, Hattori T.</strong> “Low antibody response against tuberculous Glycolipid (TBGL) in elderly gastrectomized tuberculosis patients”. Int J Tuberc Lung Dis 9(9):1052-1053 (2005).</p>\r\n<p style=\"text-align: justify;\"><strong>·       Watanabe H, Hoshino K, Sugita R, Asoh N, Guio H, Qin L, Watanabe K, Oishi K, Nagatake T.</strong> “Molecular analysis of intrafamiliar transmission of Moraxella catarrhalis”. International Journal of Medical Microbiology 295: 187-191(2005)</p>\r\n<p style=\"text-align: justify;\"><strong>·       Maguiña C, Flores Del Pozo J, Terashima A, Gotuzzo E, Guerra H, Vidal JE, Legua P, Solari L. </strong>Cutaneous anthrax in Lima, Peru: retrospective analysis of 71 cases, including four with a meningoencephalic complication (Antrax cutáneo en Lima , Peru; analisis retrospectivo de 71 casos , incluyendo 4 con complicaciones meningoencefálicas). Revista do Instituto de Medicina Tropical de Sao Paulo, 2005, 47 : 25-30 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Huaman MC, Roncal N, Nakazawa S, Long TT, Gerena L, Garcia C, Solari L, Magill AJ, Kanbara H. </strong>Polymorphism of the Plasmodium falciparum multidrug resistance and chloroquine resistance transporter genes and in vitro susceptibility to aminoquinolines in isolates from the Peruvian Amazon (Polimorfismo de la multiresistencia a drogas del   Plasmodium falciparum y genes transportadores de la resistencia a la cloroquina y susceptibilidad in Vitro a las aminoquinolinas en aislamientos de   la Amazonía Peruana) . American Journal of   Tropical   Medicine and   Higiene,   2004, 70 : 461-6 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Soto Tarazona A, Solari Zerpa L, Mendoza Requena D, Llanos-Cuentas A, Magill A. </strong>Evaluation of the rapid diagnostic test OptiMAL for diagnosis of malaria due to Plasmodium vivax (Evaluación de la prueba de diagnóstico rápido Optimal para el diagnóstico de malaria por Plasmodium vivax) . Brazilian Journal of Infectious Diseases, 2004, 8 : 151-5 .</p>\r\n<p style=\"text-align: justify;\"><strong>·       Ruebush TK 2nd , Zegarra J , Cairo J , Andersen EM , Green M , Pillai DR , Marquiño W , Huilca M , Arévalo E , Garcia C , Solary L , Kain KC . </strong>Chloroquine-resistant Plasmodium vivax malaria in Peru. Am J Trop Med Hyg. 2003 Nov;69(5):548-52.</p>','',1,4,0,5,'2011-05-30 19:59:04',62,'','2011-06-24 23:54:44',62,0,'0000-00-00 00:00:00','2011-05-30 19:59:04','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,1,'','',0,3098,'robots=\nauthor='),(5,'Apoyo a la Investigación','apoyo-a-la-investigacion','','<p><strong>INBIOMEDIC</strong> desarrolla un apoyo continuo a la investigación mediante las siguientes acciones:</p>','',1,6,0,4,'2011-05-30 20:00:20',62,'','2011-06-18 12:09:39',62,0,'0000-00-00 00:00:00','2011-05-30 20:00:20','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,4,'','',0,1199,'robots=\nauthor='),(6,'Proveedores de equipos médicos y de investigación','proveedoresa-de-equipos-medicos-y-de-investigacion','','<p>Creemos que la interacción entre investigadores y tecnología es importante para la creación de nuevo conocimiento.  INBIOMEDIC facilita este proceso a través de la representación de equipos e insumos para el desarrollo de investigación en el área de Biomedicina.</p>\r\n<p>Actualmente estamos en conversaciones con empresas reconocida e involucradas seriamente en el desarrollo de la Medicina Molecular, Inmunología y Genética.</p>\r\n<p>Si usted está interesado en la representación de algún producto en Perú no dude en contactarnos.</p>\r\n<p> </p>\r\n<p> </p>','',1,5,0,6,'2011-05-30 20:01:16',62,'','2011-06-24 23:17:12',62,0,'0000-00-00 00:00:00','2011-05-30 20:01:16','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,1,'','',0,1010,'robots=\nauthor='),(15,'Apoyo Logístico','apoyo-logistico','','<img style=\"border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle\" src=\"images/stories/apoyo-investigacion/04.jpg\" alt=\"04\" width=\"67\" height=\"53\" />A<span>poyo logístico en el  transporte de  muestras  biológicas de los    centros de reclutamiento  de los sujetos en   investigación a los   laboratorios clínicos o de  investigación biomédica.</span>','',1,6,0,8,'2011-06-24 23:48:14',62,'','2011-06-24 23:48:14',62,0,'0000-00-00 00:00:00','2010-06-24 23:42:35','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,1,'','',0,0,'robots=\nauthor='),(14,'Objetivo','objetivo','','La misión de <strong>INBIOMEDIC </strong>es identificar los problemas de salud pública y plantear mejoras basados en el análisis de la situación propia de cada región, evaluando las enfermedades prevalentes de la zona, condiciones de salubridad, situación y diagnostico poblacional, equipos médicos y de laboratorio, personal de salud, logística, y teniendo  como parámetros los resultados de investigaciones previas.','',1,3,0,3,'2011-06-17 15:09:32',62,'','2011-06-20 22:19:56',62,0,'0000-00-00 00:00:00','2011-06-17 15:09:32','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,1,'','',0,0,'robots=\nauthor='),(7,'Asesorías','asesorias','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/01.jpg\" alt=\"01\" width=\"71\" height=\"53\" /><br /><br /></td>\r\n<td>Asesoría durante el diseño, planificación y ejecución de proyectos de investigación biomédica, incluyendo Tesis.</td>\r\n</tr>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/02.jpg\" alt=\"02\" width=\"71\" height=\"53\" /><br /><br /></td>\r\n<td>Asesoría en el diseño de unidades o centros de investigación biomédica.</td>\r\n</tr>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/03.jpg\" alt=\"03\" width=\"71\" height=\"53\" /><br /><br /></td>\r\n<td>Asesoría en desarrollo de eventos o programas académicos de investigación</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,3,0,7,'2011-06-16 17:35:20',62,'','2013-10-05 03:33:20',62,0,'0000-00-00 00:00:00','2011-06-16 17:35:20','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,1,'','',0,0,'robots=\nauthor='),(8,'Equipamiento','equipamiento','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/04.jpg\" alt=\"04\" width=\"71\" height=\"53\" /></td>\r\n<td>Equipamiento de laboratorios y áreas destinadas a la investigación en salud.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,3,0,7,'2011-06-16 17:41:54',62,'','2011-06-18 12:00:59',62,0,'0000-00-00 00:00:00','2011-06-16 17:41:54','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,2,'','',0,0,'robots=\nauthor='),(9,'Servicios','servicios','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/05.jpg\" alt=\"05\" width=\"71\" height=\"53\" /></td>\r\n<td>Brindar servicios de   desarrollo y apoyo a las investigaciones a través de monitoreo   científico con recursos humanos previamente calificados.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,3,0,7,'2011-06-16 17:42:33',62,'','2011-06-18 12:01:29',62,0,'0000-00-00 00:00:00','2011-06-16 17:42:33','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,3,'','',0,0,'robots=\nauthor='),(10,'Eventos','eventos','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/cientificos/06.jpg\" alt=\"06\" width=\"71\" height=\"53\" /></td>\r\n<td>Asesoría en organización de cursos, talleres y conferencias con ponentes nacionales e internacionales.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,3,0,7,'2011-06-16 17:43:10',62,'','2011-06-18 12:01:54',62,0,'0000-00-00 00:00:00','2011-06-16 17:43:10','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,4,'','',0,0,'robots=\nauthor='),(11,'Consultorías','consultorias','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle;\" src=\"images/stories/apoyo-investigacion/01.jpg\" alt=\"04\" width=\"71\" height=\"53\" /></td>\r\n<td><strong></strong>Evaluamos los proyectos de investigación para tomar decisiones oportunas durante las fases de elaboración, ejecución y análisis de los proyectos.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,6,0,8,'2011-06-18 12:12:23',62,'','2011-06-24 23:52:16',62,0,'0000-00-00 00:00:00','2010-05-30 19:58:19','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,2,'','',0,0,'robots=\nauthor='),(12,'Asesoría en publicaciones','asesoria-en-publicaciones','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/apoyo-investigacion/02.jpg\" alt=\"05\" width=\"71\" height=\"53\" /></td>\r\n<td><strong>Servicios de asesoría</strong> durante la edición y elaboración de publicaciones científicas.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,6,0,8,'2011-06-16 17:42:33',62,'','2011-06-24 23:41:24',62,0,'0000-00-00 00:00:00','2011-06-16 17:42:33','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,3,'','',0,0,'robots=\nauthor='),(13,'Análisis Estadístico','analisis-estadistico','','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;\" src=\"images/stories/apoyo-investigacion/03.jpg\" alt=\"06\" width=\"71\" height=\"53\" /></td>\r\n<td><strong>Análisis estadístico</strong> e interpretación de bases de datos.</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,6,0,8,'2011-06-16 17:47:35',62,'','2011-06-24 23:36:34',62,0,'0000-00-00 00:00:00','2011-06-16 17:47:35','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,4,'','',0,0,'robots=\nauthor=');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES (1,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES (10,'users','62',0,'Administrator',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES (25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` (`id`, `name`) VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_extensions`
--

DROP TABLE IF EXISTS `jos_jce_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jce_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jce_extensions`
--

LOCK TABLES `jos_jce_extensions` WRITE;
/*!40000 ALTER TABLE `jos_jce_extensions` DISABLE KEYS */;
INSERT INTO `jos_jce_extensions` (`id`, `pid`, `name`, `extension`, `folder`, `published`) VALUES (1,54,'Joomla Links for Advanced Link','joomlalinks','links',1);
/*!40000 ALTER TABLE `jos_jce_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_groups`
--

DROP TABLE IF EXISTS `jos_jce_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jce_groups`
--

LOCK TABLES `jos_jce_groups` WRITE;
/*!40000 ALTER TABLE `jos_jce_groups` DISABLE KEYS */;
INSERT INTO `jos_jce_groups` (`id`, `name`, `description`, `users`, `types`, `components`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES (1,'Default','Default group for all users with edit access','','19,20,21,23,24,25','','6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,33,36;37,38,39,40,41,42,43,44,45,46,47,48;49,50,51,52,54,55,57,58,59,60,61','1,2,3,4,5,6,20,21,37,38,39,40,41,42,49,50,51,52,54,55,57,58,59,60,61',1,1,0,'0000-00-00 00:00:00','editor_width=\neditor_height=\neditor_theme_advanced_toolbar_location=top\neditor_theme_advanced_toolbar_align=center\neditor_skin=default\neditor_skin_variant=default\neditor_inlinepopups_skin=clearlooks2\nadvcode_toggle=1\nadvcode_editor_state=1\nadvcode_toggle_text=[show/hide]\neditor_relative_urls=1\neditor_invalid_elements=\neditor_extended_elements=\neditor_event_elements=a,img\ncode_allow_javascript=1\ncode_allow_css=0\ncode_allow_php=1\ncode_cdata=1\neditor_theme_advanced_blockformats=p,div,h1,h2,h3,h4,h5,h6,blockquote,dt,dd,code,samp,pre\neditor_theme_advanced_fonts_add=\neditor_theme_advanced_fonts_remove=\neditor_theme_advanced_font_sizes=8pt,10pt,12pt,14pt,18pt,24pt,36pt\neditor_dir=images/stories\neditor_max_size=1024\neditor_upload_conflict=\neditor_preview_height=550\neditor_preview_width=750\neditor_custom_colors=\nbrowser_dir=\nbrowser_max_size=\nbrowser_extensions=xml=xml;html=htm,html;word=doc,docx;powerpoint=ppt;excel=xls;text=txt,rtf;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz;flash=swf;winrar=rar;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf\nbrowser_extensions_viewable=html,htm,doc,docx,ppt,rtf,xls,txt,gif,jpeg,jpg,png,pdf,swf,mov,mpeg,mpg,avi,asf,asx,dcr,flv,wmv,wav,mp3\nbrowser_upload=1\nbrowser_upload_conflict=\nbrowser_folder_new=1\nbrowser_folder_delete=1\nbrowser_folder_rename=1\nbrowser_file_delete=1\nbrowser_file_rename=1\nbrowser_file_move=1\nmedia_use_script=0\nmedia_strict=1\nmedia_version_flash=9,0,124,0\nmedia_version_windowsmedia=5,1,52,701\nmedia_version_quicktime=6,0,2,0\nmedia_version_realmedia=7,0,0,0\nmedia_version_shockwave=11,0,0,458\npaste_keep_linebreaks=1\npaste_auto_cleanup_on_paste=1\npaste_strip_class_attributes=all\npaste_remove_spans=1\npaste_retain_style_properties=\npaste_remove_styles=1\nadvlink_target=default\nadvlink_content=1\nadvlink_static=1\nadvlink_contacts=1\nadvlink_weblinks=1\nadvlink_menu=1\nspellchecker_engine=googlespell\nspellchecker_languages=English=en\nspellchecker_pspell_mode=PSPELL_FAST\nspellchecker_pspell_spelling=\nspellchecker_pspell_jargon=\nspellchecker_pspell_encoding=\nspellchecker_pspellshell_aspell=/usr/bin/aspell\nspellchecker_pspellshell_tmp=/tmp\nmediamanager_dir=\nmediamanager_max_size=\nmediamanager_extensions=windowsmedia=avi,wmv,wm,asf,asx,wmx,wvx;quicktime=mov,qt,mpg,mp3,mp4,mpeg;flash=swf,flv,xml;shockwave=dcr;real=rm,ra,ram;divx=divx\nmediamanager_flvplayer=flvplayer.swf\nmediamanager_flvplayer_path=plugins/editors/jce/tiny_mce/plugins/mediamanager/swf\nmediamanager_margin_top=default\nmediamanager_margin_right=default\nmediamanager_margin_bottom=default\nmediamanager_margin_left=default\nmediamanager_border=0\nmediamanager_border_width=default\nmediamanager_border_style=default\nmediamanager_border_color=#000000\nmediamanager_align=default\nmediamanager_upload=1\nmediamanager_upload_conflict=\nmediamanager_folder_new=1\nmediamanager_folder_delete=1\nmediamanager_folder_rename=1\nmediamanager_file_delete=1\nmediamanager_file_rename=1\nmediamanager_file_move=1\nimgmanager_ext_dir=\nimgmanager_ext_max_size=1024\nimgmanager_ext_extensions=image=jpeg,jpg,png,gif\nimgmanager_ext_margin_top=default\nimgmanager_ext_margin_right=default\nimgmanager_ext_margin_bottom=default\nimgmanager_ext_margin_left=default\nimgmanager_ext_border=0\nimgmanager_ext_border_width=default\nimgmanager_ext_border_style=default\nimgmanager_ext_border_color=#000000\nimgmanager_ext_align=default\nimgmanager_upload_resize=0\nimgmanager_upload_rotate=0\nimgmanager_ext_upload_thumbnail=0\nimgmanager_ext_allow_resize=1\nimgmanager_ext_force_resize=0\nimgmanager_ext_allow_rotate=1\nimgmanager_ext_force_rotate=0\nimgmanager_ext_allow_thumbnail=1\nimgmanager_ext_force_thumbnail=0\nimgmanager_ext_upload=1\nimgmanager_ext_upload_conflict=\nimgmanager_ext_folder_new=1\nimgmanager_ext_folder_delete=1\nimgmanager_ext_folder_rename=1\nimgmanager_ext_file_delete=1\nimgmanager_ext_file_rename=1\nimgmanager_ext_file_move=1\nimgmanager_ext_mode=list\nimgmanager_ext_resize_width=640\nimgmanager_ext_resize_height=480\nimgmanager_ext_resize_quality=80\nimgmanager_ext_cache=tmp\nimgmanager_ext_cache_size=10\nimgmanager_ext_cache_age=30\nimgmanager_ext_cache_files=50\nimgmanager_ext_use_imagemagick=0\nimgmanager_ext_imagemagick_path=\nimgmanager_ext_thumbnail_size=150\nimgmanager_ext_thumbnail_quality=80\nimgmanager_ext_thumbnail_folder=thumbnails\nimgmanager_ext_thumbnail_prefix=thumb_\nimgmanager_ext_thumbnail_mode=\nfilemanager_dir=\nfilemanager_max_size=\nfilemanager_extensions=xml=xml;html=htm,html;word=doc,docx;powerpoint=ppt;excel=xls;text=txt,rtf;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz;flash=swf;winrar=rar;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf\nfilemanager_upload=1\nfilemanager_upload_conflict=\nfilemanager_folder_new=1\nfilemanager_folder_delete=1\nfilemanager_folder_rename=1\nfilemanager_file_delete=1\nfilemanager_file_rename=1\nfilemanager_file_move=1\nfilemanager_extensions_viewable=html,htm,doc,docx,ppt,rtf,xls,txt,gif,jpeg,jpg,png,pdf,swf,mov,mpeg,mpg,avi,asf,asx,dcr,flv,wmv,wav,mp3\nfilemanager_extensions_path=plugins/editors/jce/tiny_mce/plugins/filemanager/img/ext\nfilemanager_extensions_prefix=_small\nfilemanager_date_format=%d/%m/%Y, %H:%M\n\n'),(2,'Front End','Sample Group for Authors, Editors, Publishers','','19,20,21','','6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,32,36,43,44,45,47,48,50,51;24,33,39,40,42,46,49,52,53,54,55,57,58','6,20,21,50,51,1,3,5,39,40,42,49,52,53,54,55,57,58',0,2,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_jce_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_plugins`
--

DROP TABLE IF EXISTS `jos_jce_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_jce_plugins`
--

LOCK TABLES `jos_jce_plugins` WRITE;
/*!40000 ALTER TABLE `jos_jce_plugins` DISABLE KEYS */;
INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `iscore`, `elements`, `checked_out`, `checked_out_time`) VALUES (1,'Context Menu','contextmenu','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(2,'File Browser','browser','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(3,'Inline Popups','inlinepopups','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(4,'Media Support','media','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(5,'Safari Browser Support','safari','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(6,'Help','help','plugin','help','help',1,1,1,0,1,'',0,'0000-00-00 00:00:00'),(7,'New Document','newdocument','command','newdocument','newdocument',1,2,1,0,1,'',0,'0000-00-00 00:00:00'),(8,'Bold','bold','command','bold','bold',1,3,1,0,1,'',0,'0000-00-00 00:00:00'),(9,'Italic','italic','command','italic','italic',1,4,1,0,1,'',0,'0000-00-00 00:00:00'),(10,'Underline','underline','command','underline','underline',1,5,1,0,1,'',0,'0000-00-00 00:00:00'),(11,'Font Select','fontselect','command','fontselect','fontselect',1,6,1,0,1,'',0,'0000-00-00 00:00:00'),(12,'Font Size Select','fontsizeselect','command','fontsizeselect','fontsizeselect',1,7,1,0,1,'',0,'0000-00-00 00:00:00'),(13,'Style Select','styleselect','command','styleselect','styleselect',1,8,1,0,1,'',0,'0000-00-00 00:00:00'),(14,'StrikeThrough','strikethrough','command','strikethrough','strikethrough',1,9,1,0,1,'',0,'0000-00-00 00:00:00'),(15,'Justify Full','full','command','justifyfull','justifyfull',1,10,1,0,1,'',0,'0000-00-00 00:00:00'),(16,'Justify Center','center','command','justifycenter','justifycenter',1,11,1,0,1,'',0,'0000-00-00 00:00:00'),(17,'Justify Left','left','command','justifyleft','justifyleft',1,12,1,0,1,'',0,'0000-00-00 00:00:00'),(18,'Justify Right','right','command','justifyright','justifyright',1,13,1,0,1,'',0,'0000-00-00 00:00:00'),(19,'Format Select','formatselect','command','formatselect','formatselect',1,14,1,0,1,'',0,'0000-00-00 00:00:00'),(20,'Paste','paste','plugin','pasteword,pastetext','paste',2,1,1,1,1,'',0,'0000-00-00 00:00:00'),(21,'Search Replace','searchreplace','plugin','search,replace','searchreplace',2,2,1,0,1,'',0,'0000-00-00 00:00:00'),(22,'Font ForeColour','forecolor','command','forecolor','forecolor',2,3,1,0,1,'',0,'0000-00-00 00:00:00'),(23,'Font BackColour','backcolor','command','backcolor','backcolor',2,4,1,0,1,'',0,'0000-00-00 00:00:00'),(24,'Unlink','unlink','command','unlink','unlink',2,5,1,0,1,'',0,'0000-00-00 00:00:00'),(25,'Indent','indent','command','indent','indent',2,6,1,0,1,'',0,'0000-00-00 00:00:00'),(26,'Outdent','outdent','command','outdent','outdent',2,7,1,0,1,'',0,'0000-00-00 00:00:00'),(27,'Undo','undo','command','undo','undo',2,8,1,0,1,'',0,'0000-00-00 00:00:00'),(28,'Redo','redo','command','redo','redo',2,9,1,0,1,'',0,'0000-00-00 00:00:00'),(29,'HTML','html','command','code','code',2,10,1,0,1,'',0,'0000-00-00 00:00:00'),(30,'Numbered List','numlist','command','numlist','numlist',2,11,1,0,1,'',0,'0000-00-00 00:00:00'),(31,'Bullet List','bullist','command','bullist','bullist',2,12,1,0,1,'',0,'0000-00-00 00:00:00'),(32,'Clipboard Actions','clipboard','command','cut,copy,paste','clipboard',2,13,1,0,1,'',0,'0000-00-00 00:00:00'),(33,'Anchor','anchor','command','anchor','anchor',2,14,1,0,1,'',0,'0000-00-00 00:00:00'),(34,'Image','image','command','image','image',2,15,1,0,1,'',0,'0000-00-00 00:00:00'),(35,'Link','link','command','link','link',2,16,1,0,1,'',0,'0000-00-00 00:00:00'),(36,'Code Cleanup','cleanup','command','cleanup','cleanup',2,17,1,0,1,'',0,'0000-00-00 00:00:00'),(37,'Directionality','directionality','plugin','ltr,rtl','directionality',3,1,1,0,1,'',0,'0000-00-00 00:00:00'),(38,'Emotions','emotions','plugin','emotions','emotions',3,2,1,0,1,'',0,'0000-00-00 00:00:00'),(39,'Fullscreen','fullscreen','plugin','fullscreen','fullscreen',3,3,1,0,1,'',0,'0000-00-00 00:00:00'),(40,'Preview','preview','plugin','preview','preview',3,4,1,0,1,'',0,'0000-00-00 00:00:00'),(41,'Tables','table','plugin','tablecontrols','buttons',3,5,1,0,1,'',0,'0000-00-00 00:00:00'),(42,'Print','print','plugin','print','print',3,6,1,0,1,'',0,'0000-00-00 00:00:00'),(43,'Horizontal Rule','hr','command','hr','hr',3,7,1,0,1,'',0,'0000-00-00 00:00:00'),(44,'Subscript','sub','command','sub','sub',3,8,1,0,1,'',0,'0000-00-00 00:00:00'),(45,'Superscript','sup','command','sup','sup',3,9,1,0,1,'',0,'0000-00-00 00:00:00'),(46,'Visual Aid','visualaid','command','visualaid','visualaid',3,10,1,0,1,'',0,'0000-00-00 00:00:00'),(47,'Character Map','charmap','command','charmap','charmap',3,11,1,0,1,'',0,'0000-00-00 00:00:00'),(48,'Remove Format','removeformat','command','removeformat','removeformat',3,12,1,0,1,'',0,'0000-00-00 00:00:00'),(49,'Styles','style','plugin','styleprops','style',4,1,1,0,1,'',0,'0000-00-00 00:00:00'),(50,'Non-Breaking','nonbreaking','plugin','nonbreaking','nonbreaking',4,2,1,0,1,'',0,'0000-00-00 00:00:00'),(51,'Visual Characters','visualchars','plugin','visualchars','visualchars',4,3,1,0,1,'',0,'0000-00-00 00:00:00'),(52,'XHTML Xtras','xhtmlxtras','plugin','cite,abbr,acronym,del,ins,attribs','xhtmlxtras',4,4,1,0,1,'',0,'0000-00-00 00:00:00'),(53,'Image Manager','imgmanager','plugin','imgmanager','imgmanager',4,5,1,1,1,'',0,'0000-00-00 00:00:00'),(54,'Advanced Link','advlink','plugin','advlink','advlink',4,6,1,1,1,'',0,'0000-00-00 00:00:00'),(55,'Spell Checker','spellchecker','plugin','spellchecker','spellchecker',4,7,1,1,1,'',0,'0000-00-00 00:00:00'),(56,'Layers','layer','plugin','insertlayer,moveforward,movebackward,absolute','layer',4,8,1,0,1,'',0,'0000-00-00 00:00:00'),(57,'Advanced Code Editor','advcode','plugin','advcode','advcode',4,9,1,0,1,'',0,'0000-00-00 00:00:00'),(58,'Article Breaks','article','plugin','readmore,pagebreak','article',4,10,1,0,1,'',0,'0000-00-00 00:00:00'),(59,'Media Manager','mediamanager','plugin','mediamanager','mediamanager',4,1,1,1,0,'',0,'0000-00-00 00:00:00'),(60,'Image Manager Extended','imgmanager_ext','plugin','imgmanager_ext','imgmanager_ext',4,1,1,1,0,'',0,'0000-00-00 00:00:00'),(61,'File Manager','filemanager','plugin','filemanager','filemanager',4,1,1,1,0,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `jos_jce_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES (1,'mainmenu','Inicio','inicio','index.php?option=com_content&view=frontpage','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Institución','institucion','index.php?option=com_content&view=article&id=1','component',1,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(3,'mainmenu','Consultorías','consultorias','index.php?option=com_content&view=article&id=2','component',-2,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(4,'mainmenu','Apoyo a la Investigación','apoyo-a-la-investigacion','index.php?option=com_content&view=article&id=5','component',1,0,20,0,6,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(5,'mainmenu','Consultorías','consultorias','index.php?option=com_content&view=article&id=3','component',1,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(6,'mainmenu','Bibliografía','bibliografia','index.php?option=com_content&view=article&id=4','component',1,0,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(7,'mainmenu','Representaciones','representaciones','index.php?option=com_content&view=article&id=6','component',1,0,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(8,'mainmenu','Contacto','contacto','index.php?option=com_rsform','component',1,0,40,0,9,0,'0000-00-00 00:00:00',0,0,0,0,'formId=2\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(9,'mainmenu','Consultorias','consultorias','index.php?option=com_content&view=category&layout=blog&id=2','component',-2,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=10\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'topmenu','Top Menu',''),(3,'leftmenu','Left Menu','');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES (1,'Main Menu','',0,'menu',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'RSForm! Pro Module','',3,'left',0,'0000-00-00 00:00:00',0,'mod_rsform',0,0,1,'formId=1\n',0,0,''),(17,'Superfish Menu','',4,'left',0,'0000-00-00 00:00:00',0,'mod_superfishmenu',0,0,1,'@spacer_space= \nmenu_style=horizontal\nanimation={opacity:\'show\'}\n@spacer_space= \nspeed=def\ndelay=800\nhoverClass=sfHover\npathClass=active\npathLevels=1\nautoArrows=1\ndropShadows=1\n@spacer_space= \n@spacer_custom_css=<b> CUSTOM STYLING </b>\n@spacer_custom_stylesheets_format=<b>Format:</b> url[:media]<br />Enter one url per line.<br />Escape any colons in the url with a backslash (\\).<br />{mostemplate} refers to current template url<br />{parameter_name} refers to a template parameter<br /><b>Examples:</b><br />{mostemplate}/css/menu.css<br />{mostemplate}/{style}/css/other.css:screen<br />http://someurl.com/css/menu.css<br />http://someurl.com/css.php?vals=somevalue\\:othervalue\n@spacer_space= \n@spacer_custom_animation=<b> CUSTOM ANIMATION </b>\ncustom_animation={opacity:\'show\', height:\'show\', width:\'show\'}\n@spacer_custom_animation_format=Set Animation to \"Custom\" above for this to take effect.<br /><br /><b>Format:</b>  { <span style=\'color:blue;\'>propertyName</span>:\'<span style=\'color:maroon;\'>value</span>\', <span style=\'color:blue;\'>propertyName</span>:\'<span style=\'color:maroon;\'>value</span>\' }<br /><span style=\'color:blue;\'>propertyName</span>: any css property with a numeric value<br /><span style=\'color:maroon;\'>value</span>: number(px, em, %), show, hide, or toggle. <br /><b>opacity:</b> value from 0.0 to 1.0, show, hide, or toggle<br /><br />More Info: <a href=\"http://docs.jquery.com/Effects/animate\" target=\"_blank\">http://docs.jquery.com/Effects/animate</a>\n@spacer_space= \n@spacer_menuwidth=<b> CUSTOM MENU WIDTH (BETA) </b>\nmenuWidthMod_menuWidth=100%\nmenuWidthMod_equalWidth=1\nmenuWidthMod_resizeSubMenus=1\n@spacer_space= \n@spacer_intent=<b> DETECT MOUSE INTENT </b>\nuseEventSpecialHover=1\nhover_delay=100\nhover_speed=100\n@spacer_space= \n@spacer_subwidth=<b> VARIABLE WIDTH SUB-MENUS (BETA) </b>\nmin_width=10\nmax_width=30\n@spacer_space= \n@spacer_bgifram=<b> IE6 FIX - FORM SELECT ELEMENT</b>\nbgi_top=auto\nbgi_left=auto\nbgi_width=auto\nbgi_height=auto\nbgi_opacity=1\nbgi_src=javascript:false;\n@spacer_space= \n@spacer_events=<b> EVENTS </b>\n@spacer_space= \n@spacer_jquery=<b> JQUERY </b>\nloadJQuery=1\n@spacer_load_jquery=jQuery is required by this module.  The only reason not to load it is if it has already been loaded manually or by another module.\njquerySafeMode=1\n@spacer_load_jquery=jQuery is known to conflict with other javascript libraries like mootools.  No conflict mode helps to resolve these issues and is recommended.\n@spacer_space= \n',0,0,''),(18,'News Pro GK4','',5,'left',0,'0000-00-00 00:00:00',0,'mod_news_pro_gk4',0,0,1,'automatic_module_id=1\nmodule_unique_id=newspro1\nmodule_width=100\nmodule_font_size=100\ndata_source=com_sections\nnews_sort_value=created\nnews_sort_order=DESC\nnews_frontpage=1\nnews_full_pages=3\nnews_column=1\nnews_rows=1\nart_padding=2px 4px 2px 4px\nnews_content_header_pos=left\nnews_content_header_float=none\nnews_header_link=1\ntitle_limit_type=chars\ntitle_limit=40\nnews_content_image_pos=left\nnews_content_image_float=left\nnews_image_link=1\nnews_content_text_pos=left\nnews_content_text_float=left\nnews_limit_type=words\nnews_limit=30\nnews_content_info_pos=left\nnews_content_info_float=left\nnews_content_info2_pos=left\nnews_content_info2_float=left\ninfo_format=%AUTHOR %COMMENTS %DATE %HITS %CATEGORY\ncategory_link=1\ndate_format=%d %b %Y\nuser_avatar=1\navatar_size=16\nno_comments_text=1\nnews_header_order=1\nnews_header_enabled=1\nnews_image_order=2\nnews_image_enabled=1\nnews_text_order=3\nnews_text_enabled=1\nnews_info_order=4\nnews_info_enabled=1\nnews_info2_order=5\nnews_info2_enabled=1\nk2store_order=6\nnews_content_readmore_pos=right\nnews_readmore_enabled=1\nnews_short_pages=3\nlinks_amount=3\nlinks_columns_amount=1\nlinks_margin=0 10px 0 10px\nlinks_position=bottom\nlinks_width=50\nshow_list_description=1\nlist_title_limit_type=chars\nlist_title_limit=20\nlist_text_limit_type=words\nlist_text_limit=30\nimg_width=160\nimg_height=120\nimg_margin=3px 5px 3px 5px\nimg_bg=#000\nimg_quality=95\ncache_time=30\ntop_interface_style=arrows\nbottom_interface_style=arrows\nanimation_speed=350\nanimation_interval=5000\nclean_xhtml=1\nmore_text_value=...\nk2store_currency_place=before\nvm_itemid=9999\nvm_shopper_group=-1\nvm_currency_place=before\nuseCSS=1\nuseMoo=2\nuseScript=2\n',0,0,''),(19,'Actividades','',5,'user1',0,'0000-00-00 00:00:00',0,'mod_news_pro_gk4',0,0,1,'moduleclass_sfx=\nautomatic_module_id=1\nmodule_unique_id=newspro1\nmodule_width=100\nmodule_font_size=100\ndata_source=com_categories\ncom_categories=1\ncom_articles=\nk2_articles=\nvm_products=\nnews_sort_value=created\nnews_sort_order=DESC\nnews_since=\nnews_frontpage=1\nunauthorized=0\nonly_frontpage=0\nstartposition=0\ntime_offset=0\nnews_full_pages=3\nnews_column=1\nnews_rows=1\nart_padding=2px 4px 2px 4px\nnews_content_header_float=none\nnews_content_header_pos=left\nnews_header_link=1\nuse_title_alias=0\ntitle_limit=40\ntitle_limit_type=chars\nnews_content_image_float=left\nnews_content_image_pos=left\nnews_image_link=1\nnews_content_text_float=left\nnews_content_text_pos=left\nnews_text_link=0\nnews_limit=30\nnews_limit_type=words\nnews_content_info_float=left\nnews_content_info_pos=left\nnews_content_info2_float=left\nnews_content_info2_pos=left\ninfo_format=%AUTHOR %COMMENTS %DATE %HITS %CATEGORY\ninfo2_format=\ncategory_link=1\ndate_format=%d %b %Y\ndate_publish=0\nusername=users.name\nuser_avatar=1\navatar_size=16\nno_comments_text=1\nnews_header_order=1\nnews_header_enabled=1\nnews_image_order=2\nnews_image_enabled=1\nnews_text_order=3\nnews_text_enabled=1\nnews_info_order=4\nnews_info_enabled=1\nnews_info2_order=5\nnews_info2_enabled=1\nk2store_order=6\nnews_content_readmore_pos=right\nnews_readmore_enabled=1\nnews_short_pages=3\nlinks_amount=3\nlinks_columns_amount=1\nlinks_margin=0 10px 0 10px\nlinks_position=bottom\nlinks_width=50\nshow_list_description=1\nlist_title_limit=20\nlist_title_limit_type=chars\nlist_text_limit=30\nlist_text_limit_type=words\ncreate_thumbs=0\nk2_thumbs=0\nimg_keep_aspect_ratio=0\nimg_width=160\nimg_height=120\nimg_margin=3px 5px 3px 5px\nimg_bg=#000\nimg_stretch=0\nimg_quality=95\ncache_time=30\ntop_interface_style=arrows\nbottom_interface_style=arrows\nautoanim=0\nhover_anim=0\nanimation_speed=350\nanimation_interval=5000\nclean_xhtml=1\nmore_text_value=...\nparse_plugins=0\nclean_plugins=0\nk2store_support=0\nk2store_show_cart=0\nk2store_add_to_cart=0\nk2store_price=0\nk2store_price_text=0\nk2store_currency_place=before\nvm_itemid=9999\nvm_add_to_cart=0\nvm_price=0\nvm_price_text=0\nvm_currency_place=before\nuseCSS=1\nuse_mootools_12=0\nuseMoo=2\nuseScript=2\n\n',0,0,''),(20,'Modulo Derecho','holas',0,'right',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(21,'Top Menu','',2,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=topmenu',0,0,''),(22,'Left Menu','',1,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=leftmenu',0,0,''),(23,'Logo','<img style=\"border-color: #000000; border-width: 0px; margin: 0px;\" src=\"images/stories/logo-inbiomedic-f.png\" alt=\"Inbiomedic\" width=\"316\" height=\"89\" />',0,'logo',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(24,'Creditos','Copyright 2011. Inbiomedic S.A.C.<br />',0,'bottom',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(25,'Banner Principal','<object style=\"margin: 0px; border: 0px none #000000;\" width=\"904\" height=\"228\" data=\"images/stories/flash/banner-home.swf\" type=\"application/x-shockwave-flash\">\r\n<param name=\"src\" value=\"images/stories/flash/banner-home.swf\" />\r\n<param name=\"menu\" value=\"false\" />\r\n<param name=\"quality\" value=\"high\" />\r\n<param name=\"wmode\" value=\"transparent\" />\r\n<param name=\"base\" value=\"/\" />\r\n<param name=\"name\" value=\"banner-home.swf\" />\r\n</object>',0,'banner',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(26,'YOOaccordion','',6,'left',0,'0000-00-00 00:00:00',0,'mod_yoo_accordion',0,0,1,'style=default\norder=o_asc\nitems=4\nmoduleclass_sfx=-blank\n',0,0,''),(27,'Servicios científicos','',1,'user4',0,'0000-00-00 00:00:00',1,'mod_yoo_accordion',0,0,0,'catid=7\nstyle=default\nmultiple_open=0\nopen_all=0\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n',0,0,''),(28,'Objetivo','<p>La misión de <strong>INBIOMEDIC </strong>es identificar los problemas de salud pública y plantear mejoras basados en el análisis de la situación propia de cada región, evaluando las enfermedades prevalentes de la zona, condiciones de salubridad, situación y diagnostico poblacional, equipos médicos y de laboratorio, personal de salud, logística, y teniendo  como parámetros los resultados de investigaciones previas.</p>',3,'user4',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(29,'Ultimate Content Display','',8,'left',0,'0000-00-00 00:00:00',0,'mod_jw_ucd',0,0,1,'ucd_displaytype=list\nuniqueid=ucd-instance\n@spacer========= CONTENT RETRIEVAL SETTINGS ========\nwhere=section\nordering=rdate\ncount=5\n@spacer========= ITEM DISPLAY SETTINGS ========\ndisplay=2\nlinked=1\ndatecreated=1\nshow_section_title=1\nshow_category_title=1\nseperator=>>\nmore=1\nplugins=1\n@spacer========= AJAX CROSS FADER SETTINGS ========\nucd_ajf_width=100%\nucd_ajf_height=300px\nucd_ajf_delay=6000\nucd_ajf_bgcolor=#ffffff\nucd_ajf_cache=10\n@spacer========= JQUERY CROSS FADER/SLIDER SETTINGS ========\nucd_jqf_cheight=300px\nucd_jqf_anim=slide\nucd_jqf_speed=750\nucd_jqf_timeout=6000\nucd_jqf_bgcolor=#ffffff\n',0,0,''),(30,'Objetivo','',0,'right',0,'0000-00-00 00:00:00',1,'mod_jw_ucd',0,0,1,'moduleclass_sfx=\ndisablecss=0\ncache=0\nucd_displaytype=list\nuniqueid=ucd-instance\nwhere=content\nwhere_id=14\nordering=rdate\ncount=5\nshow_front=0\ndisplay=1\nlinked=1\ndatecreated=0\nshow_section_title=0\nshow_category_title=0\nseperator=>>\nwords=\nchars=\nmore=0\nplugins=0\nhideimages=0\ncleanupimages=0\nstriptags=0\nucd_ajf_width=100%\nucd_ajf_height=300px\nucd_ajf_delay=6000\nucd_ajf_bgcolor=#ffffff\nucd_ajf_bottomfade=0\nucd_ajf_cache=10\nucd_jqf_cheight=300px\nucd_jqf_anim=slide\nucd_jqf_speed=750\nucd_jqf_timeout=6000\nucd_jqf_bgcolor=#ffffff\nucd_jqf_bottomfade=0\n\n',0,0,''),(31,'Servicios de Apoyo a la Investigación','',2,'user4',0,'0000-00-00 00:00:00',1,'mod_yoo_accordion',0,0,0,'catid=8\nstyle=default\nmultiple_open=0\nopen_all=0\norder=o_asc\nitems=10\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n',0,0,''),(32,'Banner Contacto','<img style=\"border-color: #000000; border-width: 0px; margin: 0px;\" src=\"images/stories/banner-contacto-ok.jpg\" alt=\"banner-contacto-ok\" width=\"208\" height=\"334\" />',0,'left',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(33,'Presentacion','<object style=\"margin: 0px; border: 0px none #000000;\" width=\"890\" height=\"221\" data=\"images/stories/flash/presentacion.swf\" type=\"application/x-shockwave-flash\">\r\n<param name=\"src\" value=\"images/stories/flash/presentacion.swf\" />\r\n<param name=\"menu\" value=\"false\" />\r\n<param name=\"quality\" value=\"high\" />\r\n<param name=\"wmode\" value=\"transparent\" />\r\n<param name=\"base\" value=\"/\" />\r\n<param name=\"name\" value=\"presentacion.swf\" />\r\n</object>',0,'inset',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(34,'Equipamiento','<p> </p>\r\n<p style=\"text-align: center;\"><img style=\"border-width: 0px; border-color: #000000; margin: 0px;\" src=\"images/stories/equipamiento2.jpg\" alt=\"equipamiento2\" width=\"167\" height=\"113\" /></p>\r\n<p style=\"text-align: center;\"> </p>',0,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(35,'Apoyo a la Investigación','<p> </p>\r\n<p style=\"text-align: center;\"><img style=\"border-color: #000000; border-width: 0px; margin: 0px;\" src=\"images/stories/ban-apoyo.jpg\" alt=\"apoyo a la investigación\" width=\"203\" height=\"134\" /></p>\r\n<p> </p>',0,'right',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES (1,0),(16,0),(17,0),(18,0),(19,0),(20,1),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,5),(28,0),(29,0),(30,5),(31,4),(32,0),(33,1),(34,7),(35,4);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,2,1,1,0,0,'0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,3,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,8,0,1,0,0,'0000-00-00 00:00:00',''),(35,'Editor - JCE 154','jce','editors',0,4,1,0,0,0,'0000-00-00 00:00:00','editor_gzip=0\neditor_verify_html=1\neditor_entity_encoding=raw\ncleanup_pluginmode=1\neditor_forced_root_block=0\neditor_newlines=0\neditor_body_class_type=custom\neditor_body_class_custom=\neditor_content_css=1\neditor_content_css_custom=templates/$template/css/editor_content.css\neditor_custom_config=\neditor_callback_file=\neditor_help_url=http://www.joomlacontenteditor.net/index.php?option=com_content&view=article\n\n'),(36,'Content - RSForm! Pro','mosrsform','content',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(37,'Simple Image Gallery PRO (by JoomlaWorks)','jw_sigpro','content',0,0,1,0,0,0,'0000-00-00 00:00:00','galleries_rootfolder=images/stories\npopup_engine=jquery_slimbox\nthb_template=Default\nthb_width=200\nthb_height=160\njpg_quality=75\nshowcaptions=1\nenabledownload=1\ncache_expire_time=120\n'),(38,'Content - Joomla Upgrade','index','content',0,0,0,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_redirection`
--

DROP TABLE IF EXISTS `jos_redirection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_redirection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpt` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `dateadd` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `rank` (`rank`),
  KEY `oldurl` (`oldurl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_redirection`
--

LOCK TABLES `jos_redirection` WRITE;
/*!40000 ALTER TABLE `jos_redirection` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_redirection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_component_type_fields`
--

DROP TABLE IF EXISTS `jos_rsform_component_type_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_component_type_fields` (
  `ComponentTypeFieldId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ComponentTypeFieldId`),
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_component_type_fields`
--

LOCK TABLES `jos_rsform_component_type_fields` WRITE;
/*!40000 ALTER TABLE `jos_rsform_component_type_fields` DISABLE KEYS */;
INSERT INTO `jos_rsform_component_type_fields` (`ComponentTypeFieldId`, `ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES (2,1,'NAME','textbox','',1),(3,1,'CAPTION','textbox','',2),(4,1,'REQUIRED','select','NO\r\nYES',3),(5,1,'SIZE','textbox','20',4),(6,1,'MAXSIZE','textbox','',5),(7,1,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6),(8,1,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7),(9,1,'ADDITIONALATTRIBUTES','textarea','',8),(10,1,'DEFAULTVALUE','textarea','',9),(11,1,'DESCRIPTION','textarea','',11),(12,1,'COMPONENTTYPE','hidden','1',15),(13,2,'NAME','textbox','',1),(14,2,'CAPTION','textbox','',2),(15,2,'REQUIRED','select','NO\r\nYES',3),(16,2,'COLS','textbox','50',4),(17,2,'ROWS','textbox','5',5),(18,2,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6),(19,2,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7),(20,2,'ADDITIONALATTRIBUTES','textarea','',8),(21,2,'DEFAULTVALUE','textarea','',9),(22,2,'DESCRIPTION','textarea','',10),(23,2,'COMPONENTTYPE','hidden','2',10),(24,3,'NAME','textbox','',1),(25,3,'CAPTION','textbox','',2),(26,3,'SIZE','textbox','',3),(27,3,'MULTIPLE','select','NO\r\nYES',4),(28,3,'ITEMS','textarea','',5),(29,3,'REQUIRED','select','NO\r\nYES',6),(30,3,'ADDITIONALATTRIBUTES','textarea','',7),(31,3,'DESCRIPTION','textarea','',8),(32,3,'COMPONENTTYPE','hidden','3',10),(33,4,'NAME','textbox','',1),(34,4,'CAPTION','textbox','',2),(35,4,'ITEMS','textarea','',3),(36,4,'FLOW','select','HORIZONTAL\r\nVERTICAL',4),(37,4,'REQUIRED','select','NO\r\nYES',5),(38,4,'ADDITIONALATTRIBUTES','textarea','',6),(39,4,'DESCRIPTION','textarea','',6),(40,4,'COMPONENTTYPE','hidden','4',7),(41,5,'NAME','textbox','',1),(42,5,'CAPTION','textbox','',2),(43,5,'ITEMS','textarea','',3),(44,5,'FLOW','select','HORIZONTAL\r\nVERTICAL',4),(45,5,'REQUIRED','select','NO\r\nYES',5),(46,5,'ADDITIONALATTRIBUTES','textarea','',6),(47,5,'DESCRIPTION','textarea','',6),(48,5,'COMPONENTTYPE','hidden','5',7),(49,6,'NAME','textbox','',1),(50,6,'CAPTION','textbox','',2),(51,6,'REQUIRED','select','NO\r\nYES',3),(52,6,'DATEFORMAT','textbox','DDMMYYYY',4),(53,6,'CALENDARLAYOUT','select','FLAT\r\nPOPUP',5),(54,6,'ADDITIONALATTRIBUTES','textarea','',6),(55,6,'DESCRIPTION','textarea','',7),(56,6,'COMPONENTTYPE','hidden','6',8),(57,7,'NAME','textbox','',1),(58,7,'CAPTION','textbox','',2),(59,7,'LABEL','textbox','',3),(60,7,'RESET','select','NO\r\nYES',4),(61,7,'RESETLABEL','textbox','',5),(62,7,'ADDITIONALATTRIBUTES','textarea','',6),(63,7,'DESCRIPTION','textarea','',7),(64,7,'COMPONENTTYPE','hidden','7',8),(65,8,'NAME','textbox','',1),(66,8,'CAPTION','textbox','',2),(67,8,'LENGTH','textbox','4',3),(68,8,'BACKGROUNDCOLOR','textbox','#FFFFFF',4),(69,8,'TEXTCOLOR','textbox','#000000',5),(70,8,'TYPE','select','ALPHA\r\nNUMERIC\r\nALPHANUMERIC',6),(71,8,'ADDITIONALATTRIBUTES','textarea','style=\"text-align:center;width:75px;\"',7),(72,8,'DESCRIPTION','textarea','',9),(73,8,'COMPONENTTYPE','hidden','8',9),(74,9,'NAME','textbox','',1),(75,9,'CAPTION','textbox','',2),(76,9,'FILESIZE','textbox','',3),(77,9,'REQUIRED','select','NO\r\nYES',4),(78,9,'ACCEPTEDFILES','textarea','',5),(79,9,'DESTINATION','textbox','//<code>\r\nreturn $RSadapter->config[\'absolute_path\'].\'/components/com_rsform/uploads/\';\r\n//</code>',6),(80,9,'ADDITIONALATTRIBUTES','textarea','',7),(81,9,'DESCRIPTION','textarea','',8),(82,9,'COMPONENTTYPE','hidden','9',9),(83,10,'NAME','textbox','',1),(84,10,'TEXT','textarea','',1),(85,10,'COMPONENTTYPE','hidden','10',9),(86,11,'NAME','textbox','',1),(87,11,'DEFAULTVALUE','textarea','',1),(88,11,'ADDITIONALATTRIBUTES','textarea','',1),(89,11,'COMPONENTTYPE','hidden','11',9),(118,12,'COMPONENTTYPE','hidden','12',10),(117,12,'ADDITIONALATTRIBUTES','textarea','',9),(144,3,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(115,12,'RESETLABEL','textbox','',7),(114,12,'RESET','select','NO\r\nYES',6),(113,12,'IMAGERESET','textbox','',5),(112,12,'IMAGEBUTTON','textbox','',4),(111,12,'LABEL','textbox','',3),(110,12,'CAPTION','textbox','',2),(109,12,'NAME','textbox','',1),(119,13,'NAME','textbox','',1),(120,13,'CAPTION','textbox','',3),(121,13,'LABEL','textbox','',2),(122,13,'RESET','select','NO\r\nYES',6),(123,13,'RESETLABEL','textbox','',7),(125,13,'ADDITIONALATTRIBUTES','textarea','',9),(126,13,'COMPONENTTYPE','hidden','13',10),(127,14,'NAME','textbox','',1),(128,14,'CAPTION','textbox','',2),(129,14,'REQUIRED','select','NO\r\nYES',3),(130,14,'SIZE','textbox','',4),(131,14,'MAXSIZE','textbox','',5),(132,14,'DEFAULTVALUE','textarea','',6),(133,14,'ADDITIONALATTRIBUTES','textarea','',7),(134,14,'COMPONENTTYPE','hidden','14',8),(135,15,'NAME','textbox','',1),(138,15,'LENGTH','textbox','8',4),(140,15,'ADDITIONALATTRIBUTES','textarea','',7),(141,15,'COMPONENTTYPE','hidden','15',8),(142,14,'DESCRIPTION','textarea','',100),(143,8,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(145,4,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(146,5,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(147,6,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(148,14,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(149,9,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(150,8,'FLOW','select','VERTICAL\r\nHORIZONTAL',7),(151,8,'SHOWREFRESH','select','NO\r\nYES',8),(152,8,'REFRESHTEXT','textbox','REFRESH',11),(153,6,'READONLY','select','NO\r\nYES',6),(154,12,'DESCRIPTION','textarea','',10),(155,6,'POPUPLABEL','textbox','...',6),(157,15,'CHARACTERS','select','ALPHANUMERIC\r\nALPHA\r\nNUMERIC',3),(158,9,'ATTACHUSEREMAIL','select','NO\r\nYES',100),(159,9,'ATTACHADMINEMAIL','select','NO\r\nYES',101),(160,2,'WYSIWYG','select','NO\r\nYES',11),(161,8,'SIZE','textbox','15',12),(162,8,'IMAGETYPE','select','FREETYPE\r\nNOFREETYPE\r\nINVISIBLE',3);
/*!40000 ALTER TABLE `jos_rsform_component_type_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_component_types`
--

DROP TABLE IF EXISTS `jos_rsform_component_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_component_types`
--

LOCK TABLES `jos_rsform_component_types` WRITE;
/*!40000 ALTER TABLE `jos_rsform_component_types` DISABLE KEYS */;
INSERT INTO `jos_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES (1,'textBox'),(2,'textArea'),(3,'selectList'),(4,'checkboxGroup'),(5,'radioGroup'),(6,'calendar'),(7,'button'),(8,'captcha'),(9,'fileUpload'),(10,'freeText'),(11,'hidden'),(12,'imageButton'),(13,'submitButton'),(14,'password'),(15,'ticket');
/*!40000 ALTER TABLE `jos_rsform_component_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_components`
--

DROP TABLE IF EXISTS `jos_rsform_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_components`
--

LOCK TABLES `jos_rsform_components` WRITE;
/*!40000 ALTER TABLE `jos_rsform_components` DISABLE KEYS */;
INSERT INTO `jos_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES (15,2,2,4,1),(14,2,1,3,1),(13,2,1,2,1),(12,2,1,1,1),(16,2,13,5,1);
/*!40000 ALTER TABLE `jos_rsform_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_config`
--

DROP TABLE IF EXISTS `jos_rsform_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_config` (
  `ConfigId` int(11) NOT NULL AUTO_INCREMENT,
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`ConfigId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_config`
--

LOCK TABLES `jos_rsform_config` WRITE;
/*!40000 ALTER TABLE `jos_rsform_config` DISABLE KEYS */;
INSERT INTO `jos_rsform_config` (`ConfigId`, `SettingName`, `SettingValue`) VALUES (1,'global.register.code',''),(2,'global.debug.mode','0'),(3,'global.iis','1'),(4,'global.editor','1');
/*!40000 ALTER TABLE `jos_rsform_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_forms`
--

DROP TABLE IF EXISTS `jos_rsform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` text NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `FormTitle` text NOT NULL,
  `Published` tinyint(4) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `Thankyou` text NOT NULL,
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_forms`
--

LOCK TABLES `jos_rsform_forms` WRITE;
/*!40000 ALTER TABLE `jos_rsform_forms` DISABLE KEYS */;
INSERT INTO `jos_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `FormTitle`, `Published`, `Lang`, `ReturnUrl`, `Thankyou`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`) VALUES (2,'Contacto','<div class=\"componentheading\">{global:formtitle}</div>\r\n<table border=\"0\">\r\n	<tr>\r\n		<td>{nombre:caption}</td>\r\n		<td>{nombre:body}<div class=\"formClr\"></div>{nombre:validation}</td>\r\n	</tr>\r\n	<tr>\r\n		<td>{email:caption}</td>\r\n		<td>{email:body}<div class=\"formClr\"></div>{email:validation}</td>\r\n	</tr>\r\n	<tr>\r\n		<td>{telefono:caption}</td>\r\n		<td>{telefono:body}<div class=\"formClr\"></div>{telefono:validation}</td>\r\n	</tr>\r\n	<tr>\r\n		<td>{comentarios:caption}</td>\r\n		<td>{comentarios:body}<div class=\"formClr\"></div>{comentarios:validation}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"2\"><div id=\"botones\">{submit:body} {submit:validation}</div></td>\r\n	</tr>\r\n</table>','inline',0,'Contacto',1,'','index.php?option=com_content&view=article&id=57','<p>Estimado(a) <strong>{nombre:value},</strong></p>\r\n<p>Gracias por contactarnos.  Estaremos atendiendo su mensaje lo antes posible.</p>\r\n<strong>INBIOMEDIC.</strong>','<p>Estimado(a) <strong>{nombre:value},</strong></p>\r\n<p>Gracias por contactarnos.  Estaremos atendiendo su mensaje lo antes posible.</p>\r\n<p><strong>INBIOMEDIC.<br /></strong></p>','{email:value}','','','info@inbiomedic.com','','Inbiomedic','Confirmacion de contacto - Inbiomedic',1,0,'/home/oeste/public_html/nuevo/components/com_rsform/uploads/','<p>Datos de Contacto:</p>\r\n<p>-----------------------------------------------------------------------------------------------------</p>\r\n<p>{nombre:caption}: {nombre:value}<br /> {email:caption}: {email:value}<br /> {telefono:caption}: {telefono:value}<br /> {comentarios:caption}: {comentarios:value}</p>\r\n<p>-----------------------------------------------------------------------------------------------------</p>','info@inbiomedic.com','','','{email:value}','','{nombre:value}','Contacto',1,'','','');
/*!40000 ALTER TABLE `jos_rsform_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_mappings`
--

DROP TABLE IF EXISTS `jos_rsform_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_mappings` (
  `MappingId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL,
  `MappingTable` text NOT NULL,
  `MappingColumn` text NOT NULL,
  PRIMARY KEY (`MappingId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_mappings`
--

LOCK TABLES `jos_rsform_mappings` WRITE;
/*!40000 ALTER TABLE `jos_rsform_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_rsform_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_properties`
--

DROP TABLE IF EXISTS `jos_rsform_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_properties`
--

LOCK TABLES `jos_rsform_properties` WRITE;
/*!40000 ALTER TABLE `jos_rsform_properties` DISABLE KEYS */;
INSERT INTO `jos_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES (104,14,'VALIDATIONRULE','numeric'),(103,14,'MAXSIZE',''),(102,14,'SIZE','20'),(101,14,'REQUIRED','NO'),(100,14,'CAPTION','Teléfono'),(99,14,'NAME','telefono'),(98,13,'DESCRIPTION',''),(97,13,'DEFAULTVALUE',''),(96,13,'ADDITIONALATTRIBUTES',''),(95,13,'VALIDATIONMESSAGE','Fill your e-mail'),(94,13,'VALIDATIONRULE','email'),(93,13,'MAXSIZE',''),(92,13,'SIZE','20'),(90,13,'CAPTION','Email'),(91,13,'REQUIRED','YES'),(89,13,'NAME','email'),(88,12,'DESCRIPTION',''),(87,12,'DEFAULTVALUE',''),(86,12,'ADDITIONALATTRIBUTES',''),(85,12,'VALIDATIONMESSAGE','Escriba su nombre'),(84,12,'VALIDATIONRULE','none'),(83,12,'MAXSIZE',''),(82,12,'SIZE','20'),(81,12,'REQUIRED','YES'),(80,12,'CAPTION','Nombres'),(79,12,'NAME','nombre'),(105,14,'VALIDATIONMESSAGE','Escriba su teléfono'),(106,14,'ADDITIONALATTRIBUTES',''),(107,14,'DEFAULTVALUE',''),(108,14,'DESCRIPTION',''),(109,15,'NAME','comentarios'),(110,15,'CAPTION','Mensaje'),(111,15,'REQUIRED','YES'),(112,15,'COLS','20'),(113,15,'ROWS','5'),(114,15,'VALIDATIONRULE','none'),(115,15,'VALIDATIONMESSAGE','Escriba su mensaje'),(116,15,'ADDITIONALATTRIBUTES',''),(117,15,'DEFAULTVALUE',''),(118,15,'DESCRIPTION',''),(119,15,'WYSIWYG','NO'),(120,16,'ADDITIONALATTRIBUTES',''),(121,16,'RESETLABEL','Borrar'),(122,16,'RESET','YES'),(123,16,'CAPTION',''),(124,16,'LABEL','Enviar'),(125,16,'NAME','submit');
/*!40000 ALTER TABLE `jos_rsform_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_submission_values`
--

DROP TABLE IF EXISTS `jos_rsform_submission_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_submission_values`
--

LOCK TABLES `jos_rsform_submission_values` WRITE;
/*!40000 ALTER TABLE `jos_rsform_submission_values` DISABLE KEYS */;
INSERT INTO `jos_rsform_submission_values` (`SubmissionValueId`, `FormId`, `SubmissionId`, `FieldName`, `FieldValue`) VALUES (1,2,1,'nombre','NATALY MINOR ZARATE'),(2,2,1,'email','nelly_277@msn.com'),(3,2,1,'telefono','2484843158'),(4,2,1,'comentarios','FAC MED  BUAP'),(5,2,1,'submit','Enviar'),(6,2,1,'formId','2'),(7,2,2,'nombre','RAFAEL GUTIERREZ BLAS'),(8,2,2,'email','dr.blass@hotmail.com'),(9,2,2,'telefono','9641068331'),(10,2,2,'comentarios','hola saludos, le escribos para saber como puedo obtener articulos de medicina publicados reciente mente, ya que es de mi uso, en la universidad y pues se me hace un sitio de mucha confianza, de lo que aporta en los estudios realizados. gracias.\r\n'),(11,2,2,'submit','Enviar'),(12,2,2,'formId','2'),(13,2,3,'nombre','luis garrido ramirez'),(14,2,3,'email','drluisito_cc@hotmail.com'),(15,2,3,'telefono','82841982'),(16,2,3,'comentarios','buenas tardes me es grato poder ingresar a su pagina y el motivo es por que quisiera ver la forma de poder acceder a recibir  informacion actualizada para mantenernos actualizados en la rama de la pediatria asi como poder acceder a articulos de revision para protocolos de investigacion en un futuro agradeciendo sus atenciones les envio un cordial saludo y quedo de ustedes  Atte Dr. Luis Garrido Ramirez.'),(17,2,3,'submit','Enviar'),(18,2,3,'formId','2'),(19,2,4,'nombre','isela alvarez'),(20,2,4,'email','ise_3@hotmail.com'),(21,2,4,'telefono','962390746'),(22,2,4,'comentarios','hola  a todos .......porfavor necesito informacion sobre protesis parcial removible\" es q estoy haciendo mi tesis .gracias'),(23,2,4,'submit','Enviar'),(24,2,4,'formId','2'),(25,2,5,'nombre','Gloria Vázquez'),(26,2,5,'email','gloria2450@hotmail.es'),(27,2,5,'telefono','4939491545'),(28,2,5,'comentarios','Hola soy Enfermera Pasante en Servicio Social, y estoy realizando un protocolo de los factores de riesgo que influyen en la infecion por el cancer del virus del papiloma humano, y me sentiria muy agradecida en obtenier un poco de informacin de esta pagina, de antemano y no sin antes enviarle un cordial saludo, me despido.\r\nesperando una pronta y favorable respuesta \r\nATT: EPSS Gloria Vázquez'),(29,2,5,'submit','Enviar'),(30,2,5,'formId','2'),(31,2,6,'nombre','Ricardo Pedraza M.'),(32,2,6,'email','ricardo-pyensa@hotmail.com'),(33,2,6,'telefono','56871718'),(34,2,6,'comentarios','A quien corresponda:\r\n\r\nLa Srta. Itzel Lugo nos contacto por parte de ustedes vía telefónica  y dejo un mensaje de voz hoy martes 7 de febrero en nuestras oficinas, pues desea información acerca del Congreso del CMCOEM a realizarse el mes de abril en Puerto Vallarta, como no puedo distinguir correctamente el número telefónico que nos dejo en el mencionado mensaje de voz para contactarle, deseo confirmar dicho número telefónico, pues no alcanzo a escuchar si es el 43231720 o 43261720\r\n\r\nGracias de antemano por su atención, reciba un cordial saludo.\r\n\r\nAtte.\r\n\r\nRicardo Pedraza M.'),(35,2,6,'submit','Enviar'),(36,2,6,'formId','2'),(37,2,7,'nombre','kkkkk'),(38,2,7,'email','heinnerguio@yahoo.es'),(39,2,7,'telefono',''),(40,2,7,'comentarios','jjjjjjjjjjjj'),(41,2,7,'submit','Enviar'),(42,2,7,'formId','2'),(43,2,8,'nombre','huante espinosa elizabeth'),(44,2,8,'email','flaka_elita@hotmail.com'),(45,2,8,'telefono','4433010841'),(46,2,8,'comentarios','me gustaria ser parte de esta pajina!!!!'),(47,2,8,'submit','Enviar'),(48,2,8,'formId','2'),(49,2,9,'nombre','yoli chalco mamani'),(50,2,9,'email','Benilda249@hotmail.com'),(51,2,9,'telefono',''),(52,2,9,'comentarios','quiero ingresar a su pagina para investigar mis trabajos\r\n'),(53,2,9,'submit','Enviar'),(54,2,9,'formId','2'),(55,2,10,'nombre','ROCIO '),(56,2,10,'email','BRUCK_2304@HOTMAIL.COM'),(57,2,10,'telefono','7224631198'),(58,2,10,'comentarios','NECETITO ESTUDIOS EN CUANTO A ESTUDIO GASOMETRICOS EN EL ESTADO DE CHOQUE HIPOVOLEMICO'),(59,2,10,'submit','Enviar'),(60,2,10,'formId','2'),(61,2,11,'nombre','luis'),(62,2,11,'email','heinnerguio@gmail.com'),(63,2,11,'telefono','22222'),(64,2,11,'comentarios','hola'),(65,2,11,'submit','Enviar'),(66,2,11,'formId','2'),(67,2,12,'nombre','horny'),(68,2,12,'email','dbfuzz@hotmail.com'),(69,2,12,'telefono','91567576538'),(70,2,12,'comentarios','pvF70J http://www.QmuTOWO64WXdjrpr5OLsmvwPES02Q32v.com'),(71,2,12,'submit','Enviar'),(72,2,12,'formId','2'),(73,2,13,'nombre','patrik'),(74,2,13,'email','normy273@hotmail.com'),(75,2,13,'telefono','30110822644'),(76,2,13,'comentarios','augfiT http://www.07lkZYohZwB9hW1ijQSORiFiwwxRx9iF.com'),(77,2,13,'submit','Enviar'),(78,2,13,'formId','2'),(79,2,14,'nombre','Isabelle'),(80,2,14,'email','friend35@hotmail.com'),(81,2,14,'telefono','27897383178'),(82,2,14,'comentarios','A few months <a href=\" http://www.skiingitaly.net \">clomipramine hydrochloride 10mg</a>  018 Family Planning Services Only\n '),(83,2,14,'submit','Enviar'),(84,2,14,'formId','2'),(85,2,15,'nombre','Christian'),(86,2,15,'email','getjoy@msn.com'),(87,2,15,'telefono','36607046021'),(88,2,15,'comentarios','I\'d like to pay this in, please <a href=\" http://www.nsmedia.se \">online lexapro</a>  delivery devices), lancets and chemical reagent testing materials used for monitoring diabetes.\n '),(89,2,15,'submit','Enviar'),(90,2,15,'formId','2'),(91,2,16,'nombre','Carter'),(92,2,16,'email','rikky@aol.com'),(93,2,16,'telefono','72964919039'),(94,2,16,'comentarios','Do you know the number for ? <a href=\" http://jonathanblaustein.com \">xenical orlistat 120 mg price in india</a>  This Public Announcement is being re-issued to remind Americans of the continuing\n '),(95,2,16,'submit','Enviar'),(96,2,16,'formId','2'),(97,2,17,'nombre','Kayla'),(98,2,17,'email','behappy@yahoo.com'),(99,2,17,'telefono','85002734075'),(100,2,17,'comentarios','Have you got any qualifications? <a href=\" http://www.fedeltapos.com \">buy retin a 0.1 no prescription</a>  2. The journal title is abbreviated according to the style used in Index Medicus. Go to PubMed\n '),(101,2,17,'submit','Enviar'),(102,2,17,'formId','2'),(103,2,18,'nombre','Brody'),(104,2,18,'email','heyjew@msn.com'),(105,2,18,'telefono','69247881204'),(106,2,18,'comentarios','A staff restaurant <a href=\" http://www.joomx.com \">neurontin generic price</a>  Faculty of Health Sciences, Kenya and its impact as Kenya accepts the challenge to\n '),(107,2,18,'submit','Enviar'),(108,2,18,'formId','2'),(109,2,19,'nombre','Jocelyn'),(110,2,19,'email','incomeppc@hotmail.com'),(111,2,19,'telefono','77234660970'),(112,2,19,'comentarios','Not in at the moment <a href=\" http://jonathanblaustein.com \">orlistat generic buy</a>  A void is submitted to nullify the original claim in its entirety.\n '),(113,2,19,'submit','Enviar'),(114,2,19,'formId','2'),(115,2,20,'nombre','Nevaeh'),(116,2,20,'email','dogkill@yahoo.com'),(117,2,20,'telefono','52220502672'),(118,2,20,'comentarios','Who do you work for? <a href=\" ï»¿http://dsalo.info/presentations/ \">where to buy retin a cream online</a>  Analog RGB 0.7V (P-P) 75& unbalanced, synchronization signal, positive polarity\n '),(119,2,20,'submit','Enviar'),(120,2,20,'formId','2'),(121,2,21,'nombre','coco888'),(122,2,21,'email','razer22@yahoo.com'),(123,2,21,'telefono','77673301531'),(124,2,21,'comentarios','I\'ve been made redundant <a href=\" http://www.lowvillegolf.com/lessons \">cheapest generic viagra prices</a>  to indicate whether the claim\n '),(125,2,21,'submit','Enviar'),(126,2,21,'formId','2'),(127,2,22,'nombre','Jackson'),(128,2,22,'email','dogkill@yahoo.com'),(129,2,22,'telefono','14163731426'),(130,2,22,'comentarios','I\'m in my first year at university <a href=\" http://urbania4.org/english/ \">amitriptyline gel</a>  - No UT, Post and Clear or DUR processing will occur for DVS item/HCPCS\n '),(131,2,22,'submit','Enviar'),(132,2,22,'formId','2'),(133,2,23,'nombre','Alexandra'),(134,2,23,'email','coolman@msn.com'),(135,2,23,'telefono','98810715765'),(136,2,23,'comentarios','Would you like to leave a message? <a href=\" http://www.info-kod.ba/ba/pitajte/ \">where can i buy clomid in the uk</a>  Authorization Type Code (461-EU) field should contain a 01 if reporting a PA\n '),(137,2,23,'submit','Enviar'),(138,2,23,'formId','2'),(139,2,24,'nombre','patrik'),(140,2,24,'email','dondy228@hotmail.com'),(141,2,24,'telefono','12133627363'),(142,2,24,'comentarios','Wow! I was terribly impressed!!\r\nhttp://www.ggiodpc.com/www.6shpFpANPwYnffbs9P5rsRN67oJWDZuQ.com.php'),(143,2,24,'submit','Enviar'),(144,2,24,'formId','2'),(145,2,25,'nombre','Sara'),(146,2,25,'email','john@hotmail.com'),(147,2,25,'telefono','24219676689'),(148,2,25,'comentarios','I\'d like , please <a href=\" http://www.blueflyingfish.com/orgchart/ \">retin-a purchase</a>  3. The reject denial code 704 will be\n '),(149,2,25,'submit','Enviar'),(150,2,25,'formId','2'),(151,2,26,'nombre','Mia'),(152,2,26,'email','thebest@hotmail.com'),(153,2,26,'telefono','86729586196'),(154,2,26,'comentarios','I\'d like some euros <a href=\" http://www.arsvivendi.com/verlag \">paxil or zoloft</a>  January 2004 2.13.1 Excess Income/Spenddown Claims\n '),(155,2,26,'submit','Enviar'),(156,2,26,'formId','2'),(157,2,27,'nombre','Nicholas'),(158,2,27,'email','eblanned@yahoo.com'),(159,2,27,'telefono','55909781653'),(160,2,27,'comentarios','Could you send me an application form? <a href=\" http://delpiano.com/carnival/ \">cipro 500 mg side effects</a>  practice based reviews. Students complete a variety of assignments including journal club, a\n '),(161,2,27,'submit','Enviar'),(162,2,27,'formId','2'),(163,2,28,'nombre','Joshua'),(164,2,28,'email','lifestile@msn.com'),(165,2,28,'telefono','65713558400'),(166,2,28,'comentarios','Some First Class stamps <a href=\" http://www.meosales.com \">online celexa</a>  electronic billing continuity under a specific ETIN. Failure to renew the Certification\n '),(167,2,28,'submit','Enviar'),(168,2,28,'formId','2'),(169,2,29,'nombre','Eric'),(170,2,29,'email','crazyfrog@hotmail.com'),(171,2,29,'telefono','29601264126'),(172,2,29,'comentarios','Have you got a current driving licence? <a href=\" http://www.pinellasanimalfoundation.org \">prozac generic</a>  Dispenses Prescription orders for amount orders for amount interpret prescription clarifies prescription and clarifies\n '),(173,2,29,'submit','Enviar'),(174,2,29,'formId','2'),(175,2,30,'nombre','Gianna'),(176,2,30,'email','pitfighter@hotmail.com'),(177,2,30,'telefono','18029250044'),(178,2,30,'comentarios','I\'m interested in this position <a href=\" http://www.grouna.com/infos.html \">zyban buy</a>  FS C4 3 variable R x1C C4\n '),(179,2,30,'submit','Enviar'),(180,2,30,'formId','2'),(181,2,31,'nombre','Jackson'),(182,2,31,'email','freelife@yahoo.com'),(183,2,31,'telefono','54064146312'),(184,2,31,'comentarios','I really like swimming <a href=\" http://www.fro2012.com \">wellbutrin sr mg</a>  is reconciled on a bi-monthly basis. You will be billed for the calls made by you. Logging calls is very\n '),(185,2,31,'submit','Enviar'),(186,2,31,'formId','2'),(187,2,32,'nombre','Savannah'),(188,2,32,'email','eblanned@yahoo.com'),(189,2,32,'telefono','23573675281'),(190,2,32,'comentarios','Sorry, I\'m busy at the moment <a href=\" http://www.thevisualexperience.org \">accutane price</a>  multidisciplinary team that includes physicians, clinical officers, nurses,\n '),(191,2,32,'submit','Enviar'),(192,2,32,'formId','2'),(193,2,33,'nombre','lightsoul'),(194,2,33,'email','steep777@yahoo.com'),(195,2,33,'telefono','34351243654'),(196,2,33,'comentarios','I\'ll put him on <a href=\" http://buycialisrc.com/ \">buy cialis overnight delivery</a>  First DataBank identifies drug interactions that have been reported in the scientific literature and ranks them by potential\n '),(197,2,33,'submit','Enviar'),(198,2,33,'formId','2'),(199,2,34,'nombre','Alexander'),(200,2,34,'email','thebest@hotmail.com'),(201,2,34,'telefono','43741870489'),(202,2,34,'comentarios','I\'d like to tell you about a change of address <a href=\" http://www.newenergyresearch.net \">zithromax pric</a>  is most suitable for users who prefer to develop an automated, systemic approach to file\n '),(203,2,34,'submit','Enviar'),(204,2,34,'formId','2'),(205,2,35,'nombre','Hugo Armando Reyna Romero'),(206,2,35,'email','belialrr66@hotmail.com'),(207,2,35,'telefono','5515077887'),(208,2,35,'comentarios','Marcacion de celulas tumorales de cancer de mama utilizando anticuerpos monoclonales unidos a particulasmetaicas fluorescentes'),(209,2,35,'submit','Enviar'),(210,2,35,'formId','2'),(211,2,36,'nombre','Andrew'),(212,2,36,'email','unlove@gmail.com'),(213,2,36,'telefono','40853117957'),(214,2,36,'comentarios','I\'ve got a very weak signal <a href=\" http://www.conshelf.com/press/ \">cheapest propecia prices</a>  AMPATH began in November, 2001 and had the following major objectives:\n '),(215,2,36,'submit','Enviar'),(216,2,36,'formId','2'),(217,2,37,'nombre','Liam'),(218,2,37,'email','crazyivan@yahoo.com'),(219,2,37,'telefono','96771564833'),(220,2,37,'comentarios','It\'s funny goodluck <a href=\" http://level5motorsports.com/schedule/ \">weddings online clomid</a>  is billed as a quantity of 20.)\n '),(221,2,37,'submit','Enviar'),(222,2,37,'formId','2'),(223,2,38,'nombre','Jessica'),(224,2,38,'email','eblanned@yahoo.com'),(225,2,38,'telefono','97505979369'),(226,2,38,'comentarios','Wonderfull great site <a href=\" ï»¿http://dominosnm.com \">do need prescription get clomid</a>  requested a complete diet for their Patient.\n '),(227,2,38,'submit','Enviar'),(228,2,38,'formId','2'),(229,2,39,'nombre','greenwood'),(230,2,39,'email','incomeppc@hotmail.com'),(231,2,39,'telefono','42964508233'),(232,2,39,'comentarios','I\'m originally from Dublin but now live in Edinburgh <a href=\" http://www.colorsofbangladesh.com \">buy topamax no prescription</a>  439 Reason for Service Code A/N 3 variable O The source code that will be\n '),(233,2,39,'submit','Enviar'),(234,2,39,'formId','2'),(235,2,40,'nombre','Cameron'),(236,2,40,'email','bonser@gmail.com'),(237,2,40,'telefono','55618120560'),(238,2,40,'comentarios','I\'m sorry, he\'s  <a href=\" ï»¿http://www.newenergyresearch.net \">buy zithromax online australia</a>  practice management of collected data for DUEs,\n '),(239,2,40,'submit','Enviar'),(240,2,40,'formId','2'),(241,2,41,'nombre','Seth'),(242,2,41,'email','quaker@yahoo.com'),(243,2,41,'telefono','76246110893'),(244,2,41,'comentarios','Insert your card <a href=\" http://www.theshapeofdays.com/contact-us \">generic propecia</a>  Attend other meetings with the pharmacy director or his designee as\n '),(245,2,41,'submit','Enviar'),(246,2,41,'formId','2'),(247,2,42,'nombre','infest'),(248,2,42,'email','crazyivan@yahoo.com'),(249,2,42,'telefono','46674396344'),(250,2,42,'comentarios','My battery\'s about to run out <a href=\" http://www.morrisonhvac.com \">do u need to prescription for clomid</a>  does not match the number\n '),(251,2,42,'submit','Enviar'),(252,2,42,'formId','2'),(253,2,43,'nombre','goodsam'),(254,2,43,'email','pitfighter@hotmail.com'),(255,2,43,'telefono','21129897870'),(256,2,43,'comentarios','good material thanks <a href=\" http://www.zieglerasia.com \">purchase generic flagyl online</a>  \" All reconstituted medications must be expressed in terms of milliliters.\n '),(257,2,43,'submit','Enviar'),(258,2,43,'formId','2'),(259,2,44,'nombre','Snoopy'),(260,2,44,'email','rikky@aol.com'),(261,2,44,'telefono','23005804521'),(262,2,44,'comentarios','How many days will it take for the cheque to clear? <a href=\" http://daytrippers.org.uk/about/ \">ja existe generico de xenical</a>  111 PARK AVENUE PROVIDER NOTIFICATION\n '),(263,2,44,'submit','Enviar'),(264,2,44,'formId','2'),(265,2,45,'nombre','Devin'),(266,2,45,'email','bonser@gmail.com'),(267,2,45,'telefono','84955406473'),(268,2,45,'comentarios','Sorry, you must have the wrong number <a href=\" ï»¿http://flipchips.com/tutorial/ \">retin a acne scars treatment</a>  the wireless remote control, to activated the autoU\n '),(269,2,45,'submit','Enviar'),(270,2,45,'formId','2'),(271,2,46,'nombre','Julia'),(272,2,46,'email','coco888@msn.com'),(273,2,46,'telefono','34922833099'),(274,2,46,'comentarios','Is there ? <a href=\" http://www.danieltrenner.com/store_s \">wellbutrin sr rxlist</a>  drug and health resources Explain the importance of\n '),(275,2,46,'submit','Enviar'),(276,2,46,'formId','2'),(277,2,47,'nombre','Sydney'),(278,2,47,'email','thebest@hotmail.com'),(279,2,47,'telefono','73208626423'),(280,2,47,'comentarios','Can I take your number? <a href=\" http://www.albcat.com/links/ \">Where To Buy Phenergan</a>  not found on the formulary will prevent a higher and more costly level of care\n <a href=\" http://hunterdk.com/products-2/ \">clomid purchase canada</a>  other related information to determine appropriate medication therapy.\n <a href=\" http://www.idleworm.com/blog/clomidonline/ \">should buy clomid online</a>  various regulations mandated by the Kentucky Department for Medicaid Services\n '),(281,2,47,'submit','Enviar'),(282,2,47,'formId','2'),(283,2,48,'nombre','Lauren'),(284,2,48,'email','flyman@gmail.com'),(285,2,48,'telefono','74070091213'),(286,2,48,'comentarios','Get a job <a href=\" http://glaciercreek.com/awards/ \">Order Praziquantel Online</a>  meeting the longer-term heath service needs of the developing country. International\n <a href=\" http://www.tropicalaudubon.org \">Order Elavil</a>  made up may result in an incomplete or failure for the experiential activity as determined\n <a href=\" http://www.jammu-kashmir.com \">rx wellbutrin</a>  6.1. Access, analyze and apply 17. Select, develop, implement · Apply knowledge of · Discuss local community\n '),(287,2,48,'submit','Enviar'),(288,2,48,'formId','2'),(289,2,49,'nombre','Janni'),(290,2,49,'email','pitfighter@hotmail.com'),(291,2,49,'telefono','70757779324'),(292,2,49,'comentarios','About a year <a href=\" https://www.leemshop.nl/tadelakt/ \">generic fluconazole good diflucan</a>  Sources; Appropriate background information; Recent clinical trials of the same topic; \n <a href=\" http://segalconsulting.biz/testimonials/ \">bula do wellbutrin xl 150mg</a>  Total subsection plus the total sum of the Financial Transaction section.\n <a href=\" http://www.lbi.sk/kontakt \">how many milligrams of topamax to lose weight</a>  experience.â Most faculty members who stayed for a month or more indicate that the\n '),(293,2,49,'submit','Enviar'),(294,2,49,'formId','2'),(295,2,50,'nombre','Arianna'),(296,2,50,'email','john@hotmail.com'),(297,2,50,'telefono','10315445893'),(298,2,50,'comentarios','What are the hours of work? <a href=\" http://www.thehealingplace.info/contact-us/ \">Purchase Motilium Online</a>  Note: Bold Text in the examples below represents Free Text.\n <a href=\" http://www.gpd.com/attorneys/ \">Provera Cost</a>  Complete and submit a formulary review\n <a href=\" http://www.geronline.com \">Buy Cheap Premarin</a>  CORRECT ENTRY MADE / COMMENTS\n '),(299,2,50,'submit','Enviar'),(300,2,50,'formId','2'),(301,2,51,'nombre','kinberly '),(302,2,51,'email','kinberlygabriela_Escobar_galvez@hotmail.com'),(303,2,51,'telefono','9621546474'),(304,2,51,'comentarios','ola'),(305,2,51,'submit','Enviar'),(306,2,51,'formId','2'),(307,2,52,'nombre','Taylor'),(308,2,52,'email','behappy@yahoo.com'),(309,2,52,'telefono','67026327176'),(310,2,52,'comentarios','We went to university together <a href=\" http://buyorbuildashed.ca/benoquin/ \">benoquin cream 20</a>  July 2010 3.2.12 Variable 5.1 Request Format\n <a href=\" http://angelicakitchen.com/esidrix/ \">hydrochlorothiazide price</a>  Effectively communicate (verbal and written) with all health care professionals\n <a href=\" http://www.chocolatepoker.hu/online-poker-suli/poker-jelek/ \">buy hydroxyzine</a>  performance-based exam. During the exam, students are observed and\n '),(311,2,52,'submit','Enviar'),(312,2,52,'formId','2'),(313,2,53,'nombre','Caroline'),(314,2,53,'email','thebest@hotmail.com'),(315,2,53,'telefono','13923522775'),(316,2,53,'comentarios','Do you know the number for ? <a href=\" http://angelicakitchen.com/singulair/ \">levocetirizine montelukast</a>  02 = Health Industry Number (HIN)\n <a href=\" http://buyorbuildashed.ca/provera/ \">provera online</a>  bus line or near other students who may serve as a carpool. Transportation is particularly critical in\n <a href=\" http://www.gleefulmusic.com/purchase/ \">generic mebendazole</a>  adherence, disease states, health care provider information, pharmacy\n <a href=\" http://woodcraftconstructionkit.com/term \">tinidazole tablets 500mg</a>  instructions should be adhered to.be blocked by placing the product on\n '),(317,2,53,'submit','Enviar'),(318,2,53,'formId','2'),(319,2,54,'nombre','Janni'),(320,2,54,'email','greenwood@webtown.com'),(321,2,54,'telefono','18288289605'),(322,2,54,'comentarios','I stay at home and look after the children <a href=\" http://commonwealthcentre.com/about-us/ \">zyban price australia</a>  (community outreach or education offering) that can be\n <a href=\" http://www.astrogallery.com/gemstones/ \">zoloft 25 mg while breastfeeding</a>  development, implementation, development, implementation, policies and procedures to including look-alike, sound-\n <a href=\" http://highqualityfurniture.com/htt-10crp-human-touch-massage-chair-recliner-by-interactive-health/ \">buying xenical</a>  control, and the image will gradually be enlarged.\n '),(323,2,54,'submit','Enviar'),(324,2,54,'formId','2'),(325,2,55,'nombre','Joseph'),(326,2,55,'email','coco888@msn.com'),(327,2,55,'telefono','77141599247'),(328,2,55,'comentarios','I\'d like to tell you about a change of address <a href=\" http://buyorbuildashed.ca/prednisone/ \">prednisone 10mg</a>  Be sure to fold down arm first as per the74\n <a href=\" http://buyorbuildashed.ca/praziquantel/ \">praziquantel uk</a>  are not guaranteed a site in the Triangle Area.\n <a href=\" http://buyorbuildashed.ca/hoodia/ \">hoodia p 57</a>  and communicating the important information learned about a patient\'s medical condition(s) and\n '),(329,2,55,'submit','Enviar'),(330,2,55,'formId','2'),(331,2,56,'nombre','Brandon'),(332,2,56,'email','dirtbill@yahoo.com'),(333,2,56,'telefono','96775438771'),(334,2,56,'comentarios','Cool site goodluck :) <a href=\" http://riadlinda.com/getting-there/ \">allopurinol uk</a>  know if the service is covered, the provider must submit a claim to the other insurance carrier prior to billing Medicaid,\n <a href=\" http://www.cimgf.com/category/blogging/ \">roche accutane buy online</a>  B3 = Rx Rebill\n <a href=\" http://www.alam-sutera.com/products/commercial \">actos 5 mg</a>  to Eldoret as a resident and is now in private practice says simply:\n <a href=\" http://angelicakitchen.com/aldactone/ \">buy aldactone online</a>  accountability of funds, and is appealing to some funding sources that tend to be wary\n '),(335,2,56,'submit','Enviar'),(336,2,56,'formId','2'),(337,2,57,'nombre','infest'),(338,2,57,'email','dirtbill@yahoo.com'),(339,2,57,'telefono','41742565891'),(340,2,57,'comentarios','Is this a temporary or permanent position? <a href=\" http://www.solutionbc.com/finpecia/ \">finpecia hair loss</a>  A. Pathophysiology of principles of principles of Able to explain basic with moderate depth and depth with no\n <a href=\" http://thedanabrams.com/about-me/ \">benoquin cream</a>  E. Care and peers, and instructors. Rarely thoughtful, Ocassionally Usually thoughtful, Always thoughtful,\n <a href=\" http://www.solutionbc.com/avapro/ \">avapro price</a>  If applicable, enter the amount actually paid by the other insurance carrier in this field.\n <a href=\" http://www.solutionbc.com/motilium/ \">cheap domperidone</a>  Steps for Showing Transparent Material\n '),(341,2,57,'submit','Enviar'),(342,2,57,'formId','2'),(343,2,58,'nombre','Sofia'),(344,2,58,'email','heyjew@msn.com'),(345,2,58,'telefono','82757565606'),(346,2,58,'comentarios','Could you tell me the number for ? <a href=\" http://www.solutionbc.com/priligy/ \">purchase priligy</a>  required along with your valid Passport. You do not need to\n <a href=\" http://www.solutionbc.com/atarax/ \">purchase atarax online</a>  The final match placement (#11) goes through the re-randomized list and makes final placement of students\n <a href=\" http://www.omnicus.net/order/ \">xenical 120 mg firmy roche</a>  patient care rounds. This experience will be directed and evaluated by one or more preceptors.\n <a href=\" http://www.solutionbc.com/stromectol/ \">cheap ivermectin</a>  the table: pharmaceutical expertise. Not only do our students\n '),(347,2,58,'submit','Enviar'),(348,2,58,'formId','2'),(349,2,59,'nombre','Payton'),(350,2,59,'email','goodboy@yahoo.com'),(351,2,59,'telefono','78368549230'),(352,2,59,'comentarios','Another year <a href=\" http://www.hi-cancer.org/cancertopic/breast-cancer \">buy bimatoprost online</a>  service rendered by students is incidental to the educational purpose of the clinical\n <a href=\" http://www.healtheconomicsconf.net/contact-us \">cost celebrex</a>  Pharmacy closure or change of ownership, guidance on appropriate procedures is available\n <a href=\" http://www.treatmentforliving.com/treatmenttopic/treating-panic \">betnovate buy online</a>  recognize that in spite of such advice, no one can guarantee my safety.\n <a href=\" http://www.palestinejn.org/en/about-pjn \">prescription drug buspar</a>  original dispensing, reimbursement can be claimed. The signed prescription must be\n '),(353,2,59,'submit','Enviar'),(354,2,59,'formId','2'),(355,2,60,'nombre','Nathan'),(356,2,60,'email','quaker@yahoo.com'),(357,2,60,'telefono','57900969382'),(358,2,60,'comentarios','Have you got a telephone directory? <a href=\" http://www.peepshowstories.com \">buy teva orlistat 120mg</a>  adding a little fluid if desired. Fry the onions until brown; add to the other vegetables and fry together on a\n <a href=\" http://wfpregnancyhelpcenter.org/abortion/abortion-education/ \">stendra tablets</a>  General Information About the eMedNY-000301\n <a href=\" http://www.healthtology.com/tag/good-mental-health \">fda withdraws approval of a generic version of wellbutrin</a>  Sullivan University College of Pharmacy with all the promotion, rank, and\n <a href=\" http://pharmabul.com/tag/diet-pills-pharmacy \">xenical sample menus</a>  Allergy extracts, compounded in a lab, and not bearing a unique DIN number.\n '),(359,2,60,'submit','Enviar'),(360,2,60,'formId','2'),(361,2,61,'nombre','Ava'),(362,2,61,'email','quaker@yahoo.com'),(363,2,61,'telefono','58008719728'),(364,2,61,'comentarios','Through friends <a href=\" http://freedomphotonics.com/freedom-photonics-products/ \">cleocin lotion</a>  Cardiopulmonary resuscitation (CPR) skills are considered a core competency for all health\n <a href=\" http://vertest.com.au/index.php/employment \">rogaine for women compare prices</a>  increase the quantity, ensure the quality, and improve the geographic distribution of physicians and\n <a href=\" http://www.calgarycarguy.com/car-pics/ \">purchase sildenafil citrate</a>  ± This approval must occur 8 weeks prior\n '),(365,2,61,'submit','Enviar'),(366,2,61,'formId','2'),(367,2,62,'nombre','Christopher'),(368,2,62,'email','incomeppc@hotmail.com'),(369,2,62,'telefono','79648037849'),(370,2,62,'comentarios','What\'s the last date I can post this to  to arrive in time for Christmas? <a href=\" http://www.parquet.com.au/index.php/contact-us \">albuterol ipratropium</a>  Develop appropriate and necessary skills needed to provide integrated\n <a href=\" http://www.pintomexican.com/locations \">trazodone 300 mg</a>  implementation of treatment written form to stickers, foreign language (1) name, description, and\n <a href=\" http://www.thehappygamer.net/about/ \">elavil 75 mg</a>  and student(s) requirements. Displaced students may be required to travel\n '),(371,2,62,'submit','Enviar'),(372,2,62,'formId','2'),(373,2,63,'nombre','Zoe'),(374,2,63,'email','gobiz@gmail.com'),(375,2,63,'telefono','11767796752'),(376,2,63,'comentarios','Directory enquiries <a href=\" http://www.quintec.com/careers/ \">buy eriacta online</a>  coverage under students name Student is a legal guardian\n <a href=\" http://www.primeroprimera.com/prensa/ \">hydrochlorothiazide online</a>  allergic reactions, drug team including, but not limited\n <a href=\" http://www.rdorval.com/pesquisas/ \">glucophage diabetes</a>  (Medicaid ID) or the state license number. Continue usage of the Medicaid Id or state\n <a href=\" http://www.theneonjudgement.com/shop/ \">prescription calls erythromycin 400mg 5ml</a>  Allows them to voice complaints or appeals about the organization or the care\n '),(377,2,63,'submit','Enviar'),(378,2,63,'formId','2'),(379,2,64,'nombre','coco888'),(380,2,64,'email','freelife@yahoo.com'),(381,2,64,'telefono','61070114370'),(382,2,64,'comentarios','I\'m a housewife <a href=\" http://soappresentations.com/products/ \">where to buy avanafil</a>  y The service is not covered; or\n <a href=\" http://campeonissimo.net/denis/ \">generic premarin</a>  Amount Paid field 431-DV, if the\n <a href=\" http://cristianoweb.net/projeto/foca-no-trabalho/ \">buy ventolin evohaler online</a>  714 Date Filled More than 60 days from 28 M/I Date Prescription Written\n <a href=\" http://concatenum.com/temas/tecnologia/ \">lansoprazole dr</a>  7-day resubmission window will not be accepted electronically.\n '),(383,2,64,'submit','Enviar'),(384,2,64,'formId','2'),(385,2,65,'nombre','Amelia'),(386,2,65,'email','incomeppc@hotmail.com'),(387,2,65,'telefono','53506612090'),(388,2,65,'comentarios','Some First Class stamps <a href=\" http://www.bradfordpeoplefirst.org.uk/website-help/ \">paxil price us</a>  after approximately one year of didactic coursework and needs remediation before\n <a href=\" http://www.mobiledentandpaintrepair.com/our-commercials/ \">acetaminophen with ibuprofen</a>   The Certified True Photocopy MUST include all the items on the original prescription with the\n <a href=\" http://www.ilbaccarodublin.com/reservation/ \">nexium pricing</a>  its inception, the partnership focused on exchange of manpower and ideas, with the\n <a href=\" http://www.bioextratus.com.br/produtos \">propranolol raynaud\'s variant angina</a>  convenience receptacles, and the\n '),(389,2,65,'submit','Enviar'),(390,2,65,'formId','2'),(391,2,66,'nombre','Jackson'),(392,2,66,'email','rikky@aol.com'),(393,2,66,'telefono','33634855805'),(394,2,66,'comentarios','A book of First Class stamps <a href=\" http://www.tobaccopapers.com/store/pallmall.html \">buy pall mall menthol cigarettes online</a>  For example, a NCPDP Reject Code of 83 Duplicate Paid/Captured Claim is returned\n <a href=\" http://www.tobaccopapers.com/store/luckystrike.html \">buy lucky strike cigarettes canada</a>  F. Lonely Planet - Kenya\n <a href=\" http://www.tobaccopapers.com/store/camel.html \">camel cigarettes online uk</a>  13. Apply knowledge of drug inventory, drug security, storage and control procedures\n <a href=\" http://www.tobaccopapers.com/store/winston.html \">winston cigarettes online</a>  to return to farming and food security. An open house at the farm in September, 2003\n '),(395,2,66,'submit','Enviar'),(396,2,66,'formId','2'),(397,2,67,'nombre','Brooke'),(398,2,67,'email','crazyfrog@hotmail.com'),(399,2,67,'telefono','55143497735'),(400,2,67,'comentarios','Thanks for calling <a href=\" http://www.uktobacco.com/sobranie.html \">how much do sobranie cigarettes cost</a>  the existing partnership, Purdue brings another facet of healthcare to\n <a href=\" http://www.uktobacco.com/dunhill.html \">buy dunhill cigarettes online india</a>  LDSS has not yet updated eligibility on the Client\n <a href=\" http://www.uktobacco.com/parliament.html \">parliament cigarettes price california</a>  b) an antipsychotic; or\n '),(401,2,67,'submit','Enviar'),(402,2,67,'formId','2'),(403,2,68,'nombre','Charlotte'),(404,2,68,'email','quaker@yahoo.com'),(405,2,68,'telefono','39267663276'),(406,2,68,'comentarios','US dollars <a href=\" http://www.federicafrezza.net/short-stories/ \">best price minoxidil 5%</a>  sections. Those needing further clarification are described below.\n <a href=\" http://www.ciarangaffey.com/terms/ \">generic levlen</a>  meet many deadlines Assignments done on some projects ahead necessary. Extremely\n <a href=\" http://www.chicago86.org/feedback.html \">motilium tablets 10mg</a>  associates support safe and · Use effective\n <a href=\" http://www.litci.org/inicio/mujeres \">order propecia generic online</a>  Acquisition of clinical information will come from a students own observations and from the greatest\n '),(407,2,68,'submit','Enviar'),(408,2,68,'formId','2'),(409,2,69,'nombre','Zachary'),(410,2,69,'email','nogood87@yahoo.com'),(411,2,69,'telefono','90398364423'),(412,2,69,'comentarios','I read a lot <a href=\" http://www.pulselearning.com/company/careers/ \">retin a micro gel rebate</a>  Never fully present fully present and Ocassionally fully fully present and fully present and\n <a href=\" http://www.dhr.ie/about/ \">trazodone online</a>  support the selection of overrides and the submission of claims for cognitive fees.\n <a href=\" http://marketingsharpnesstest.com/testimonials/ \">cheap wellbutrin without prescription</a>  038 Outpatient Coverage with No Nursing Facility\n <a href=\" http://partitolotteria.org/chi-siamo/ \">amitriptyline 10mg price</a>  by the dollar amount entered in field\n '),(413,2,69,'submit','Enviar'),(414,2,69,'formId','2'),(415,2,70,'nombre','Isabella'),(416,2,70,'email','lifestile@msn.com'),(417,2,70,'telefono','10360782724'),(418,2,70,'comentarios','Some First Class stamps <a href=\" http://www.mibisunset.com/office/curriculum \">aldactone order</a>  Relate one aspect of your hospital IPPE experience to a topic Submit electronic copy\n <a href=\" http://drosmar.band.uol.com.br/tag/medicina-esportiva/ \">cost terbinafine 250 mg</a>  February 2005 2.11.1 Prior Auth Type Code and\n <a href=\" http://milfamily.org/flyer/ \">doxycycline cheap</a>  Client Has Other Insurance will be returned\n <a href=\" http://modeorganicsalon.com/products-page/ \">buy cheap domperidone</a>  relationships between or treatment of diverse\n '),(419,2,70,'submit','Enviar'),(420,2,70,'formId','2'),(421,2,71,'nombre','Evan'),(422,2,71,'email','unlove@gmail.com'),(423,2,71,'telefono','74862041420'),(424,2,71,'comentarios','Sorry, I ran out of credit <a href=\" http://www.cksid.org.rs/2010/03 \">order spironolactone</a>  in Section 6.0 on page 6.0.1.\n <a href=\" http://www.sylvain.nl/info/ \">buy albendazole tablets</a>  when the NDC is in fact covered?\n <a href=\" http://www.irondalecafe.com/history/ \">actos pioglitazone</a>  is operated in a commercial\n '),(425,2,71,'submit','Enviar'),(426,2,71,'formId','2'),(427,2,72,'nombre','Levi'),(428,2,72,'email','friend35@hotmail.com'),(429,2,72,'telefono','53730933730'),(430,2,72,'comentarios','I have my own business <a href=\" http://www.mikrokoulutus.fi/valmennus/ \">buy praziquantel online</a>  (2) Implement all appropriate and reasonable administrative, physical and technical\n <a href=\" http://www.plusstand.com/haberler \">buy bimatoprost ophthalmic solution 0.03 careprost</a>  provider became aware that the patient was covered by other insurance. The other\n <a href=\" http://www.soymamablog.com/afiliados-directorios \">buy bimatoprost generic</a>  be needed. Assess risk to patient and take\n <a href=\" http://www.hamptonframes.com/about-us/ \">phenergan with codeine</a>  IU House Fax +254 (0)53-2033512\n '),(431,2,72,'submit','Enviar'),(432,2,72,'formId','2');
/*!40000 ALTER TABLE `jos_rsform_submission_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_rsform_submissions`
--

DROP TABLE IF EXISTS `jos_rsform_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_rsform_submissions`
--

LOCK TABLES `jos_rsform_submissions` WRITE;
/*!40000 ALTER TABLE `jos_rsform_submissions` DISABLE KEYS */;
INSERT INTO `jos_rsform_submissions` (`SubmissionId`, `FormId`, `DateSubmitted`, `UserIp`, `Username`, `UserId`) VALUES (1,2,'2011-07-02 16:02:12','189.128.197.132','','0'),(2,2,'2011-09-12 12:59:03','187.143.226.127','','0'),(3,2,'2011-10-19 13:03:23','189.140.140.124','','0'),(4,2,'2011-12-29 14:29:07','190.233.174.69','','0'),(5,2,'2012-01-11 23:19:40','189.200.240.100','','0'),(6,2,'2012-02-07 14:05:33','189.140.161.141','','0'),(7,2,'2012-03-31 08:24:20','190.43.119.11','','0'),(8,2,'2012-05-04 09:23:42','187.134.121.186','','0'),(9,2,'2012-05-20 19:48:40','190.42.12.102','','0'),(10,2,'2012-08-01 20:44:44','187.193.141.214','','0'),(11,2,'2013-02-15 23:20:03','190.43.75.188','','0'),(12,2,'2013-03-04 02:30:42','79.143.181.150','','0'),(13,2,'2013-03-11 08:31:30','82.118.16.228','','0'),(14,2,'2013-03-12 14:22:30','188.143.232.31','','0'),(15,2,'2013-03-15 09:52:51','188.143.232.31','','0'),(16,2,'2013-03-18 04:39:40','188.143.232.31','','0'),(17,2,'2013-03-21 03:03:14','188.143.232.31','','0'),(18,2,'2013-03-23 15:16:04','188.143.232.31','','0'),(19,2,'2013-03-25 22:40:41','188.143.232.31','','0'),(20,2,'2013-03-28 14:51:16','188.143.232.31','','0'),(21,2,'2013-03-31 00:32:01','188.143.232.31','','0'),(22,2,'2013-04-02 06:37:51','188.143.232.31','','0'),(23,2,'2013-04-04 17:10:16','188.143.232.31','','0'),(24,2,'2013-04-06 06:28:00','188.143.232.31','','0'),(25,2,'2013-04-09 20:10:27','188.143.232.31','','0'),(26,2,'2013-04-13 19:06:45','188.143.232.31','','0'),(27,2,'2013-04-15 05:59:42','188.143.232.31','','0'),(28,2,'2013-04-16 16:50:01','188.143.232.31','','0'),(29,2,'2013-04-18 06:58:46','188.143.232.31','','0'),(30,2,'2013-04-20 19:23:44','188.143.232.31','','0'),(31,2,'2013-04-23 22:43:36','188.143.232.31','','0'),(32,2,'2013-04-28 00:54:51','188.143.232.31','','0'),(33,2,'2013-05-10 19:24:47','188.143.232.31','','0'),(34,2,'2013-05-15 21:59:16','188.143.232.31','','0'),(35,2,'2013-05-21 09:16:31','189.146.200.161','','0'),(36,2,'2013-05-28 14:25:50','188.143.232.31','','0'),(37,2,'2013-06-04 06:30:35','188.143.232.31','','0'),(38,2,'2013-06-11 17:11:53','188.143.232.31','','0'),(39,2,'2013-06-17 09:36:45','188.143.232.31','','0'),(40,2,'2013-06-22 03:34:12','188.143.232.31','','0'),(41,2,'2013-06-27 16:33:54','188.143.232.31','','0'),(42,2,'2013-07-04 06:38:16','188.143.232.31','','0'),(43,2,'2013-07-18 03:12:35','188.143.232.31','','0'),(44,2,'2013-07-22 20:17:09','188.143.232.31','','0'),(45,2,'2013-07-27 05:29:27','188.143.232.31','','0'),(46,2,'2013-08-02 19:20:57','188.143.232.31','','0'),(47,2,'2013-08-30 18:34:35','91.121.170.197','','0'),(48,2,'2013-08-30 23:20:32','188.143.232.111','','0'),(49,2,'2013-08-31 13:58:01','188.143.234.127','','0'),(50,2,'2013-08-31 14:49:59','188.143.232.31','','0'),(51,2,'2013-09-23 22:05:40','187.143.75.64','','0'),(52,2,'2013-09-26 17:25:54','188.143.232.111','','0'),(53,2,'2013-09-26 20:19:23','188.143.232.31','','0'),(54,2,'2013-09-28 00:31:59','91.121.170.197','','0'),(55,2,'2013-10-05 22:41:03','91.121.170.197','','0'),(56,2,'2013-10-06 19:08:23','188.143.232.111','','0'),(57,2,'2013-10-12 00:21:56','91.121.170.197','','0'),(58,2,'2013-10-15 04:55:05','188.143.232.31','','0'),(59,2,'2013-10-18 10:13:20','91.121.170.197','','0'),(60,2,'2013-10-22 00:36:47','188.143.232.31','','0'),(61,2,'2013-10-25 11:34:57','91.121.170.197','','0'),(62,2,'2013-10-26 21:24:04','188.143.232.111','','0'),(63,2,'2013-11-16 16:30:16','188.143.232.111','','0'),(64,2,'2013-11-18 20:06:22','188.143.232.31','','0'),(65,2,'2013-11-22 04:55:26','188.143.232.111','','0'),(66,2,'2013-11-24 09:21:13','188.143.232.31','','0'),(67,2,'2013-11-27 11:42:48','188.143.232.111','','0'),(68,2,'2013-11-30 01:21:11','188.143.232.31','','0'),(69,2,'2013-12-02 20:39:06','188.143.232.111','','0'),(70,2,'2013-12-07 09:39:33','188.143.232.31','','0'),(71,2,'2013-12-21 00:45:09','188.143.232.31','','0'),(72,2,'2014-02-10 08:49:22','188.143.232.111','','0');
/*!40000 ALTER TABLE `jos_rsform_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES (1,'Consultorias','','consultorias','','content','left','',1,0,'0000-00-00 00:00:00',2,0,1,''),(2,'Nosotros','','nosotros','','content','left','',1,0,'0000-00-00 00:00:00',1,0,1,''),(3,'Cientificos','','cientificos','','content','left','',1,0,'0000-00-00 00:00:00',3,0,4,''),(4,'Articulos','','articulos','','content','left','',1,0,'0000-00-00 00:00:00',4,0,2,''),(5,'Representaciones','','representaciones','','content','left','',1,0,'0000-00-00 00:00:00',5,0,2,''),(6,'Apoyo a la Investigacion','','apoyo-a-la-investigacion','','content','left','',1,0,'0000-00-00 00:00:00',6,0,2,'');
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES ('','1392843183','abbd77ea6b5c1e93f588c6c669a59f4d',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1392843183;s:18:\"session.timer.last\";i:1392843183;s:17:\"session.timer.now\";i:1392843183;s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:66:\"/home/inbiomed/public_html/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sh404SEF_meta`
--

DROP TABLE IF EXISTS `jos_sh404SEF_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sh404SEF_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(255) DEFAULT '',
  `metakey` varchar(255) DEFAULT '',
  `metatitle` varchar(255) DEFAULT '',
  `metalang` varchar(30) DEFAULT '',
  `metarobots` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sh404SEF_meta`
--

LOCK TABLES `jos_sh404SEF_meta` WRITE;
/*!40000 ALTER TABLE `jos_sh404SEF_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_sh404SEF_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sh404sef_aliases`
--

DROP TABLE IF EXISTS `jos_sh404sef_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sh404sef_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sh404sef_aliases`
--

LOCK TABLES `jos_sh404sef_aliases` WRITE;
/*!40000 ALTER TABLE `jos_sh404sef_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_sh404sef_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sh404sef_pageids`
--

DROP TABLE IF EXISTS `jos_sh404sef_pageids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sh404sef_pageids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `pageid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `alias` (`pageid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sh404sef_pageids`
--

LOCK TABLES `jos_sh404sef_pageids` WRITE;
/*!40000 ALTER TABLE `jos_sh404sef_pageids` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_sh404sef_pageids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES ('tti_inbiomedic',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES (62,'Administrator','admin','info@ttiperu.com','0cc175b9c0f1b6a831c399e269772661','Super Administrator',0,1,25,'2011-05-29 19:34:30','2014-02-13 13:09:32','','');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-19 15:57:38
