<?php
    class Cours extends MyBD2 {
        function __construct() {
            parent::__construct(HOTE, UTIL, MDP, BD);
        }

        /**
         * Cours Session
         * Retourne tous les cours qui sont donnés dans une session X
         *
         * @param int $numSession Numéro de la session pour laquelle on veut obtenir la liste de cours
         * @return Object un objet contenant des propriétés correspondants aux noms de colonnes du jeu d'enregistrement retourné de la BD
         */
        public function coursSession($numSession) {
            $params = [
                "numSession"  => $numSession
            ];
            $req = "SELECT * FROM cours WHERE cours_session=:numSession";
            $resultat = $this->lire($req, $params);
            
            return $resultat;
        }

        /**
         * Préalables Cours
         * Retourne l'information sur les préalables d'un cours
         *
         * @param int $idCours id du cours courant
         * @return Object un objet contenant des propriétés correspondants aux noms de colonnes du jeu d'enregistrement retourné de la BD
         */
        public function prealablesCours($idCours) {
            $params = [
                "idCours" => $idCours
            ];
            $req = "SELECT pre_info FROM prealables WHERE pre_cours_id=:idCours";
            $resultat = $this->lire($req, $params);

            return $resultat;
        }

        /**
         * Profs Cours
         * Retourne l'information sur les professeurs donnant un cours spécifique, si disponible
         *
         * @param int $idCours id du cours courant
         * @return Object un objet contenant des propriétés correspondants aux noms de colonnes du jeu d'enregistrement retourné de la BD
         */
        public function profsCours($idCours) {
            $params = [
                "idCours" => $idCours
            ];
            $req = "SELECT profs_nom, profs_photo, profs_specialite, profs_email, profs_desc_courte FROM profs_cours JOIN profs p ON prf_id = p.profs_id WHERE crs_id=:idCours";
            $resultat = $this->lire($req, $params);

            return $resultat;
        }

        /**
         * Projets Cours
         * Retourne tous les exemples de projets disponibles pour un cours spécifique, si disponible
         *
         * @param int $idCours id du cours courant
         * @return Object un objet contenant des propriétés correspondants aux noms de colonnes du jeu d'enregistrement retourné de la BD
         */
        public function projetsCours($idCours) {
            $params = [
                "idCours" => $idCours
            ];
            $req = "SELECT * FROM projets WHERE prj_crs_id=:idCours";
            $resultat = $this->lire($req, $params);

            return $resultat;
        }
    }
?>