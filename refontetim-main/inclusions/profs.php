<?php
    $prof = new Prof();

    $autre = $prof -> profVolet('Autre');
    $creation = $prof -> profVolet('Création');
    $programmation = $prof -> profVolet('Programmation');
    $tous = $prof -> profVolet('');
    for ($i=0; $i < sizeof($autre); $i++) { 
        array_push($creation, $autre[$i]);
        array_push($programmation, $autre[$i]);
    }
    
    $creation[6] = $autre[0];
    $volets = [$tous, $programmation, $creation];
?>
<section class="scrollable" id="professeurs">
    <div class="titre-section">
        <h1>professeurs</h1>
        <hr>
    </div>
    <div data-aos="fade-up" data-aos-duration="1000">
        <div id="menus-profs">
        <ul id="menu-profs">
            <li class="volet-actif option-volet" data-volet="Tous">/tous</li>
            <li class="option-volet" data-volet="Programmation">/programmation</li>
            <li class="option-volet" data-volet="Création">/création</li>
        </ul>
        <div class="menu-deroulant">
            <button class="btn-deroulant">/tous</button>
            <div class="contenu-deroulant cacher">
                <li class="option-volet" data-volet="Tous">/tous</li>
                <li class="option-volet" data-volet="Programmation">/programmation</li>
                <li class="option-volet" data-volet="Création">/création</li>
            </div>
        </div>
        </div>
        <?php
                foreach($volets as $volet) :
            ?>
            <?php 
            $dataVolet = "";
                if(isset($volet[11])==1){
                    $dataVolet = "Tous";
                }
                else if(isset($volet[11])!=1){
                    $dataVolet = $volet[0]->profs_specialite;
                }
            
            ?>
            <ul class="profs" data-volet="<?= $dataVolet ?>">
            
                <?php
                    foreach($volet as $prof) :
                ?>
                    <li class="prof">
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
                            <img src="medias/profs/<?= $prof->profs_photo?>" alt="" class="visage-prof">
                        </div>
                        <div class="details">
                            <h2><?= $prof->profs_nom?></h2>
                            <h3><?= $prof->profs_email?></h3>
                            <p class="desc-courte"><?= $prof->profs_desc_courte?></p>
                            <p class="desc-longue cacher"><?= $prof->profs_desc_longue?></p>
                                <a target= "_blank" class="lien cacher" href="<?= $prof->profs_lien?>">Vous pouvez suivre mes projets ici : <?= $prof->profs_lien?></a>
                        </div>
                    </li>
                <?php
                    endforeach;
                ?>     
            </ul>
        <?php
                endforeach;
            ?> 
        <h3 id="voir-plus"></h3>
    </div>
    
</section>