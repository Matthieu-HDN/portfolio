-- Adminer 5.3.0 MySQL 8.4.3 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `sent_at`) VALUES
(1,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'ceci est un test',	'2026-03-19 13:59:09'),
(7,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'ceci est un nouveau test N1 [24/03/2026]',	'2026-03-24 10:30:44'),
(8,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'ceci est un test 2',	'2026-03-24 10:36:04'),
(9,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 10:37:10'),
(10,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 10:39:03'),
(11,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 10:45:43'),
(12,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 10:57:23'),
(13,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 10:59:20'),
(14,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 11:00:54'),
(15,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 11:07:34'),
(16,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test de transport direct',	'2026-03-24 11:09:24'),
(17,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 11:10:12'),
(18,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 11:16:16'),
(19,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test 1',	'2026-03-24 11:17:59'),
(20,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'ceci est un test',	'2026-03-24 11:18:22'),
(21,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'ceci est un test',	'2026-03-24 11:18:24'),
(22,	'Matthieu',	'matthieu.hardouin.pro@gmail.com',	'test',	'2026-03-24 13:39:01');

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260318110727',	'2026-03-18 11:08:25',	115),
('DoctrineMigrations\\Version20260319102706',	'2026-03-19 10:27:44',	108),
('DoctrineMigrations\\Version20260319134038',	'2026-03-19 13:41:09',	36),
('DoctrineMigrations\\Version20260325003600',	'2026-03-25 00:36:25',	102),
('DoctrineMigrations\\Version20260326111043',	'2026-03-26 11:11:21',	82),
('DoctrineMigrations\\Version20260326144031',	'2026-03-26 14:40:40',	127);

INSERT INTO `media` (`id`, `filename`, `original_name`, `mime_type`, `size`, `uploaded_at`, `alt`) VALUES
(2,	'projet-symfony-taiwind-background-69c68bb4ad7d6.jpg',	'projet-symfony-taiwind-background.jpg',	'image/jpeg',	0,	'2026-03-27 13:52:52',	'background projet symfony tailwind'),
(3,	'VScode-glowing-background-69c694572ade1.jpg',	'VScode-glowing-background.jpg',	'image/jpeg',	0,	'2026-03-27 14:29:43',	'interface VS Code'),
(4,	'Deco-2-69ca343b8344b.jpg',	'Deco-2.jpg',	'image/jpeg',	0,	'2026-03-30 08:28:43',	'deco internet'),
(5,	'StudioMH-logo-1-69cbc0958ab0d.jpg',	'StudioMH_logo_1.jpg',	'image/jpeg',	0,	'2026-03-31 12:39:49',	''),
(6,	'StudioMH-logo-3-69cbc0b710622.jpg',	'StudioMH_logo_3.jpg',	'image/jpeg',	0,	'2026-03-31 12:40:23',	''),
(7,	'StudioMH-logo-3-69cbc0c74c802.png',	'StudioMH_logo_3.png',	'image/png',	0,	'2026-03-31 12:40:39',	'');


INSERT INTO `project` (`id`, `title`, `description`, `tags`, `image_url`, `project_url`, `created_at`, `subtitle`, `content`) VALUES
(1,	'Projet 1 - Portfolio Symfony',	'Portfolio personnel développé avec Symfony 6.4, Tailwind CSS et MySQL. Interface thème SF sombre bleuté, administration sécurisée, déploiement sur Railway.',	'Symfony, PHP, Tailwind CSS, MySQL, Git',	'/uploads/media/projet-symfony-taiwind-background-69c68bb4ad7d6.jpg',	'http://127.0.0.1:8000/',	'2026-03-26 16:24:00',	'Développement d\'un portfolio professionnel full-stack',	'<h2 style=\"font-weight:bold;display:flex; align-items:center; gap:0.75rem;\">\n    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#60a5fa\" stroke-width=\"1.5\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n        <circle cx=\"12\" cy=\"12\" r=\"10\"/><path d=\"M12 8v4l3 3\"/>\n    </svg>\n    Contexte du projet\n</h2><br/>\n<p>Dans le cadre d\'une remise à niveau technique après une période d\'inactivité, j\'ai développé ce portfolio de A à Z en une vingtaine de jours. L\'objectif était double : démontrer mes compétences en développement web moderne et disposer d\'un outil de présentation professionnel pour ma recherche d\'emploi.</p>\n<br/>\n<img src=\"/uploads/media/VScode-glowing-background-69c694572ade1.jpg\" alt=\"Portfolio - Vue d\'ensemble\" style=\"width:100%; border-radius:8px; margin: 1.5rem 0;\">\n<br/>\n<h2 style=\"font-weight:bold;display:flex; align-items:center; gap:0.75rem;\">\n    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#60a5fa\" stroke-width=\"1.5\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n        <path d=\"M12 20a8 8 0 1 0 0-16 8 8 0 0 0 0 16z\"/><path d=\"M12 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4z\"/><path d=\"M12 2v2M12 20v2M4.93 4.93l1.41 1.41M17.66 17.66l1.41 1.41M2 12h2M20 12h2M4.93 19.07l1.41-1.41M17.66 6.34l1.41-1.41\"/>\n    </svg>\n    Stack technique\n</h2><br/>\n<p>Le projet repose sur <strong>Symfony 6.4 LTS</strong>, choisi pour sa robustesse et sa large adoption en entreprise. La gestion des données est assurée par <strong>Doctrine ORM</strong> avec une base <strong>MySQL</strong> hébergée localement via Laragon. Le front-end utilise <strong>Tailwind CSS</strong> installé en local via npm, sans CDN, pour une utilisation optimisée en production.</p>\n\n<p>Le versioning est géré avec <strong>Git</strong> et hébergé sur <strong>GitHub</strong>. Le déploiement est assuré par <strong>Railway</strong>, une plateforme cloud moderne permettant un déploiement continu depuis le repository GitHub.</p>\n\n<p><a href=\"https://github.com/Matthieu-HDN/portfolio\" target=\"_blank\" \n   class=\"block w-full text-center py-4 border border-blue-500 rounded-lg text-blue-400 text-sm tracking-widest uppercase hover:bg-blue-500 hover:text-white transition mt-8\">\n    Voir le code source sur GitHub →\n</a></p><br/>\n\n<h2 style=\"font-weight:bold;display:flex; align-items:center; gap:0.75rem;\">\n    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#60a5fa\" stroke-width=\"1.5\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n        <polyline points=\"9 11 12 14 22 4\"/><path d=\"M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11\"/>\n    </svg>\n    Fonctionnalités développées\n</h2><br/>\n\n<p>Le portfolio comprend quatre pages publiques dynamiques : une page d\'accueil avec hero section fullwidth, une page projets avec fiches détaillées, une page compétences avec barres de progression, et un formulaire de contact avec sauvegarde en base de données et envoi d\'email via le composant Mailer de Symfony.</p>\n\n<p>L\'ensemble du contenu est géré depuis une interface d\'administration sécurisée par authentification. Le tableau de bord centralise la gestion des projets, des compétences et des messages reçus via le formulaire de contact.</p>\n<br/>\n<img src=\"/uploads/media/Deco-2-69ca343b8344b.jpg\" alt=\"Portfolio - Interface d\'administration\" style=\"width:100%; border-radius:8px; margin: 1.5rem 0;\">\n<br/>\n<h2 style=\"font-weight:bold;display:flex; align-items:center; gap:0.75rem;\">\n    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"28\" height=\"28\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#60a5fa\" stroke-width=\"1.5\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n        <path d=\"M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z\"/><path d=\"m12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z\"/><path d=\"M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0\"/><path d=\"M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5\"/>\n    </svg>\n    Défis techniques\n</h2><br/>\n\n<p>Ce projet a été l\'occasion de migrer des anciens standards que je maîtrisais — <strong>EasyPHP</strong>, <strong>CakePHP</strong> et <strong>Bootstrap</strong> — vers un environnement moderne. L\'adoption de <strong>Laragon</strong> en remplacement d\'EasyPHP, de <strong>Symfony</strong> en remplacement de CakePHP, et de <strong>Tailwind CSS</strong> en remplacement de Bootstrap a représenté un vrai saut générationnel dans ma pratique.</p>\n\n<p>L\'apprentissage s\'est fait par la pratique, en intégrant dès le premier jour les bonnes habitudes CLI : création de controllers, d\'entités et de migrations via les commandes <code>make:*</code> de Symfony, gestion du serveur de développement via <code>symfony serve</code>, et versioning systématique avec Git. Cette approche par les commandes, plutôt que par des interfaces graphiques, a considérablement accéléré le workflow et la compréhension du framework.</p>'),
(2,	'Projet 2',	'ceci est mon second projet, c\'est une charte graphique',	'infographie, charte graphique',	'https://picsum.photos/800/400',	'http://127.0.0.1:8000/',	'2026-03-20 16:35:00',	NULL,	NULL);

INSERT INTO `skill` (`id`, `name`, `category`, `level`) VALUES
(1,	'PHP',	'Développement',	70),
(2,	'Symfony',	'Développement',	25),
(3,	'Tailwind',	'Développement',	25),
(4,	'Photoshop',	'Infographie',	80),
(5,	'Illustrator',	'Infographie',	80),
(6,	'HTML/CSS',	'Développement',	85),
(7,	'Mise en page / Print',	'Infographie',	90),
(8,	'Identité visuelle',	'Infographie',	90),
(9,	'VS Code',	'Outils',	50),
(10,	'Git / GitHub',	'Outils',	65),
(11,	'JavaScript ES6+',	'Développement',	40),
(12,	'WordPress',	'CMS',	90),
(13,	'Prestashop',	'CMS',	90);

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1,	'matthieu.hardouin.pro@gmail.com',	'[\"ROLE_ADMIN\"]',	'$2y$13$1qEc2gx6OUyxjuHpYF18Z.4Ica8wIN.jbIJZFpkofd35wRB/f81De');

-- 2026-04-07 09:08:29 UTC
