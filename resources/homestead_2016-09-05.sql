# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 0.0.0.0 (MySQL 5.7.14)
# Database: homestead
# Generation Time: 2016-09-05 11:47:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2016_06_01_000001_create_oauth_auth_codes_table',1),
	('2016_06_01_000002_create_oauth_access_tokens_table',1),
	('2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	('2016_06_01_000004_create_oauth_clients_table',1),
	('2016_06_01_000005_create_oauth_personal_access_clients_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('145d3d72ab81ff20f07a2b6dea601c7be3199f331d4a538af7f43ef27e23ad6103a160a87c613e76',1,3,NULL,'[]',0,'2016-09-05 11:24:46','2016-09-05 11:24:46','2016-09-20 11:24:46'),
	('22e909ca257f346e5e4ef98d76ab2dc7e2797aa822000c482014341c3b64aa5c055bf61107478724',1,1,'Consumer2','[]',1,'2016-09-05 11:32:56','2016-09-05 11:32:56','2116-09-05 11:32:56'),
	('34b7bd6dde052d5706fd7cb78f8f5c2ccf249153be9117bf333d9fc1991dd93d2abf488eeead52d1',2,6,NULL,'[\"*\"]',0,'2016-09-05 11:45:36','2016-09-05 11:45:36','2016-09-20 11:45:36');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`)
VALUES
	('09cc9e3d2f0f18c70df6c58eca626db3b3cf91a35e78c6cc01f565e34c437c438ab59806afccb231',1,3,'[\"*\"]',1,'2016-09-05 11:34:46'),
	('188eb46121501ce743b620b6c4309074a5cec613634933423963c33e1a4f5d4f8dd6bc546ab1fadf',1,3,'[\"*\"]',0,'2016-09-05 10:31:40'),
	('1d552fcdaf5f6ee3735b3fff4766b8eba9e166a1d0aa1795d0940375c2a35a8da541d4e98064970b',1,3,'[\"*\"]',1,'2016-09-05 11:31:14'),
	('23f6421e56e9834ec7f6b629413014d1d0290e13b36ae3bdd67112e1f19117f84a79d73b52e36971',1,3,'[\"*\"]',0,'2016-09-05 10:33:59'),
	('57ffb0df15219b3cbd298c425aa22b1f0050596be2cdb554f5e3dd0474824e180c59f536b935cdf7',1,3,'[\"*\"]',1,'2016-09-05 11:32:32'),
	('66740aab39c65c03f7af1a74eb931774b2c5b0d43052b665c450747e770ac2ec345c1c597b230f0a',1,3,'[\"*\"]',0,'2016-09-05 10:34:55'),
	('675da1891509e94c33d57d98ddb84aa343be6f49d91a4383051743593264ad26ca232ce7bd92d2b7',1,3,'[\"*\"]',0,'2016-09-05 10:34:29'),
	('891ff77c3ffcf4d649e85aa6ecfbbd2b8a69dfd2ec40e9b0880d6e977e3b59657cc4d0b1a804af6b',1,3,'[\"*\"]',1,'2016-09-05 11:02:11'),
	('8b958b577fd776e6ff45d3942854a9c41275f8649cfe179ff73cc4c5f87e7662a842abcfc37e99f2',1,3,'[\"*\"]',1,'2016-09-05 10:36:17'),
	('bf092d9cf203e3b4bd52a219e09a1525dc7fde4aaf272054c3d1307e5693173bac19b81452865e7b',1,3,'[\"*\"]',1,'2016-09-05 11:02:36'),
	('e64159219be9257d1f1490428c27d6be10b7e6c6316ac6e7fa82c85858e0c5384d3de66e1c5d3b09',1,3,'[\"*\"]',1,'2016-09-05 11:32:57'),
	('ea8fa8bce854a6511b25cff8da6220798356225050364adb485cca2f18debf1b4d282da70de1948f',1,3,'[\"*\"]',0,'2016-09-05 10:32:37'),
	('f04d9b731096288bc4ae97561d81254913029d1e07ff76736f44dbbc9f98cdd617561a868975a35d',1,3,'[\"*\"]',1,'2016-09-05 10:44:27'),
	('fc83df44868fb11a049f442c56d481ffe8e30143ebfb13a3f5ce1af2ee0b38f396e065e3b9cb2baf',1,3,'[\"*\"]',0,'2016-09-05 10:35:30');

/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'My Application Personal Access Client','InkerQMeQwcv0nhIvGJOS8OGpIAVUVZopmP4GUMd','http://localhost',1,0,0,'2016-09-05 08:00:05','2016-09-05 08:00:05'),
	(2,NULL,'My Application Password Grant Client','n6yG4HhRaoqHq3zniO2odDT8IqukXLukrHUYOn7d','http://localhost',0,1,0,'2016-09-05 08:00:05','2016-09-05 08:00:05'),
	(3,1,'Consumer','JLOiPZHkAI4AdaX0UcXpodL6KjRY10VhiFSOhYXg','http://consumer.dev:8001/callback',0,0,0,'2016-09-05 09:04:35','2016-09-05 09:04:35'),
	(4,NULL,'password','niYTXYfhz3bteSc1KlQGsEYbgTaajEHq97MGfVSO','http://localhost',0,1,0,'2016-09-05 10:45:10','2016-09-05 10:45:10'),
	(5,NULL,'Password Client','wz6KQLdCRrrR0liZFZTE7bdLPUaShDWWArb1g1VV','http://localhost',0,1,0,'2016-09-05 10:45:51','2016-09-05 10:45:51'),
	(6,2,'Test User Client','kmSLLTcazSOXotgAIIkW3CdHPIASKRoRXmrW44Rt','http://someurl.com',0,1,0,'2016-09-05 11:34:41','2016-09-05 11:34:41');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2016-09-05 08:00:05','2016-09-05 08:00:05');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`)
VALUES
	('22fa0ba49910303e719ab43bedb150def3f49a8b35b7b7daa87f211cb0e2edb5162db524b5944bfb','d3f7b831c6174f76386ca445347527fba80a245162e1c00860e39a915e7370de2fdd8b1a66e66690',0,'2016-10-05 10:52:11'),
	('2ac2917114cee3ed357c69bbe1ba874c8e9838c30d88db81e5e82037e8f3cd8b18951ba986ea03c7','32ffd812f3be8e9894f683f79ddac943f2f60fd86652c8565cba676237bc28e5c9eb541eef3d199f',0,'2016-10-05 10:52:36'),
	('2e502dd07cc1c8c7506e9cbee50c9a444d801a6fb964c2f67d637059efe41574887eb812064ed7ba','34b7bd6dde052d5706fd7cb78f8f5c2ccf249153be9117bf333d9fc1991dd93d2abf488eeead52d1',0,'2016-10-05 11:45:36'),
	('50227d858c5aeb6abc1fcc180dd2076e4fcb99ef956f7c24cd48c6a35bf8141b23b4eb9b19616c14','36258d866983f2fdf011d79db041267ef8520e9a1e2e8b46ded14350f5142387483f4c3ad79beb71',0,'2016-10-05 11:43:40'),
	('6c33d3ef1d83d1ba5591760bfaeceaf45207c16039d1f84c0ef142c156cd2060b9817e27e330b68f','267edffa98eba917aff8c287337bf4464a944cc14cc78e412ec416abf3231632bc7acca5b3c14b3c',0,'2016-10-05 11:22:32'),
	('b859846d9485fd8a23fde80a241b6743c8c8c19eb12957e72a918c0ab6081cffceef26eddadbb117','7d5f237654e318c59d68c7dcb5a0a21fbf543f4aae6c6d14c2f64ee4d3f3f8487128761c18bf63bb',0,'2016-10-05 11:44:45'),
	('bb7da90d4112ad46f96dde6a78223f3c71dab28081b508208f235db3f88ff2211001bf143d384605','145d3d72ab81ff20f07a2b6dea601c7be3199f331d4a538af7f43ef27e23ad6103a160a87c613e76',0,'2016-10-05 11:24:46'),
	('bda45548f07cd8a3035f6b703733a12427da31f455da1bcf584a8f75ad0f92255d60c141e325100d','356169519ca858a7943d774608f2157dcffe56fc228b3fac3ef3f7aa3f1601c85b0b7da0f0234519',0,'2016-10-05 11:22:57'),
	('bf79971b1d401c1b9a0acd580ddcdb40004373f68e8ead4fe468b2771272c09372c1c23f20512161','d609d1f84458044c20d26e1fe99b0edafd7841809ac9d9bbccaf3494b3e3a156572d882a371fd6f8',0,'2016-10-05 11:44:20'),
	('d64240d54fa1f71376c11930351a867cbe8a0e85c1d32db7cdf89a54991a502f9968b2c108950e97','0a63998dcc801b2ff6d7760c7a291d04677cd81ec887a9a29338c9a72cd8dba48cebc6b674d8c5e2',0,'2016-10-05 10:34:27'),
	('fc3769aa85cbfb32cd1d7346d787dd4845342d08a792c29f4bc42ba5dfc5254408cc3fbcf73d9d66','611054ba4f7a02dbf33f53e64d5d45ac41cbad9c7df734926cab2682e5ea2d532820acf7b122c62a',0,'2016-10-05 10:26:17'),
	('fde51e8ce0e23da5e33306c290b7fd642f604c43c390f9f1e9880168aceeb02bb65cbfe3a6fc5e60','5b2b000b536c727ee687a2002879b9f1018127d360ea08c0af8c56f600445778667687e1ac4dcd95',0,'2016-10-05 11:21:14');

/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Oliver Lundquist','oliver@oliver.com','$2y$10$XHvLhuQLdwX/F0iN4kZyeOMwqdDfLszN3fibvyCoyE0PO03rKJ9Jy','pqieqTC493w0X6eSFJYwAdQcy1zBvI80Bfr7ofQIWuIRhXJrpnH2Nq7r0OGC','2016-09-05 08:48:20','2016-09-05 11:33:11'),
	(2,'Test User','test@user.com','$2y$10$XHvLhuQLdwX/F0iN4kZyeOMwqdDfLszN3fibvyCoyE0PO03rKJ9Jy',NULL,'2016-09-05 11:33:27','2016-09-05 11:33:27');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
