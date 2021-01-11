<?php
    // Obtenir les cours selon la session
    $cours = new Cours();
    // 1ere session
    $coursSess1 = new Cours();
    $session1 = $coursSess1 -> coursSession(1);
    // 2e session
    $coursSess2 = new Cours();
    $session2 = $coursSess2 -> coursSession(2);
    // 3e session
    $coursSess3 = new Cours();
    $session3 = $coursSess3 -> coursSession(3);
    // 4e session
    $coursSess4 = new Cours();
    $session4 = $coursSess4 -> coursSession(4);
    // 5e session
    $coursSess5 = new Cours();
    $session5 = $coursSess5 -> coursSession(5);
    // 6e session
    $coursSess6 = new Cours();
    $session6 = $coursSess6 -> coursSession(6);

    // Tableau des cours de toute la session
    $toutesLesSessions = [$session1, $session2, $session3, $session4, $session5, $session6];
    
?>
<section class="scrollable" id="cours" >
    <div class="titre-section">
        <h1>Cours</h1>
        <hr>
    </div>
    <div data-aos="fade-up" data-aos-duration="1000" data-aos-once="true">
        <div id="menus-cours">
            <!-- Menu filtre des sessions pour grands écrans -->
            <ul id="filtre-sessions">
                <li class="session-active option-session" data-session="1">/1re session</li>
                <li class="option-session" data-session="2">/2e session</li>
                <li class="option-session" data-session="3">/3e session</li>
                <li class="option-session" data-session="4">/4e session</li>
                <li class="option-session" data-session="5">/5e session</li>
                <li class="option-session" data-session="6">/6e session</li>
            </ul>
            <!-- Menu déroulant de filtre des sessions pour mobile et tablette -->
            <div class="menu-deroulant">
                <button class="btn-deroulant">/1re session</button>
                <div class="contenu-deroulant cacher">
                    <li class="option-session" data-session="1">/1re session</li>
                    <li class="option-session" data-session="2">/2e session</li>
                    <li class="option-session" data-session="3">/3e session</li>
                    <li class="option-session" data-session="4">/4e session</li>
                    <li class="option-session" data-session="5">/5e session</li>
                    <li class="option-session" data-session="6">/6e session</li>
                </div>
            </div>
        </div>
        <!-- Boucle pour afficher tous les cours de toutes les sessions -->
        <?php
            foreach ($toutesLesSessions as $session) :
        ?>
        <div class="les-cours" data-num-session="<?= $session[0]->cours_session ?>">
            <!-- Boucle pour afficher les détails de chaque cours -->
            <?php
                foreach($session as $unCours) :
            ?>
            <div class="un-cours">
                <div class="titre-cours">
                    <?php
                        switch ($unCours->cours_type) {
                            case "Programmation" :
                                echo '<img src="medias/icones/logoProg.png" alt="" class="logo-cours">';
                            break;
                            case "Création" :
                                echo '<img src="medias/icones/logoCreation.png" alt="" class="logo-cours">';
                            break;
                            case "Autre" :
                                echo '<img src="medias/icones/logoDeux.png" alt="" class="logo-cours">';
                            break;
                        }
                    ?>
                    <h2><?= $unCours->cours_nom ?></h2>
                </div>
                <div class="details-cours cacher">
                    <h3 class="code-cours"><?= $unCours->cours_code ?></h3>
                    <p class="ponderation">Pondération : <?= $unCours->cours_ponderation ?></p>
                    <p class="description-cours">
                        <?= $unCours->cours_desc ?>
                    </p>
                    <?php
                        if(($prealablesCours = $coursSess1 -> prealablesCours($unCours->cours_id)) != NULL) :   
                    ?>
                        <p class="prealables">Préalable.s :</p>
                        <ul>
                        <?php
                            foreach($prealablesCours as $prealable) :
                                $infosPrealable = json_decode($prealable->pre_info, true);
                                foreach($infosPrealable as $info) :
                        ?>
                            <li>[<?= $info["type"] ?>] <?= $info["nom"] ?> (<?= $info["code"] ?>)</li>
                        <?php
                                endforeach;
                            endforeach;
                        ?>
                        </ul>
                    <?php
                        endif;
                    ?>
                    <?php
                        if(($profsCours = $coursSess1 -> profsCours($unCours->cours_id)) != NULL) :
                    ?>
                    <div class="prof-qui-enseigne ">
                        <h3>Enseignant.e.s</h3>
                        <?php
                            foreach($profsCours as $prof) :
                        ?>
                        <div class="prof-cours">
                            <div class="visage-logo">
                                <?php
                                    switch ($prof->profs_specialite) {
                                        case "Programmation" :
                                            echo '<img src="medias/icones/logoProg.png" alt="" class="logo-profs">';
                                        break;
                                        case "Création" :
                                            echo '<img src="medias/icones/logoCreation.png" alt="" class="logo-profs">';
                                        break;
                                        case "Autre" :
                                            echo '<img src="medias/icones/logoDeux.png" alt="" class="logo-profs">';
                                        break;
                                    }
                                ?>
                                <img src="medias/profs/<?= $prof->profs_photo ?>" class="visage-prof">
                            </div>
                            <div class="desc-prof-cours">
                                <h5><?= $prof->profs_nom ?></h5>
                                <h6><?= $prof->profs_email ?></h6>
                                <p><?= $prof->profs_desc_courte ?></p>
                            </div>
                        </div>
                        <?php
                            endforeach;
                        ?>
                    </div>
                    <?php
                        endif;
                        if(($projetsCours = $coursSess1 -> projetsCours($unCours->cours_id)) != NULL) :
                    ?>
                    <h3>Projets</h3>
                    <div class="projets">
                        <?php
                            foreach($projetsCours as $projet) :
                        ?>   
                        <img src="medias/projets/<?= $projet->prj_img ?>" alt="<?= $projet->prj_desc ?>" title="<?= $projet->prj_desc ?>">
                        <?php
                            endforeach;
                        ?>
                    </div>
                    <?php
                        endif;
                    ?>
                </div>
            </div>
            <?php
                endforeach;
            ?>
        </div>
        <?php
            endforeach;
        ?>
        <!-- Grille de cheminement et lightbox -->
        <div class="grille-cheminement">
            <h2><a href="#grille-cheminement">grille de cheminement</a></h2>
            <svg width="223" height="109" viewBox="0 0 223 109" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M221.939 11.1477C230.035 24.2234 190.592 52.409 145.336 75.6548C99.8731 98.7554 48.8048 117.061 22.4403 105.003C-3.92421 93.0892 -5.58496 51.1014 11.853 28.8726C29.4985 6.64377 66.0352 4.31919 112.121 2.13989C158.207 0.105884 213.842 -1.92813 221.939 11.1477Z" fill="#FE781D"/>
            </svg>
            <a href="#cours" class="lightbox" id="grille-cheminement">
                <span id="img-grille-cheminement"></span>
            </a>   
        </div>
    </div>
    
</section>