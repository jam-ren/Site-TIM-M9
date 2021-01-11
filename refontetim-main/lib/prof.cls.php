<?php
    class Prof extends MyBD2 {
        function __construct() {
            parent::__construct(HOTE, UTIL, MDP, BD);
        }

        public function profVolet($volet="") {
            $params = [
                "volet"  => $volet
            ];
            if($volet==""){
                $req = "SELECT * FROM profs";
            }
            else{
                $req = "SELECT * FROM profs WHERE profs_specialite=:volet";
            }
            $resultat = $this->lire($req, $params);
            // Retourner les informations sur les profs
            return $resultat;
        }

        public function prealablesCours($idCours) {
            $params = [
                "idCours" => $idCours
            ];
            $req = "SELECT * FROM prealables WHERE pre_cours_id=:idCours";
            $resultat = $this->lire($req, $params);

            return $resultat;
        }
    }
?>