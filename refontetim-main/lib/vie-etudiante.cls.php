<?php
    class VieEtudiante extends MyBD2 {
        function __construct() {
            parent::__construct(HOTE, UTIL, MDP, BD);
        }
        
        /**
         * Événements Vie Étudiante
         * Aller chercher tous les événements de la vie étudiante
         *
         * @return Object   un objet contenant des propriétés correspondants aux noms de colonnes du jeu d'enregistrement retourné de la BD 
         */
        public function evenementsVE() {
            $req = "SELECT * FROM vie_etudiante";
            $params = array();
            $resultat = $this->lire($req, $params);

            return $resultat;
        }
    }
?>