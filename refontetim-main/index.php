<?php
    session_start();
    include('lib/site-tim-bd.config.php'); 
    include("lib/mybd2.cls.php");
    include("lib/cours.cls.php");
    include("lib/prof.cls.php");

    $cookie_splash = "noSplash";
    setcookie($cookie_splash, time() + (86400));
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>TIM Maisonneuve - Techniques d'intégration multimédia du Collège de Maisonneuve</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Site officiel de la technique d'intégration multimédia du Collège de Maisonneuve.">
    <meta name="author" content="Les Cookies - Sidd Benoît, Marie-Lou Denis, Rena Jamaleddine">
    <meta name="keywords" content="TIM, techniques d'intégration multimédia, Collège Maisonneuve, 3D, Jeu vidéo, Web, Design, Graphisme, formation post-secondaire, cours, enseignants, professeurs, vie étudiante">
    <link rel="stylesheet" href="css/style.css">
    <link rel="apple-touch-icon" sizes="180x180" href="medias/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="medias/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="medias/favicon/favicon-16x16.png">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>
<body>
    <?php
    // Inclure l'écran splash
    include("inclusions/splash.php");
    ?>
    <div id="conteneur">
        <?php
            // Inclure le header
            include("inclusions/header.php");
            // Inclure l'accueil
            include("inclusions/accueil.php");
            // Inclure la section cours
            include("inclusions/cours.php");
            // Inclure la section profs
            include("inclusions/profs.php");
        ?>
    </div>
    <?php
        // Inclure la section contact
        include("inclusions/contact.php");
    ?>

    <!-- ------------------ Scripts ---------------- -->
    <!-- Script des fonctions -->
    <script type="text/javascript" src="js/fonctions.js"></script>

    <!-- Script de configuration de l'animation 3D de l'écran d'atterrissage -->
    <script type="text/javascript" src="js/vanilla-tilt.js"></script>

    <!-- Script de configuration de l'animation des sections -->
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>

    <!-- Script d'initialisation de la page -->
    <script type="text/javascript" src="js/init.js"></script>

    <!-- Gestion des sections cours et profs -->
    <script type="text/javascript" src="js/gerer-cours.js"></script>
    <script type="text/javascript" src="js/gerer-profs.js"></script>

    <!-- Carrousel accueil -->
    <script type="text/javascript" src="js/gerer-carrousel-accueil.js"></script>

    <!-- Changer l'arrière-plan de la barre de navigation lorsque l'utilisateur défile dans la page -->
    <script type="text/javascript">window.onscroll = function(){scrollFunction()};</script>

    <!-- Ne pas afficher l'écran d'atterrissage (cookie) -->
    <?php
        if(!isset($_COOKIE[$cookie_splash])) :
    ?>
        <script type="text/javascript">
            afficherSplash();
        </script>
    <?php
        endif;
    ?> 
</body>
</html>