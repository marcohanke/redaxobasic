## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf8mb4

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presave` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postsave` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Startseite','Startseite',1,1,1,'|',1,2,1,'2021-03-26 21:34:37','admin','2021-03-29 07:42:05','admin',0),
  (2,2,0,'Landingpage','Landingpage',2,1,1,'|',1,3,1,'2021-03-26 21:34:37','admin','2021-03-27 10:54:58','admin',0),
  (3,3,0,'Fehlerseite (404)','',0,0,1,'|',1,2,1,'2021-03-26 21:34:34','admin','2021-03-26 21:41:15','admin',0),
  (4,4,2,'Unterseite','Unterseite',1,1,1,'|2|',1,3,1,'2021-03-27 10:55:06','admin','2021-03-27 10:55:04','admin',0);
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `revision` int(11) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `value1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value3` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value4` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value5` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value6` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value7` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value8` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value9` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value10` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value11` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value12` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value13` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value14` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value15` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value16` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value17` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value18` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value19` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value20` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link4` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link5` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link6` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link7` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link8` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link9` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link10` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (1,1,1,1,1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-27 12:22:55','admin','2021-03-27 12:22:55','admin');
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'de','deutsch',1,1,0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `namespace` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`namespace`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  ('core','package-config','{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":false,\"status\":false},\"redaxo\":{\"install\":true,\"status\":true}}},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"debug\":{\"install\":false,\"status\":false},\"install\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":false,\"status\":false},\"project\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"users\":{\"install\":true,\"status\":true}}'),
  ('core','package-order','[\"be_style\",\"be_style\\/redaxo\",\"users\",\"backup\",\"install\",\"media_manager\",\"mediapool\",\"structure\",\"metainfo\",\"structure\\/content\",\"project\"]'),
  ('core','utf8mb4','true'),
  ('core','version','\"5.12.0\"'),
  ('media_manager','interlace','[\"jpg\"]'),
  ('media_manager','jpg_quality','80'),
  ('media_manager','png_compression','5'),
  ('media_manager','webp_quality','85'),
  ('structure','notfound_article_id','3'),
  ('structure','start_article_id','1'),
  ('structure/content','default_template_id','2');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originalname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (1,0,NULL,'image/png','for-logo.png','for-logo.png','55433',512,512,'FOR Logo','2021-03-27 22:47:24','admin','2021-03-27 22:47:24','admin',0);
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool','2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert','2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool','2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s','2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s','2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"80\",\"rex_effect_resize_height\":\"80\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (4,4,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend'),
  (5,5,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2021-03-29 08:18:01','backend','2021-03-29 08:18:01','backend');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templates` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dbtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,NULL,'1.Einleitung','<div>\r\n<h1>Hey! Schön dass du dich für Redaxo interessierst.</h1>\r\n<p>Melde dich doch unter www.deinedomain.de/redaxo im Backend an, klicke dort auf Tempaltes und wähle das Template Header (id 1) aus. Hier findest du weitere Informationen.</p>\r\n</div>\r\n\r\n<!-- Das hier ist die Modul Ausgabe. Überall dort wo dieses Modul platziert wurde, wird dieser Code angezeigt. Sowohl Eingabe als auch Ausgabe verarbeiten HTML, CSS, PHP und JS.\r\n\r\nWeiter gehts im Modul 2.Textzeile (id 2) -->','<!-- Das hier ist ein Modul. Wie bei den Templates könntest du theoretisch den ganzen Inhalt einer Seite in einem Modul pflegen. Viel cooler ist aber für verschiedene Funktionalitäten deiner Website verschiedene Module anzulegen. Du kannst beliebig viele Module beliebig oft auf allen Seiten deiner Website einbinden und kombinieren.\r\n\r\nModule haben Eingabe- und ein Ausgabefeld. Im Eingabefeld definierst du dass, was ein Redakteur im Backend also unter www.deinedomain.de/redaxo sieht. Alles was im Ausgabefeld steht wird dann für die Besucher auf deiner Website ausgegeben.\r\n\r\nScrolle runter zur Modulausgabe. -->','2021-03-27 10:56:37','admin','2021-03-28 21:10:26','admin',NULL,0),
  (2,NULL,'2.Textzeile','<div>\r\n<p>REX_VALUE[1]</p>\r\n</div>\r\n\r\n<!-- Mit REX_VALUE[1] werden die Daten aus der Datenbank ausgelesen. Hat ein Redakteur etwas in das Input eingetragen, wird der Wert genau so auf der Website im Frontend ausgegeben. Probiers aus.\r\n\r\nWeiter geht\'s im Modul 3.Textfeld (id 3)-->','<input type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n\r\n<!-- Hier haben wir ein normales HTML Input platziert. Der Name und der Wert des Inputs ist REX_VALUE[1] damit werden die Daten aus dem Input in der Datenbank gespeichert. \r\n\r\nScrolle runter zur Ausgabe -->','2021-03-27 12:22:47','admin','2021-03-28 21:10:44','admin',NULL,0),
  (3,NULL,'3.Textfeld','<div>\r\n<p>REX_VALUE[1]</p>\r\n</div>','<textarea rows=\"6\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n\r\n<!-- Hier haben wir eine Textarea also ein Textfeld. Es verhält sich genauso wie ein Input. Um ein Textfeld als WYSIWYG Editor zu nutzen gibt es verschiedene AddOns. Das ist übrigens die Grundlage von Redaxo. Der Core ist schlank und flexibel und es gibt ettliche Addons die dir helfen Redaxo genau so einzurichten, wie du es benötigst.\r\n\r\nWeiter geht\'s im Modul 4.Text mit Bild (id 4)-->','2021-03-27 12:38:05','admin','2021-03-28 21:10:57','admin',NULL,0),
  (4,NULL,'4.Text mit Bild','<div>\r\n<img src=\"<?= rex_url::base(\'media/REX_MEDIA[1]\') ?>\" />\r\n<p><small>Der Dateiname des Bildes lautet REX_MEDIA[1]</small></p>\r\n</div>\r\n<div>\r\n<p><strong>REX_VALUE[1]</strong></p>\r\n</div>\r\n\r\n\r\n\r\n\r\n<!-- REX_MEDIA[] gibt den Dateinamen des gewählten Bildes aus. Hier wird es einfach 1zu1 ausgegeben. Du kannst aber auch einen MediaManager Effekt darauf anwenden und das Bild damit automatisch skalieren, beschneiden, färben, oder ähnliches. Außerdem gibt es einen Rewriter der schicke lesbare Bild URLs erzeugt.\r\n\r\nSchau dir als letztes noch das Modul 5.Jetzt bist du dran an. -->','<fieldset class=\"form-horizontal\">\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            <input type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n<!-- Hier haben wir REX_MEDIA Feld um ein Bild auszuwählen. Wie du siehst kannst du verschiedene Felder kombinieren und die Modul-Eingabe nach deinen Wünschen gestalten. \r\n\r\nScrolle runter zur Ausgabe -->','2021-03-27 13:26:50','admin','2021-03-28 21:19:08','admin',NULL,0),
  (5,NULL,'5.Jetzt bist du dran','<!-- Vielleicht findest du es erstmal komisch das Redaxo von Haus aus so schlank daher kommt. Aber genau dass ist der große Vorteil. Du kannst jede Redaxo Installation individuell nach den jeweiligen Anforderungen gestalten.\r\n\r\n- Deine Templates und Module über das Dateisystem pflegen\r\n- Einen WYSIWYG Editor deiner Wahl nutzen\r\n- Daten mit umfangreichen Formulare erfassen und verarbeiten\r\n- Einen Loginbereich mit granularer Rechtverwaltung erstellen\r\n- Komplexe Daten über die API abrufen oder bereitstellen\r\n- Eigentlich alles machen was du willst\r\n\r\nHast du noch Fragen?\r\nAuf Redaxo.org findest du eine großartige Doku, außerdem haben die meisten AddOns eine eigene Hilfeseite.\r\nUnsere Community organisiert sich größtenteils unter dem Namen FriendsOfRedaxo, wir haben einen SlackChannel in dem jede Frage willkommen ist. Besuche uns auf https://redaxo.org/slack/\r\n\r\nUnd jetzt leg los! Viel Spaß -->\r\n','<!-- So, die Grundlagen hast du jetzt kennengelernt. Wir haben noch ein paar weitere Demos, du findest sie im Installer.\r\n- demo_base, eine komplette Website umgesetzt mit Redaxo für Einsteiger\r\n- demo_fullpage, ein Onepager in Redaxo\r\n- demo_onepage, eine umfangreiche Demo mit verschiedenen Ansätzen für einen Onepager\r\n- demo_community, eine Demo für ein Redaxo mit einem geschützten Loginbereich inklusive Rechteverwaltung\r\n\r\n\r\nScrolle runter zur Ausgabe -->','2021-03-28 11:33:46','admin','2021-03-29 08:01:55','admin',NULL,0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,NULL,'Header','<html>\r\n<head>\r\n<title>Redaxo Basic Website</title>\r\n<link rel=\"stylesheet\" href=\"assets/style.css\">\r\n</head>\r\n\r\n<!-- Das hier ist ein Template. Ein Template ist ein guter Ort für Elemente die nicht vom Redakteur bearbeitet werden müssen. CSS und JS Ressourcen, Navigation, etc. Theoretisch reicht ein einziges Template aus. Oft macht es jedoch Sinn, mehrere Templates zu nutzen.\r\n\r\nSchau dir als nächstes das Template Standard (id 2) an. Dort erfährst du mehr.  -->',0,'2021-03-27 12:14:09','admin','2021-03-27 12:14:09','admin','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,NULL,'Standard','<body>\r\nREX_TEMPLATE[id=1]\r\nREX_TEMPLATE[id=4]\r\nREX_ARTICLE[]\r\n</body>\r\n</html>\r\n\r\n\r\n<!-- In diesem Template ist die Checkbox Aktiv angehakt. Damit kann der Redakteur das Template für jede beliebige Unterseite auswählen.\r\n\r\nAußerdem wurde das Template 1 also der Header und das Template 4 (die Navigation) eingebunden. Anschließend wurde der gesamte Inhalt des aktuellen Artikles eingebunden. Wird ein Artikel mit diesem Template im Browser aufgerufen siehst du dort Header, Navigation und Inhalt, also die gesamte Seite. Einfach oder? Schau dir als nächstes das Template Landingpage (id 3) an. Dort erfährst du warum es cool ist mehrere Templates zu haben.  -->',1,'2021-03-27 22:43:05','admin','2021-03-27 22:43:05','admin','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (3,NULL,'Landingpage','REX_TEMPLATE[id=1]\r\n\r\n<link rel=\"stylesheet\" href=\"assets/landingpage.css\">\r\n\r\n<body>\r\n<strong>Diese Seite nutzt das Template Landingpage</strong>\r\nREX_TEMPLATE[id=4]\r\nREX_ARTICLE[]\r\n</body>\r\n</html\r\n\r\n\r\n<!-- Eigentlich sieht das hier fast so aus wie im Template Standard (id 2), aber eben nur fast.\r\n\r\nWie du oben siehst wurde eine weitere CSS Datei eingebunden. Wenn ein Redakteur also in einem Artikel dieses Template wählt, wird für diese Seite auch die oben eingefügte CSS berücksichtigt. Außerdem siehst du auf jeder Seite mit diesem Template den Satz \"Das ist eine Landingpage\" Cool oder?\r\n\r\nDu kannst also wiederkehrende Elemente wie Header, Navigation, Footer oder Elemente die Hardcode auf bestimmten Seiten auftauchen sollen in verschiedene Templates auslagern und nach belieben kombinieren.\r\n\r\nWeiter gehts im Template Navigation (id 4) -->',1,'2021-03-28 21:20:49','admin','2021-03-28 21:20:49','admin','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (4,NULL,'Navigation','<?php\r\n$nav = rex_navigation::factory();\r\n$nav->show();\r\n?>\r\n\r\n<!-- Dieses Template ist nicht aktiv, also kann es der Redakteur nicht für einen Artikel auswählen. Das ist auch gut so, dann hier wird nur eine Navigation ausgegeben, es fehlt also das ganze HTML Gerüst. Wie du vorher gesehen hast, wurde dieses Template in das Template Standard (id 2) und in das Template Landingpage (id 3) eingebunden.\r\n\r\nZusammengefasst: Du kannst beliebig viele Templates anlegen, sie beliebig benennen. Templates die ein Redakteur wählen darf, setzt du auf Aktiv. Templates können untereinander eingebunden werden und an mindestens einer Stelle musst du den Artikel Inhalt ausgeben. Wir haben das im Template Standard (id 3) und im Template Landingpage (id 3) getan.\r\n\r\nDas wars erstmal mit den Templates. Weiter geht es mit den Modulen. Schaue dir das Modul 1.Einleitung (id 1). -->',0,'2021-03-27 12:21:35','admin','2021-03-27 12:21:35','admin','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user`;
CREATE TABLE `rex_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_tries` tinyint(4) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_changed` datetime NOT NULL,
  `previous_passwords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_change_required` tinyint(1) NOT NULL,
  `lasttrydate` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookiekey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_user` WRITE;
/*!40000 ALTER TABLE `rex_user` DISABLE KEYS */;
INSERT INTO `rex_user` VALUES 
  (1,'Administrator',NULL,'admin','$2y$10$pZbxMof0hGl70C9M0Z9F3uVzAavnuhdGBvs8wrlwH6sdeUgA4uRxa',NULL,1,1,'','',NULL,0,'2021-03-26 21:29:01','setup','2021-03-26 21:29:01','setup','2021-03-26 21:29:01','[]',0,'2021-03-29 08:18:10','2021-03-29 08:18:10','73ue8hq0kosnkp8qiihtfpr6vd',NULL,0);
/*!40000 ALTER TABLE `rex_user` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
SET FOREIGN_KEY_CHECKS = 1;
