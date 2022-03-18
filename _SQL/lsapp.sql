-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2019 at 01:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_02_182856_create_posts_table', 1),
(4, '2017_06_03_144733_add_user_id_to_posts', 2),
(5, '2017_06_03_211549_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(18, 'Facebook post one', '<p>Facebook is a&nbsp;<a href=\"https://www.lifewire.com/what-is-social-networking-3486513\">social networking</a>&nbsp;website where users can post comments, share photographs and post links to news or other interesting content on the web, chat live, and watch short-form video. You can even&nbsp;<a href=\"https://www.lifewire.com/order-food-on-facebook-4143353\">order food on Facebook</a>&nbsp;if that&#39;s what you want to do. Shared content can be made publicly accessible, or it can be&nbsp;<a href=\"https://www.lifewire.com/see-who-shared-post-facebook-4580318\">shared</a>&nbsp;only among a select group of&nbsp;<a href=\"https://www.lifewire.com/give-gifts-using-facebook-4103717\">friends or family</a>, or with a single person. Facebook is a&nbsp;<a href=\"https://www.lifewire.com/what-is-social-networking-3486513\">social networking</a>&nbsp;website where users can post comments, share photographs and post links to news or other interesting content on the web, chat live, and watch short-form video. You can even&nbsp;<a href=\"https://www.lifewire.com/order-food-on-facebook-4143353\">order food on Facebook</a>&nbsp;if that&#39;s what you want to do. Shared content can be made publicly accessible, or it can be&nbsp;<a href=\"https://www.lifewire.com/see-who-shared-post-facebook-4580318\">shared</a>&nbsp;only among a select group of&nbsp;<a href=\"https://www.lifewire.com/give-gifts-using-facebook-4103717\">friends or family</a>, or with a single person.&nbsp;Facebook began in February of 2004 as a school-based social network at Harvard University. It was created by Mark Zuckerberg along with Edward Saverin, both students at the college. It wasn&#39;t until 2006 that Facebook opened to anyone 13 years or older and took off, rapidly overtaking MySpace&nbsp;as the most popular social network in the world. Facebook&#39;s success can be attributed to its ability to appeal to both people and businesses and its ability to interact&nbsp;with sites around the web by providing a single login that works across multiple sites.</p>', '2019-11-15 21:34:06', '2019-11-15 21:34:06', 3, 'download_1573835646.png'),
(19, 'Instagram post two', '<p>Similar to&nbsp;<a href=\"https://www.lifewire.com/what-is-facebook-3486391\">Facebook</a>&nbsp;or&nbsp;<a href=\"https://www.lifewire.com/what-exactly-is-twitter-2483331\">Twitter</a>, everyone who creates an Instagram account has a profile and a news feed. When you post a photo or video on&nbsp;<a href=\"https://www.lifewire.com/see-who-viewed-instagram-story-4580189\">Instagram</a>, it will be displayed on your profile. Other users who follow you will see your posts in their own feed. Likewise, you&#39;ll see posts from other users whom you choose to follow. Pretty straight forward, right? It&#39;s like a simplified version of Facebook, with an emphasis on mobile use and visual sharing. Just like other social networks, you can interact with other users on Instagram by following them, being followed by them, commenting, liking, tagging and&nbsp;<a href=\"https://www.lifewire.com/check-messages-on-instagram-4579942\">private messaging</a>. You can even&nbsp;<a href=\"https://www.lifewire.com/save-instagram-photos-4125398\">save the photos you see&nbsp;</a>on Instagram.&nbsp;Instagram is available for free on&nbsp;<a href=\"https://www.lifewire.com/what-is-ios-1994355\">iOS</a>&nbsp;devices, like the iPhone and iPad, as well as&nbsp;<a href=\"https://www.lifewire.com/what-is-google-android-1616887\">Android</a>&nbsp;devices, like phones and tablets from Google, Samsung, etc. It can also be accessed on the web from a computer, but users can only upload and share photos or videos from their devices.</p>', '2019-11-15 21:42:42', '2019-11-15 21:42:42', 3, 'instegram_1573836162.jpg'),
(20, 'Snapchat post three', '<p>Snapchat is both a messaging platform and a social network. It can&#39;t be used from the regular web and exists only as a&nbsp;mobile app&nbsp;<a href=\"https://www.snapchat.com/download\" target=\"_blank\">you can download</a>&nbsp;to your iPhone or Android smartphone. To make a long story kind of short, Snapchat is an app that truly changed how people&nbsp;<a href=\"https://www.lifewire.com/how-to-delete-or-change-snapchat-best-friends-3485996\">interact with friends</a>&nbsp;compared to other popular social networks&nbsp;like Facebook and Twitter. Not everyone gets it &mdash; particularly older adults &mdash; but Snapchat sure is&nbsp;all the rage among the youngest smartphone users, including&nbsp;teens and young adults. Users can chat with their friends by sending them photos, short&nbsp;videos&nbsp;up to 10 seconds long. You can sort of think of it to be like texting with pictures or videos. Text chats and video calls are two other features that were added more recently to the app.</p>', '2019-11-15 21:47:10', '2019-11-15 21:47:10', 3, 'snapchat_1573836430.png'),
(21, 'Twitter post four', '<p><a href=\"https://twitter.com/\" target=\"_blank\">Twitter</a>&nbsp;is an online news and social networking site where people communicate in short messages called tweets.&nbsp;<a href=\"https://www.lifewire.com/what-is-a-tweet-3486211\">Tweeting</a>&nbsp;is posting short messages for anyone who follows you on Twitter, with the hope that your messages are useful and interesting to someone in your audience. Another description of Twitter and tweeting might be&nbsp;<a href=\"https://www.lifewire.com/what-is-microblogging-3486200\">microblogging</a>. Some people use Twitter to discover interesting people and companies online, opting to follow their tweets.&nbsp;In addition to its relative novelty, Twitter&#39;s big appeal is how scan-friendly it is: You can track hundreds of interesting Twitter users and read their content with a glance. This is ideal for our modern attention-deficit world. Twitter employs a purposeful message size restriction to keep things scan-friendly: every microblog tweet entry is limited to 280 characters or less. This size cap promotes the focused and clever use of language, which makes tweets easy to scan, and challenging to write. This size restriction made Twitter a popular social tool.</p>', '2019-11-15 21:49:50', '2019-11-15 21:49:50', 3, 'twitter_1573836590.png'),
(22, 'Whatsapp post five', '<p>WhatsApp is known for its enhanced privacy features like end-to-end encryption, and its free, web-based international calling. Read on to find out how you can leverage the Facebook-owned messaging giant to make free international calls.&nbsp;WhatsApp uses your phone&rsquo;s cellular or Wi-Fi connection to facilitate messaging and voice calling to nearly anyone on the planet, alone or in a&nbsp;<a href=\"https://www.digitaltrends.com/social-media/whatsapp-group-chat-updates/\">group</a>&nbsp;and is especially nice for families and small collaborative workgroups. The app lets you make calls, and send and receive messages, documents, photos, and videos. WhatsApp is completely free &mdash; no fees or subscriptions &mdash; because it uses your phone&rsquo;s 4G, 3G, 2G, EDGE, or Wi-Fi connection instead of your cell plan&rsquo;s voice minutes or text plan, and if you&rsquo;re connected via Wi-Fi, it won&rsquo;t eat into your data plan, either. Its popularity is sustained by its support for worldwide free calling, even if the people chatting are not in the same country.</p>', '2019-11-15 21:52:32', '2019-11-15 21:52:32', 3, 'whatsApp_1573836752.jpg'),
(24, 'Cristiano Ronaldo', '<p>Cristiano Ronaldo dos Santos Aveiro is a Portuguese soccer superstar. By 2003 &mdash; when he was just 16 years old &mdash;&nbsp;<a href=\"https://www.manutd.com/\" onclick=\"return phoenixTrackClickEvent(this, event);\" target=\"_blank\">Manchester United</a>&nbsp;paid &pound;12 million (over $14 million U.S. dollars) to sign him, a record fee for a player of his age.&nbsp;In the 2004 FA Cup final, Ronaldo scored Manchester&#39;s first three goals and helped them capture the championship. He set a franchise record for goals scored in 2008 before&nbsp;<a href=\"https://www.realmadrid.com/en\" onclick=\"return phoenixTrackClickEvent(this, event);\" target=\"_blank\">Real Madrid</a>&nbsp;paid a record $131 million for his services the following year.&nbsp;Among his many accomplishments, he has won a record-tying five Ballon d&#39;Or awards for player of the year and led Portugal to an emotional victory in the 2016 European Championship. In July 2018, Ronaldo embarked on a new phase of his career by signing with Italian Serie A club&nbsp;<a href=\"https://www.juventus.com/en/\" onclick=\"return phoenixTrackClickEvent(this, event);\" target=\"_blank\">Juventus</a>.</p>', '2019-11-15 21:57:43', '2019-11-15 21:57:43', 4, 'cr7_1573837063.jpg'),
(25, 'Sadio Mane', '<p>Sadio Mane is a Senegalese professional footballer who plays as a midfielder for the Premier League club Liverpool and the Senegal national team. Born in Sedhiou, Senegal, he grew up in an impoverished family in the small village of Bambali. He was inspired to pursue a career in football after he saw his country&rsquo;s team perform at their peak at the 2002 World Cup. He later made his debut for the French club Metz. Eventually, he joined the Red Bull Salzburg, an Austrian football club. He led them to win the Austrian Bundesliga as well as the Austrian Cup. He was later signed by Southampton, where he set a record the next year by scoring the fastest hat-trick. In 2016, he transferred to Liverpool for around 34 million euros. This made him the most expensive African player of that time. Mane also played for the Senegalese national team, helping them reach the quarter finals in the 2012 Olympic tournament. He played for the national team at the 2015 and 2017 Africa Cup of Nations as well.</p>', '2019-11-15 22:00:18', '2019-11-15 22:00:18', 4, 'mane_1573837218.jpg'),
(26, 'Leonel Messi', '<p>Lionel Messi was born, 24 June 1987, in Rosario, Argentina to a working-class family. His father was a factory steelworker, and his mother a cleaner. He began playing from an early age, and his talent was soon apparent. However, at the age of 11, Messi was diagnosed with growth hormone deficiency (GHD). This was a condition that stunted growth and required expensive medical treatment, including the use of the drug Human growth hormone. His local club, River Plate were interested in signing Messi but didn&rsquo;t want to pay for his medical treatment. However, Messi was given a trial with Barcelona, and coach Carles Rexach was impressed &ndash; offering Messi a contract (written on a paper napkin!) which included paying for Messi&rsquo;s treatment in Spain. Messi moved to Barcelona with his father and became part of the prestigious FC Barcelona youth academy.</p>', '2019-11-15 22:03:37', '2019-11-15 22:03:37', 4, 'messi_1573837417.jpg'),
(27, 'Paul Pogba', '<p>Paul Pogba is a French footballer who plays for the national French team and the &lsquo;English Premier League&rsquo; club &lsquo;Manchester United.&rsquo; Back in 2016, when he made his return to &lsquo;Manchester United,&rsquo; Paul became the most expensive footballer in the world. He began his professional football career with &lsquo;Manchester United&rsquo; in 2011 and was loaned to the Italian club &lsquo;Juventus&rsquo; the very next year. His roaring performance had his team embarking on a winning streak with four consecutive &lsquo;Serie A&rsquo; titles, two &lsquo;Supercoppa Italiana,&rsquo; and two &lsquo;Coppola Italia.&rsquo; His consistently brilliant performance made him the most promising young football player, and in 2013, he was honored with the &lsquo;Golden Boy&rsquo; award. He was included in the 2015 &lsquo;UEFA Team of the Year,&rsquo; as he played a decisive role in ensuring his team ended up as the runner-up in the 2015 &lsquo;UEFA Champions League.&rsquo; In 2013, he led his national French football team to the title win in the &lsquo;FIFA Under-20 World Cup.&rsquo; He also went home with the &lsquo;Best Player&rsquo; award at the end of the tournament. In the 2014 &lsquo;FIFA World Cup,&rsquo; he was named the &lsquo;Best Young Player&rsquo; of the tournament.</p>', '2019-11-15 22:06:17', '2019-11-15 22:06:17', 4, 'pogba_1573837577.jpg'),
(28, 'EE', '<p>EE</p>', '2019-11-15 22:28:17', '2019-11-15 22:28:17', 5, '2_1573838897.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'meissa bayo', 'bayom@alfredstate.edu', '$2y$10$N8WGImuLy9T9.dTMkASz6eWP27YBBKhQmksWMNYCor1LYi4xVmr/y', 'StUAadY4fHfYIWoHeBSDr4Hk9Icbba7WSaBL1b9E1A2vvVhTZDDGL5jvqTZM', '2019-11-15 03:40:39', '2019-11-15 03:40:39'),
(4, 'Leonel Messi', 'Messi@barcelona.com', '$2y$10$pZ2xiKnmNmSoQSw9tXMhfOmQL2AYCYyRu8rCo2fr6QLdyTkgRl31y', 'MrQWo75R0kmFFkR16NXAYXgbTX9yfgPv4R0pbSkShjKYNVznqq5dhtmcOvLt', '2019-11-15 11:49:53', '2019-11-15 11:49:53'),
(5, 'e', 'e@E.COM', '$2y$10$RKKyMgVkKqJYgnSAuNrhSuaXggw6.mmFRhZyA/38uAS6rGnb3/6Zu', NULL, '2019-11-15 22:27:55', '2019-11-15 22:27:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
