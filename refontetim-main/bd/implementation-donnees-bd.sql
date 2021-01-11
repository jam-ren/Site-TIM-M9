-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 07:02 PM
-- Server version: 5.7.17
-- PHP Version: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookies_tim`
--

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `cours_id` smallint(6) NOT NULL,
  `cours_session` tinyint(1) NOT NULL,
  `cours_code` char(10) CHARACTER SET latin1 NOT NULL,
  `cours_nom` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cours_type` enum('Création','Programmation','Jeu','Autre') CHARACTER SET latin1 NOT NULL,
  `cours_desc` varchar(5000) CHARACTER SET latin1 DEFAULT NULL,
  `cours_ponderation` varchar(6) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_session`, `cours_code`, `cours_nom`, `cours_type`, `cours_desc`, `cours_ponderation`) VALUES
(1, 1, '582-1M1-MA', 'Création vidéo', 'Création', 'Ce cours initie l’étudiant au traitement des images en mouvement, au traitement du son ainsi qu\'aux bases de la scénarisation linéaire. L’étudiant apprend à utiliser les périphériques associés au traitement du son et de la vidéo et à exploiter de façon créative les fonctions des logiciels de traitement vidéo et sonore. Les techniques de montage (structure narrative, affinage de coupe, correction de couleur, etc.) sont étudiées. L’étudiant apprend à représenter ses idées et ses concepts par le dessin et l’écrit, à l’aide de scénarimages, de synopsis et de scénarios.\r\n<br>\r\nLes particularités de la fonction de travail liées au traitement de la vidéo, du son, ainsi qu\'à la scénarisation sont présentées de même que les compétences techniques et comportementales associées.', '3-2-3'),
(2, 1, '582-1M2-MA', 'Conception graphique et imagerie matricielle', 'Création', 'Ce cours initie l\'étudiant aux rudiments de la conception et de la communication graphique ainsi qu\'au traitement des images fixes matricielles. On y aborde les notions de base sur le langage graphique, la couleur, le mode d’organisation picturale en lien avec le design d’une image ou d’une interface. L’apprentissage d’un processus de conception structuré et de techniques d’idéation permet à l’étudiant de faire émerger des concepts créatifs respectant des objectifs de communication précis et le public cible.\r\n<br>\r\nL\'étudiant est amené à exploiter de façon créative et efficace les diverses fonctions d’un logiciel de traitement de l\'image numérique, à utiliser des techniques de montage et de découpage d’images et à appliquer des effets spéciaux diversifiés. Le cours aborde plus particulièrement les notions de photoréalisme ainsi que des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. De plus, les méthodes de travail pour la réalisation de maquettes graphiques d’un document multimédia sont abordées.\r\n<br>\r\nLes particularités de la fonction de travail liées au design graphique et au traitement des images fixes sont présentées, de même que les compétences techniques et comportementales associées.', '3-3-3'),
(3, 1, '582-1W2-MA', 'Mise en page web ', 'Programmation', 'Dans ce cours, l\'étudiant apprend les techniques de mise en page Web en utilisant les langages de balisage et de feuilles de styles. L’étudiant apprend également à analyser et schématiser l’arborescence d’un site Web, à reproduire des maquettes sous forme de pages Web, et à créer des pages Web en intégrant les différents types de médias. L’introduction à un outil de gestion de code source est également couverte dans ce cours.\r\n<br>\r\nLes particularités de la fonction de travail associées au domaine du Web sont présentées, de même que les compétences techniques et comportementales associées.', '3-2-3'),
(4, 1, '582-1J1-MA', 'Animation et interactivité en jeu', 'Autre', 'Ce cours est consacré aux concepts de base nécessaires à la création d’un jeu numérique. Le cours porte, d’une part, sur l’animation des médias : l’étudiant y apprend à importer et à intégrer des médias dans un environnement de création de jeu. De plus, il se familiarise avec les techniques de création d’animations à partir d’images simples et des feuilles de « sprites ». D’autre part, le cours couvre la gestion des interactions : l’étudiant y est initié aux concepts de base de l’interactivité dans un contexte de jeu, ainsi qu’aux techniques de conception, de codification et de vérification des algorithmes nécessaires à cette fin.\r\n<br>\r\nDans ce cours, l’étudiant est également initié à l’environnement matériel et technologique dans lequel il évoluera tout au long de sa formation et de sa carrière. Les particularités de la fonction de travail liées au domaine du jeu sont présentées, de même que les compétences techniques et comportementales associées.', '3-2-3'),
(5, 2, '582-2M3-MA', 'Effets spéciaux et animation', 'Création', 'Ce cours permet d\'approfondir la formation de l’étudiant en matière de traitement d’images en mouvement et de traitement sonore. L’étudiant poursuit son apprentissage des techniques de prise de vues avec des caméras virtuelles. Il développe sa capacité à utiliser des techniques d’effets spéciaux visuels : animations graphiques, initiation à l’environnement 3D, caméras et lumières virtuelles, composition numérique et techniques d’écran vert.\r\n<br>\r\nL\'étudiant est amené à appliquer adéquatement les techniques d\'optimisation des fichiers sonores et vidéo en fonction de différents modes de diffusion et d’intégration à un projet multimédia.', '2-2-3'),
(6, 2, '582-2M4-MA', 'Conception graphique et imagerie vectorielle', 'Création', 'Dans ce cours, l’étudiant poursuit l’apprentissage des notions liées à la conception, à la communication graphique et au traitement des images fixes vectorielles.\r\n<br>\r\nL’étudiant développe un concept créatif décliné en plusieurs volets. L\'étudiant apprend à utiliser la typographie selon les règles de l’art. Il a l\'opportunité d\'approfondir sa maîtrise de la communication graphique afin de produire un message adapté au public cible.\r\n<br>\r\nPour ce faire, le cours aborde la conception d\'illustrations et des techniques de travail permettant l’intégration harmonieuse d’images dans d’autres logiciels multimédias. L\'étudiant apprendra à créer des agencements graphiques et typographiques comme des logos, des icônes web ainsi que des éléments de jeu en 2D.\r\n<br>\r\nEnfin, l’étudiant est amené à argumenter et justifier ses choix créatifs.', '3-3-3'),
(7, 2, '582-2W2-MA', 'Animation et interactivité Web', 'Programmation', 'Ce cours permet à l\'étudiant d\'acquérir les compétences de base requises pour programmer l\'interactivité de l\'interface-utilisateur d\'une application multimédia en ligne. Les notions abordées dans les cours « 582-1W1 Mise en page Web » et « 582-1J1 Animation et interactivité en jeu » sont approfondies en les appliquant dans un contexte de création de sites Web interactifs, exécutables sur un poste client.\r\n<br>\r\nL\'étudiant apprend à créer et afficher des éléments graphiques par programmation et à appliquer des effets de transition et d\'animation. L\'accent est mis sur la gestion d\'événements, le développement d\'interfaces interactives et l\'adaptabilité multiplateformes. L\'étudiant apprend enfin à installer et utiliser les outils de développement adéquats pour améliorer sa productivité dans le contexte de la chaîne de production Web.', '3-2-3'),
(8, 2, '582-2J2-MA', 'Création de jeu 2D', 'Création', 'Dans ce cours, l’étudiant approfondit la programmation graphique et s’initie aux concepts de base d\'un moteur de jeu. Le cours permet d\'approfondir la maîtrise de la structure d\'affichage ainsi que le contrôle de l\'animation et de l\'interactivité.\r\n<br>\r\nPar la création d\'un prototype simple, l\'étudiant apprend les concepts de base reliés à l\'intégration d\'un jeu ou d\'une application interactive en exploitant les principales classes intégrées d’objets graphiques et médiatiques et en créant ses propres classes d’objets.', '2-2-2'),
(9, 3, '582-3M5-MA', 'Imagerie 3D', 'Création', 'Dans ce cours, l’étudiant est initié au monde de l’imagerie de synthèse. Il est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel de production 3D pour la création d\'images fixes (ex : interface graphique, logo ou autres objets).\r\n<br>\r\nIl apprend les techniques et méthodes de travail liées à la modélisation, à la création et à l’application de matériaux et de textures ainsi qu’aux techniques d’éclairage et de rendu en image. Enfin, des principes de scénarisation liés à l’univers de la 3D sont également abordés.', '3-2-3'),
(10, 3, '582-3C1-MA', 'Design d\'interactivité', 'Création', 'L’étudiant apprend à concevoir des expériences interactives en plaçant les besoins de l’utilisateur au cœur de sa création.\r\n<br>\r\nCe cours transpose les techniques de conception et de communication graphique dans l’univers de l’interactivité. L’étudiant apprend à concevoir les éléments d’une interface multimédia, notamment en ce qui a trait au design de la navigation et de l’interactivité. Il apprend également les méthodes pour intégrer l’expérience utilisateur dans ses projets multimédias.\r\n<br>\r\nCe cours développe chez l’étudiant la capacité de communiquer efficacement à l’utilisateur d’un produit multimédia en fonction de ses besoins, et ce, dans le respect des normes d’utilisabilité et d’accessibilité en vigueur dans l’industrie.\r\n<br>\r\nDifférents types de produits sont mis en valeur tout au long de l’apprentissage, notamment par la création d’interfaces Web faisant appel aux langages de balisage et aux feuilles de styles. L’étudiant approfondit le développement de sa capacité d’analyse et ses compétences à présenter sa création.', '3-2-3'),
(11, 3, '582-2W2-MA', 'Création de sites Web dynamiques', 'Programmation', 'Dans ce cours, les notions acquises dans les cours « 582-1W1 : Mise en page Web » et « 582-2W2 : Animation et interactivité Web » sont approfondies et complétées par des aspects plus avancés, propres à la génération dynamique de pages Web. L’étudiant est d’abord initié à la programmation HTTP de base. Utilisant un langage de programmation, il apprend à traiter les paramètres et entêtes d’une requête HTTP pour générer de façon dynamique la réponse HTTP. De plus, l’étudiant apprend à utiliser la librairie de fonctions essentielles du langage de programmation pour développer un\r\nsite Web.\r\n<br>\r\nEnsuite, l’étudiant apprend à intégrer un site Web dynamique à l’aide d’un gestionnaire de contenu. Pour ce faire, l’étudiant apprend à utiliser les fonctionnalités de base du gestionnaire de contenu. Il apprend aussi à adapter et personnaliser les interfaces à partir de thèmes, le tout en appliquant les apprentissages des cours « 582-1W1 : Mise en page Web », « 582-2W2 : Animation et interactivité Web » et « 582-3C1 : Design d’interactivité » afin de produire des sites Web dont les interfaces suivent les meilleures pratiques de l’utilisabilité et de l’adaptabilité Web. Enfin, l\'étudiant poursuit son apprentissage d’un environnement de travail collaboratif.', '3-3-3'),
(12, 3, '582-2J2-MA', 'Création de jeu 3D', 'Création', 'Ce cours permet à l\'étudiant d\'intégrer différents types de médias à l\'aide des fonctionnalités d\'un logiciel d\'intégration 3D. L\'étudiant est amené à contrôler et à animer les éléments d\'une application multimédia par programmation dans un environnement 3D.\r\n<br>\r\nCe cours initie l’étudiant à l’utilisation d’un environnement d’intégration de la 3D en temps réel. L’accent est d’abord mis sur l’apprentissage des notions de base de la 3D-temps réel et de l’intégration 3D (systèmes de coordonnées, vecteurs, types et propriétés d’objets 3D, caméra, rendu en temps réel, etc.).\r\n<br>\r\nEnsuite l’étudiant est amené à maîtriser les outils et les fonctionnalités de base d’un logiciel d’intégration 3D, afin d\'importer et prendre en charge des éléments 3D, paramétrer les comportements ainsi que programmer l’interactivité.\r\n<br>\r\nEnfin, par la création d’un prototype simple, l’étudiant est à même d’apprendre les concepts et les techniques de base reliées à l’intégration d’un jeu numérique.', '3-2-3'),
(13, 4, '582-4C2-MA', 'Gestion de projets multimédias', 'Autre', 'Ce cours initie l\'étudiant aux rudiments de la gestion d’un projet multimédia. L’étudiant apprend à analyser les besoins liés à la réalisation du projet en termes de ressources humaines, matérielles et budgétaires. À cet effet, il est initié aux méthodes de gestion classiques, ainsi qu’aux méthodes dites « agiles », qu’il sera appelé à utiliser dans le cadre du cours « 582-5W5 : Projet Web en équipe ».\r\n<br>\r\nL\'étudiant est amené à exploiter les fonctions d’un logiciel de gestion de projet en vue d’établir un échéancier de production et d’en faire le suivi. Le cours couvre également les aspects légaux relatifs à la réalisation d’un projet (droits d’auteurs, contrats, etc.). Enfin, l’étudiant développe sa capacité à écrire ou à répondre à un cahier des charges ainsi qu’à rédiger une offre de services professionnels.', '2-1-2'),
(14, 4, '582-4W4-MA', 'Conception d\'interfaces et développement Web', 'Programmation', 'Dans ce cours, l’étudiant poursuit son apprentissage de l’intégration de sites Web dynamiques à l’aide d’un gestionnaire de contenu. L’étudiant apprend à développer par programmation des thèmes personnalisés pour répondre aux besoins spécifiques du design d’interfaces des sites Web. L’étudiant apprend aussi les fonctionnalités avancées du gestionnaire de contenu, lui permettant entre autres à programmer des extensions servant les fonctionnalités des sites Web à développer. De plus, l’étudiant est initié à l’utilisation et à l’intégration par programmation des bases de données.\r\n<br>\r\nCe cours couvre également l’intégration et l’interfaçage entre le langage utilisé du côté du serveur et les technologies utilisées du côté client. Enfin, l’étudiant poursuit son apprentissage des techniques de test pour contrôler la qualité d’un site Web et valider sa conformité en regard des normes et des standards en vigueur.', '3-3-2'),
(15, 4, '360-4J4-MA', 'Création de jeu en équipe', 'Autre', 'Dans ce cours qui s\'appuie sur une pédagogie par projets, l’étudiant réalise un projet d’envergure en équipe de travail. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences acquises afin de réaliser un prototype de jeu numérique. Il franchit, en collaboration avec les membres de son équipe, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Par le fait même, ce cours initie l’étudiant à la communication interpersonnelle et à l’intégration à une équipe de production multimédia.', '2-5-5'),
(16, 4, '582-4PA-MA', 'Interfaces Web réactives et animées', 'Programmation', 'Dans ce cours, l\'étudiant ayant un intérêt plus marqué pour la programmation a la possibilité d\'approfondir les acquis des cours de la séquence Web en s\'initiant à des technologies permettant de réaliser des applications riches du côté du client.\r\n<br>\r\nIl apprendra à utiliser un cadriciel côté client pour produire un site Web dynamique dont l\'interface utilisateur réactive répond en temps réel aux modifications d\'états des données de l\'application. L’intégration d’effets de transition et d\'animation dans l’interface-utilisateur est également couverte.\r\n<br>\r\nEn session 4, l\'étudiant doit choisir entre ce cours et le cours Animation 3D.', '3-2-2'),
(17, 4, '582-4MB-MA', 'Animation 3D', 'Création', 'Ce cours a pour but de permettre à l’étudiant d’approfondir les notions acquises dans le cours « 582-3M5 : Imagerie 3D » et de les appliquer dans la création de scènes élaborées. Le cours approfondit également les techniques de scénarisation couvertes dans les cours précédents.\r\n<br>\r\nL’étudiant apprend notamment les outils et techniques de modélisation organique ainsi que les techniques d’organisation des hiérarchies, de montage des systèmes d’articulation et d’animation. Enfin, l’étudiant apprend à maîtriser les techniques d’optimisation et d’exportation en vue de diffuser les productions 3D pour le Web ou pour des applications 3D en temps réel.\r\n<br>\r\nEn session 4, l\'étudiant doit choisir entre ce cours et le cours Interfaces Web réactives et animées.', '3-2-2'),
(36, 5, '393-5E1-MA', 'Méthodes de recherche et préparation au marché du travail', 'Autre', 'Ce cours permet à l’étudiant d\'acquérir des habiletés en recherche, en organisation et en transmission d’informations numériques. L\'étudiant est initié aux notions de base liées à la veille informationnelle et apprend les fondements de la recherche d’informations par le biais de l’emploi des nouvelles technologies et des sources spécialisées. Il est aussi amené à développer son esprit critique afin d’évaluer la qualité de l’information recueillie.\r\n<br>\r\nLes apprentissages de ce cours visent à permettre à l\'étudiant de se situer quant à son orientation professionnelle et d\'identifier le sujet de son projet de fin d’études et d\'en déterminer les objectifs de recherche en lien avec son choix vocationnel. Il prépare son intégration sur le marché du travail.', '1-2-1'),
(37, 5, '250-5N1-MA', 'Communication et dynamique d\'une équipe de travail', 'Autre', 'Ce cours permet à l\'étudiant de développer ses habiletés en matière de communication interpersonnelle et de mieux interagir dans une équipe multimédia. L\'étudiant est appelé à développer sa capacité à communiquer et à entrer en relation avec autrui sur les plans personnel et professionnel, notamment avec ses collègues de travail ou ses supérieurs immédiats. Les notions essentielles acquises dans ce cours s\'appliquent à la prévention des conflits interpersonnels et à la résolution de problèmes d\'équipe notamment dans le cours de Projet Web. De plus, ce cours initie l\'étudiant à la présentation du produit tout en favorisant les interactions et la collaboration avec les clients.', '1-2-1'),
(38, 5, '582-5W5-MA', 'Projet Web en équipe', 'Programmation', 'Dans ce cours, qui s\'appuie sur une pédagogie par projets, l’étudiant participe à la réalisation d’un produit multimédia en ligne pour un client. C’est l’occasion pour l’étudiant d’appliquer et d’intégrer l’ensemble des compétences et des notions acquises et de s’initier à des méthodes et des techniques de travail professionnelles. Il franchit, en collaboration avec les membres de son équipe de production, toutes les étapes du processus de production d’une telle application, qui sont : la conception du produit, la planification de sa production, la réalisation et l’intégration des médias, la programmation de l’interactivité, la réalisation des tests pour contrôler la qualité du produit ainsi que la rédaction du guide utilisateur et la présentation du produit fini. Il est également amené à mettre en pratique une approche client basée sur un climat de confiance. Le cours permet également la mise en application de différents outils facilitant la réalisation de projet : communication entre équipiers, gestion de code source, gestion des bogues. De plus, une attention particulière est portée à la relation avec le client ainsi qu’à la prévention et à la gestion des conflits entre coéquipiers.', '2-5-5'),
(39, 5, '582-5JB-MA', 'Expérimentation en jeu - volet Création', 'Création', 'Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées ou des techniques complexes de création des médias pour le jeu.\r\n<br>\r\nL\'étudiant plus intéressé par les aspects créatifs liés au jeu a l\'occasion d\'acquérir une spécialisation en étudiant des techniques d’effets visuels avancés pour le jeu numérique tels que : effets sur des images en temps réel, ajout de particules, de réflexions, d\'aberrations chromatiques, éclairages dynamiques et statiques, effets de dessin animé, optimisation de rendus pour appareil mobile, réalité virtuelle, etc.\r\n<br>\r\nEn 5e session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet Programmation.', '3-3-2'),
(40, 5, '582-5JA-MA', 'Expérimentation en jeu - volet Programmation', 'Programmation', 'Dans ce cours, l\'étudiant complète sa formation en jeu numérique en apprenant des notions avancées en programmation de jeu.\r\n<br>\r\nL\'étudiant davantage intéressé par les aspects techniques du jeu a l\'occasion d\'acquérir une spécialisation par l’apprentissage d’aspects avancés, liés à la programmation de jeux numériques parmi les suivants : jeu multijoueurs, réalité virtuelle, jeu pour appareil mobile avec gyroscope, intelligence artificielle, etc.\r\n<br>\r\nEn 5e session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet Création.', '3-3-2'),
(41, 5, '582-5JA-MA', 'Technologies émergentes et avancées - volet Création', 'Création', 'Dans ce cours, l’étudiant davantage intéressé par les aspects créatifs du multimédia est amené à explorer et tester des approches novatrices et émergentes en multimédia telles que : système de captation de mouvement, réalité virtuelle, réalité augmentée, environnements immersifs et habillage vidéo, vidéo 360 degrés.\r\n<br>\r\nEn 5e session, l’étudiant doit choisir entre ce cours et le cours Technologies émergentes et avancées – volet Programmation.', '2-2-2'),
(42, 5, '582-5MB-MA', 'Technologies émergentes et avancées - volet Programmation', 'Programmation', 'Dans ce cours, l’étudiant plus intéressé par les aspects techniques du multimédia est amené à explorer, tester et intégrer les nouvelles tendances en matière de programmation de produits multimédias interactifs. Ce cours est donc axé sur la démonstration et l’apprentissage des toutes dernières technologies en émergence dans le domaine.\r\n<br>\r\nEn 5e session, l’étudiant doit choisir entre ce cours et le cours Expérimentation en jeu – volet Création.', '2-2-2'),
(43, 6, '582-6N3-MA', 'Stage', 'Autre', 'Le stage en entreprise complète la formation de l’étudiant en lui permettant d\'intégrer et de mettre en application ses différents acquis dans le milieu professionnel. L’étudiant joint une véritable équipe de travail en multimédia, ce qui lui permet également de réaliser une synthèse de ses compétences par la réalisation de mandats concrets et réels et de tâches spécifiques visant à répondre aux besoins de l’entreprise et de ses clients.', '1-18-1'),
(44, 6, '582-6N2-MA', 'Projet de fin d\'études', 'Autre', 'Ce cours permet à l’étudiant de se spécialiser dans un domaine de son choix par le biais d’un projet de recherche en multimédia qu\'il a identifié à la session précédente, dans le cours « 393-5E1 Méthodes de recherche et préparation au marché du travail ». L\'étudiant planifie son projet de recherche, vérifie sa faisabilité sur le plan technique et le réalise. Par la suite, il doit concevoir et réaliser une production multimédia qui présente les résultats de son projet de recherche. La réalisation et la présentation de cette production multimédia constituent l\'Épreuve synthèse de programme (ÉSP). À travers l\'ÉSP, l\'étudiant doit démontrer qu\'il a atteint les compétences artistiques et techniques attendues d\'un intégrateur multimédia et qu’il a les attitudes nécessaires à son intégration sur le marché du travail.', '1-7-5');

-- --------------------------------------------------------

--
-- Table structure for table `prealables`
--

CREATE TABLE `prealables` (
  `pre_id` tinyint(4) NOT NULL,
  `pre_cours_id` smallint(6) NOT NULL,
  `pre_info` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `prealables`
--

INSERT INTO `prealables` (`pre_id`, `pre_cours_id`, `pre_info`) VALUES
(2, 5, '[{\"nom\": \"Création vidéo\", \"code\": \"582-1M1-MA\", \"type\": \"Relatif\"}]'),
(3, 6, '[{\"nom\": \"Conception graphique et imagerie matricielle\", \"code\": \"582-1M2-MA\", \"type\": \"Relatif\"}]'),
(4, 7, '[{\"nom\": \" Mise en page Web\", \"code\": \"582-1W1-MA\", \"type\": \"Relatif\"}, {\"nom\": \"Animation et interactivité en jeu\", \"code\": \"582-1J1-MA\", \"type\": \"Relatif\"}]'),
(5, 8, '[{\"nom\": \"Animation et interactivité en jeu \", \"code\": \"582-1J1-MA\", \"type\": \"Relatif\"}]'),
(6, 9, '[{\"nom\": \"Conception graphique et imagerie vectorielle \", \"code\": \"582-2M4-MA\", \"type\": \"Relatif\"}]'),
(7, 10, '[{\"nom\": \"Conception graphique et imagerie vectorielle\", \"code\": \"582-2M4-MA\", \"type\": \"Relatif\"}]'),
(8, 11, '[{\"nom\": \"Animation et interactivité Web\", \"code\": \"582-2W2-MA\", \"type\": \"Relatif\"}]'),
(9, 12, '[{\"nom\": \"Création de jeu 2D\", \"code\": \"582-2J2-MA\", \"type\": \"Relatif\"}]'),
(10, 14, '[{\"nom\": \" Création de sites Web dynamiques\", \"code\": \"582-3W3-MA\", \"type\": \"Absolu\"}, {\"nom\": \" Création de jeu 3D\", \"code\": \"582-3J3-MA\", \"type\": \"Relatif\"}]'),
(12, 16, '[{\"nom\": \"Création de sites Web dynamiques\", \"code\": \"582-3W3-MA\", \"type\": \"Relatif\"}]'),
(13, 17, '[{\"nom\": \"Imagerie 3D\", \"code\": \"582-3M5-MA\", \"type\": \"Relatif\"}]'),
(14, 37, '[{\"nom\": \"Projet Web en équipe\", \"code\": \"582-5W5-MA\", \"type\": \"Corequis\"}]'),
(15, 38, '[{\"nom\": \"Communication et dynamique d’une équipe de travail\", \"code\": \"350-5N1-MA\", \"type\": \"Corequis\"}, {\"nom\": \"Conception d\'interfaces et développement Web\", \"code\": \"582-4W4-MA\", \"type\": \"Relatif\"}]'),
(16, 39, '[{\"nom\": \"Création de jeu en équipe\", \"code\": \"360-4J4-MA\", \"type\": \"Relatif\"}]'),
(17, 41, '[{\"nom\": \"Création de jeu en équipe\", \"code\": \"360-4J4-MA\", \"type\": \"Relatif\"}]'),
(26, 43, '[{\"nom\": \"Création de jeu en équipe\", \"code\": \"360-4J4-MA\", \"type\": \"Absolu\"}, {\"nom\": \"Projet Web en équipe\", \"code\": \"582-5W5-MA\", \"type\": \"Absolu\"}]'),
(27, 44, '[{\"nom\": \"Méthodes de recherche et préparation au marché du travail \", \"code\": \"393-5E1-MA\", \"type\": \"Relatif\"}, {\"nom\": \"Création de jeu en équipe\", \"code\": \"360-4J4-MA\", \"type\": \"Absolu\"}, {\"nom\": \"Projet Web en équipe\", \"code\": \"582-5W5-MA\", \"type\": \"Absolu\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `profs`
--

CREATE TABLE `profs` (
  `profs_id` smallint(6) NOT NULL,
  `profs_nom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `profs_photo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `profs_email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `profs_desc_courte` varchar(280) CHARACTER SET latin1 DEFAULT NULL,
  `profs_desc_longue` varchar(5000) CHARACTER SET latin1 DEFAULT NULL,
  `profs_lien` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `profs_specialite` enum('Programmation','Création','Autre') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profs`
--

INSERT INTO `profs` (`profs_id`, `profs_nom`, `profs_photo`, `profs_email`, `profs_desc_courte`, `profs_desc_longue`, `profs_lien`, `profs_specialite`) VALUES
(1, 'Dominic Girard', 'dominic-girard.jpg', 'dgirard@cmaisonneuve.qc.ca', 'Je suis un passionné de création! Que ce soit pour un site Web, un jeu vidéo, ou un environnement physique interactif; la conception et le design c\'est vraiment ce qui m\'allume!', 'Je suis un passionné de création! Que ce soit pour un site Web, un jeu vidéo, ou un environnement physique interactif; la conception et le design c\'est vraiment ce qui m\'allume!\r\n<br>\r\nJ\'ai étudié à l\'Université Simon Fraser à Vancouver en Colombie-Britannique où j\'ai obtenu un Baccalauréat en Arts Interactifs (BSc). J\'ai aussi obtenu plusieurs prix et reconnaissances dont une prestigieuse bourse collective du Conseil des Arts du Maurier pour la production d\'une installation interactive qui a fait le tour de festivals d\'arts numériques au Canada.\r\n<br>\r\nEn 2003, j\'ai commencé à enseigner, un peu par hasard, mais c\'est vite devenu une passion pour moi. Aujourd\'hui, j\'adore mon boulot et je suis fier de faire partie de l\'équipe du département de multimédia du Collège de Maisonneuve et de partager au quotidien ma passion pour la création interactive.\r\n<br>\r\nBien évidemment, c\'est dans les cours de design du programme TIM que vous allez me croiser principalement, mais vous trouverez aussi à l\'occasion dans certains cours d\'infographie et de programmation Web.\r\n<br>\r\nMes champs d\'intérêt principaux sont : la conception et l\'ergonomie des interfaces interactives ainsi que la création d\'environnements physiques interactifs.\r\n<br>\r\nAu plaisir de vous rencontrer!\r\n', 'https://www.linkedin.com/in/dominic-girard-b1b21922/', 'Création'),
(2, 'Eddy Martin', 'eddy-martin.jpg', 'emartin@cmaisonneuve.qc.ca', 'Des études en mathématiques informatiques (B. Sc) et une maîtrise en traitement d\'images à l\'UQAM m\'ont amené à m\'intéresser plus particulièrement à la programmation Web.\r\n', 'Des études en mathématiques informatiques (B. Sc) et une maîtrise en traitement d\'images à l\'UQAM m\'ont amené à m\'intéresser plus particulièrement à la programmation Web.\r\n<br>\r\nJ\'ai côtoyé l\'industrie pendant plusieurs années comme programmeur analyste pour finalement trouvé ma vocation en enseignement au Collège de maisonneuve.\r\n<br>\r\nLes sujets qui m\'intéresse touchent directement la création de sites Web adaptatifs du côté client et serveur.\r\n<br>\r\nJ\'enseigne au département TIM depuis 2001.', 'https://www.linkedin.com/in/eddymartin/', 'Programmation'),
(3, 'Martin St-Pierre', 'martin-st-pierre.jpg', 'mstpierre@cmaisonneuve.qc.ca', 'J’évolue dans le domaine professionnel depuis 1988, année où j’ai fait mes débuts dans l’univers cinématographique canadien.', 'J’évolue dans le domaine professionnel depuis 1988, année où j’ai fait mes débuts dans l’univers cinématographique canadien.\r\n<br>\r\nRécipiendaire de nombreuses bourses et subventions (Conseil des Arts du Canada, Conseil des Arts du Québec, Sodec, Téléfilm Canada, etc.), j’ai réalisé et produit une gamme de films, dont celui de Rick Raxlen, The Strange Blues of Cowboy Red, un long métrage qui fut lancé au Festival des films du Monde de Montréal en 1995.\r\n<br>\r\nParallèlement au cinéma, j’ai développé une aptitude au design graphique et Web, et cela, dès 1994 avec, en autres, la construction du site de la défunte société Odyssée Internet.\r\n<br>\r\nTrois ans plus tard, j’ai fondé ma compagnie, SWING DESIGN, qui encore à ce jour, a pignon sur rue et se spécialise en concepts d’animations Flash. C’est grâce à cette expertise que j’enseigne le multimédia au Collège de Maisonneuve depuis 1997. Je termine actuellement une maîtrise en communication, profil média à l’UQAM.', 'https://www.linkedin.com/in/martin-st-pierre-b36a0b20/', 'Création'),
(4, 'Vagharshak Touroussian', 'vagharshak-toroussian.jpg', 'vtoroussian@cmaisonneuve.qc.ca', 'J’enseigne au Collège de Maisonneuve depuis 10 ans où j’occupe d’ailleurs le rôle de coordonnateur du programme des Techniques d’intégration multimédia.', 'J’enseigne au Collège de Maisonneuve depuis 10 ans où j’occupe d’ailleurs le rôle de coordonnateur du programme des Techniques d’intégration multimédia.\r\n<br>\r\nJ’ai fait mes études à l’Université de Montréal et obtenu une maîtrise en traitement de l’image. Ma spécialité est en programmation sur support et j’entends vous faire apprécier l’incroyable potentiel de ce volet multimédia.\r\n<br>\r\nCe qui vous attend : des travaux pratiques sous forme de jeux (casse-tête, quêtes, etc.) et la création de prototypes de jeux avec Virtools. Message à ceux qui aiment bien équilibrer travail et activité physique : je suis toujours disponible pour une partie de soccer… à bon entendeur salut!', 'https://jeu.tim.cmaisonneuve.qc.ca/galerie_unity/index.html', 'Programmation'),
(5, 'Mathieu Dionne', 'mathieu-dionne.jpg', 'mdionne@cmaisonneuve.qc.ca', 'Prof « Made in Maisonneuve! » Je hante ces corridors depuis si longtemps… Eh oui…j’ai fait mes études collégiales ici même!', 'Prof « Made in Maisonneuve! » Je hante ces corridors depuis si longtemps… Eh oui…j’ai fait mes études collégiales ici même! J’y suis revenu après mes études universitaires à l’UQAM, en communication, concentration multimédia interactif.\r\n<br>\r\nJ’enseigne la création de jeux vidéo et l’environnement sonore aux étudiants du programme TIM depuis 2002. Du point de vue professionnel, mes réalisations incluent notamment la mise au point du cours «Développement de l’enfant et de l’adolescent», pour le compte du Cégep @ distance, qui a remporté le prix de l’excellence en conception pédagogique de l’ACED en 2003, le site Web de Kid A, un groupe hommage à Radiohead, et bien d’autres encore.', 'https://jeu.tim.cmaisonneuve.qc.ca/galerie_unity/index.html', 'Autre'),
(6, 'Grégory Bony', 'gregory-bony.jpg', 'gbony@cmaisonneuve.qc.ca', 'Ma passion pour la retouche d’image et l’animation 2D et 3D a commencé très tôt, un peu après le biberon mais bien avant mes études dans ce domaine.', 'Ma passion pour la retouche d’image et l’animation 2D et 3D a commencé très tôt, un peu après le biberon mais bien avant mes études dans ce domaine. Ma formation en France (Bac Arts Appliqués et BTS en Expression Visuelle) m’a permis de développer ma créativité et d’approfondir les techniques traditionnelles (arts plastiques, dessin anatomique, histoire de l’art, perspective, composition …).\r\n<br>\r\nJ’ai complété par la suite un Bac en Design Graphique à l’UQAM qui m’a permis entre autre de réaliser quelques courts métrages. Art, multimédia, jeu, film…. Je goûte à toutes sortes de projets personnels comme professionnels et vous êtes les premiers à profiter de ces expériences à travers mes cours.\r\n<br>\r\nLe lien entre les arts plastiques et la création numérique me semble important. La création a commencé bien avant l’invention de l’ordinateur. La qualité de nos réalisations ne réside pas tant dans l’outil que dans l’être humain qui l’utilise.\r\n<br>\r\nMalgré tout, nous sommes chanceux : quel outil au potentiel incroyable !!! Et c’est cet univers magique que nous allons explorer ensemble à l’aide de logiciels comme Maya, After effects ou Photoshop.\r\n<br>\r\nUne recette dans laquelle je trouve mon équilibre: Une bonne dose de sport (aïkido, taï chi, escalade, basketball, badminton, vélo …), un soupçon de musique (djembé …), une pincée d’Art (dessin, peinture, calligraphie, photographie …), le tout saupoudré d’amour et de voyage !', 'https://www.linkedin.com/in/gr%C3%A9gory-bony-88bb508/', 'Création'),
(7, 'Vincent Leblanc', 'vincent-leblanc.jpg', 'vleblanc@cmaisonneuve.qc.ca', 'Formé à l’ÉTS avec une spécialisation en ordinateurs et automatismes, j\'ai ensuite obtenu ma maîtrise en Sciences de la communication à l’Université de Montréal.', 'Formé à l’ÉTS avec une spécialisation en ordinateurs et automatismes, j\'ai ensuite obtenu ma maîtrise en Sciences de la communication à l’Université de Montréal, où mon mémoire portait sur les interfaces personne-machine.\r\n<br>\r\nJ\'ai travaillé plusieurs années dans le secteur privé pour le compte de différentes entreprises, principalement à titre de programmeur, d\'intégrateur ou de concepteur d\'interfaces.\r\n<br>\r\nJ’enseigne au Collège de Maisonneuve depuis l’automne 2001 et j\'ai eu la chance d\'y donner un vaste assortiment de cours, à tel point que je n\'arrive plus à me rappeler leur nombre!\r\n<br>\r\nCes dernières années, j\'ai donné plus fréquemment des cours de programmation Web (HTML, CSS, Javascript) et d\'image numérique (Photoshop).\r\n', 'https://www.linkedin.com/in/vincent-leblanc-9a750b/', 'Programmation'),
(8, 'Camille Semaan', 'camille-semaan.jpg', 'csemaan@cmaisonneuve.qc.ca', 'Ma vocation : communiquer connaissances et savoir-faire.', 'Ma vocation : communiquer connaissances et savoir-faire.\r\n<br>\r\nMa devise : \'Comprendre et ne pas juger\' (Georges Simenon)\r\n<br>\r\nOn a tout notre temps.\r\n', 'https://www.linkedin.com/in/csemaan/', 'Programmation'),
(23, 'Manon Bertrand', 'manon-bertrand.jpg', 'mbertrand@cmaisonneuve.qc.ca', 'Je me rappelle d’être tombée dans la potion magique lorsque j’étais petite. Ensuite, j\'ai visité tous les pays avec Tintin. Et, ça n\'a plus cessé. De Giacometti à Es Devlin (scénographe) j’ai parcouru le monde des images, des mots et de la musique.', 'Je me rappelle d\'être tombée dans la potion magique lorsque j\'étais petite. Ensuite, j\'ai visité tous les pays avec Tintin. Et, ça n\'a plus cessé. De Giacometti à Es Devlin (scénographe) j\'ai parcouru le monde des images, des mots et de la musique. Ce monde est ma passion parce que: <br> « Avec l\'amour, l\'amitié et la fraternité d\'action, l\'art est le plus court chemin d\'un homme à un autre. » <br> - Claude Roy\r\n\r\n', 'https://www.linkedin.com/in/bertrand-manon-20aa7427/', 'Création'),
(24, 'Ahmed Boudjani ', 'ahmed-boudjani.jpg', 'aboudjani@cmaisonneuve.qc.ca', 'Animation Web depuis la «préhistoire» (Flash des années 2000) à aujourd\'hui. ActionScript 2.0 et 3.0 (orienté objet), Animations pour le Web avec JavaScript', 'Animation Web depuis la «préhistoire» (Flash des années 2000) à aujourd\'hui.<br>\r\nActionScript 2.0 et 3.0 (orienté objet); Animations pour le Web avec JavaScript, jQuery, HTML5, CSS3; Unity 2D/3D avec C# (anciennement JavaScript); Physique dans les jeux vidéos (chutes, forces, collisions); Systèmes de particules de Unity; Intelligence Artificielle (« AI »): « Machine Learning » et « Reinforcement Learning » (PPO); Intelligence artificielle dans Unity (ML-agents)...<br>\r\nScience et Science-Fiction (Arthur C. Clark est mon auteur préféré)', 'http://science-et-science-fiction.blogspot.com/', 'Autre'),
(25, 'Denis Pellerin', 'denis-pellerin.jpg', 'dpellerin@cmaisonneuve.qc.ca', 'DEC en lettres et communications au collège Jean-de-Brébeuf, récipiendaire de 3 prix d\'excellence en production cinéma.', 'DEC en lettres et communications au collège Jean-de-Brébeuf, récipiendaire de 3 prix d\'excellence en production cinéma et télévision.\r\nBAC en Production cinématographique à l\' université Concordia, récipiendaire du \"Fine Arts Dean\'s Award 1989\"\r\nDEC en Techniques d\'intégration Multimédia à l\'Institut des technologies de l\'information (ITI)\r\n<br>\r\nDepuis 2001: enseignant au TIM: Image numérique et Design graphique, Scénarisation, création Vidéo numérique, Animation et effets spéciaux\r\n<br>\r\nAu préalable, 12 ans comme réalisateur en audiovisuel (publicités, vidéoclips musicaux, corporatifs, documentaires)\r\n', NULL, 'Création'),
(26, 'David Ross', 'david-ross.jpg', 'dross@cmaisonneuve.qc.ca', 'David Ross détient un baccalauréat en arts visuels de l’Université Concordia et une maitrise du School of the Art Institute de Chicago.', 'David Ross détient un baccalauréat en arts visuels de l’Université Concordia et une maitrise du School of the Art Institute de Chicago. Il enseigne en design et en intégration multimédia au Collège de Maisonneuve\r\nde Montréal depuis 2011. Au préalable, il est impliqué dans le milieu des arts visuels comme coordonnateur d\'expositions en art contemporain.\r\n<br>\r\nEn tant qu\'artiste, il présente son travail lors d\'expositions dans plusieurs villes en Amérique du nord ainsi qu\'en France, au Portugal et au Japon. \r\n\r\n\r\n\r\n\r\n', 'https://www.linkedin.com/in/david-ross-52316287/', 'Création'),
(27, 'Johanne Massé', 'johanne-masse.jpg', 'jmasse@cmaisonneuve.qc.ca', 'Je suis gestionnaire de projet et architecte-paysagiste de formation mais, paradoxalement, passionnée depuis toujours par les 0 et les 1...', 'Je suis gestionnaire de projet et architecte-paysagiste de formation mais, paradoxalement, passionnée depuis toujours par les 0 et les 1... J\'ai cofondé à la fin des années 80 une entreprise spécialisée dans le développement de logiciels pour l\'aménagement du territoire.\r\n<br>\r\nÀ l\'aube du nouveau millénaire, j\'ai fait le grand saut et réorienté ma carrière en multimédia. J’ai fait mes débuts à titre de consultante et j\'exerce la profession d\'enseignante depuis 2001. Vous devinerez par la maxime d\'introduction que j\'ai un petit faible pour la gestion de projets multimédias.\r\n<br>\r\nMais ce n\'est pas mon seul dada, je me passionne aussi pour les logiciels-auteurs et la programmation, notamment Flash et ActionScript. Parallèlement à mes activités d\'enseignante, je poursuis également une maîtrise en pédagogie.', 'https://www.linkedin.com/in/johanne-mass%C3%A9-tim/', 'Programmation'),
(28, 'Caroline Martin', 'caroline-martin.jpg', 'cmartin@cmaisonneuve.qc.ca', 'On me traite de Geek car je programme en PHP depuis pratiquement sa création et bien avant sa réelle utilisation dans les sites Web.', 'On me traite de Geek car je programme en PHP depuis pratiquement sa création et bien avant sa réelle utilisation dans les sites Web. J\'aime, voire je suis passionnée par la programmation informatique. Je joue à D&D\r\n \r\nMais, je ne suis pas que cela !', 'https://www.linkedin.com/in/caroline-martin-4bb1b917/', 'Programmation');

-- --------------------------------------------------------

--
-- Table structure for table `profs_cours`
--

CREATE TABLE `profs_cours` (
  `pc_id` smallint(6) NOT NULL,
  `prf_id` smallint(6) NOT NULL,
  `crs_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profs_cours`
--

INSERT INTO `profs_cours` (`pc_id`, `prf_id`, `crs_id`) VALUES
(1, 1, 14),
(2, 1, 10),
(3, 2, 16),
(4, 2, 11),
(5, 3, 1),
(6, 3, 5),
(7, 4, 15),
(8, 4, 40),
(9, 6, 9),
(10, 6, 17),
(11, 7, 11),
(12, 8, 38),
(13, 8, 16),
(14, 23, 38),
(15, 23, 10),
(18, 24, 15),
(19, 25, 1),
(20, 25, 5),
(21, 26, 2),
(22, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `prj_id` smallint(6) NOT NULL,
  `prj_nom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prj_img` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `prj_desc` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `prj_crs_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`prj_id`, `prj_nom`, `prj_img`, `prj_desc`, `prj_crs_id`) VALUES
