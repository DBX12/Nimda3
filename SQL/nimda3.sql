SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
  `ssl` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `my_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nimda',
  `my_hostname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nimda',
  `my_servername` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nimda',
  `my_realname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nimda',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO `servers` (`id`, `host`, `port`, `ssl`, `password`, `my_username`, `my_hostname`, `my_servername`, `my_realname`, `active`) VALUES
(1, 'irc.freenode.net', 7000, 1, '', 'Nimda3', 'Nimda3', 'Nimda3', 'noother''s new bot', 1);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `server_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `server_id` (`server_id`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO `server_channels` (`id`, `server_id`, `channel`, `key`, `active`) VALUES
(1, 1, '#nimda', '', 1);