(1, 'Programmation', 'coding.jpg', 'Programmation de sites Web', 38),
(2, 'Design', 'design.jpg', 'Design d\'interfaces pour un site Web', 14),
(3, 'Montage vidéo', 'montage-video.jpg', 'Projet de montage vidéo en équipe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vie_etudiante`
--

CREATE TABLE `vie_etudiante` (
  `ve_id` smallint(6) NOT NULL,
  `ve_nom` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ve_img` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `ve_desc` varchar(500) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vie_etudiante`
--

INSERT INTO `vie_etudiante` (`ve_id`, `ve_nom`, `ve_img`, `ve_desc`) VALUES
(1, 'TIM Noël', 'noel-tim.jpg', 'Célébration de la fête de Noël organisée dans le département.'),
(2, 'TIM XX', 'party-tim.jpg', 'Pour célébrer les 20 ans de la fondation du programme au Collège, le département a organisé une fête où les professeurs et étudiants (courants ou anciens) étaient invités.'),
(3, 'TIM Arcade', 'tim-arcade.JPG', 'Soirée rétro organisée par le comité étudiant où les étudiants ont pu se déguiser et jouer à des jeux vidéos ensemble.'),
(4, 'TIM Talk', 'tim-talk.jpg', 'Activité organisée par le comité étudiant qui a permis aux étudiants de se rassembler et d\'échanger au sujet d\'événements courants et d\'innovations dans le domaine.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`);

--
-- Indexes for table `prealables`
--
ALTER TABLE `prealables`
  ADD PRIMARY KEY (`pre_id`),
  ADD KEY `pre_cours_id` (`pre_cours_id`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`profs_id`);

--
-- Indexes for table `profs_cours`
--
ALTER TABLE `profs_cours`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `prf_id` (`prf_id`),
  ADD KEY `crs_id` (`crs_id`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`prj_id`),
  ADD KEY `prj_crs_id` (`prj_crs_id`);

--
-- Indexes for table `vie_etudiante`
--
ALTER TABLE `vie_etudiante`
  ADD PRIMARY KEY (`ve_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `prealables`
--
ALTER TABLE `prealables`
  MODIFY `pre_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `profs`
--
ALTER TABLE `profs`
  MODIFY `profs_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `profs_cours`
--
ALTER TABLE `profs_cours`
  MODIFY `pc_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `prj_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vie_etudiante`
--
ALTER TABLE `vie_etudiante`
  MODIFY `ve_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `prealables`
--
ALTER TABLE `prealables`
  ADD CONSTRAINT `prealables_ibfk_1` FOREIGN KEY (`pre_cours_id`) REFERENCES `cours` (`cours_id`);

--
-- Constraints for table `profs_cours`
--
ALTER TABLE `profs_cours`
  ADD CONSTRAINT `profs_cours_ibfk_1` FOREIGN KEY (`prf_id`) REFERENCES `profs` (`profs_id`),
  ADD CONSTRAINT `profs_cours_ibfk_2` FOREIGN KEY (`crs_id`) REFERENCES `cours` (`cours_id`);

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`prj_crs_id`) REFERENCES `cours` (`cours_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
