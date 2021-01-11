<?php
class MyBD2 {
    // Propriétés
    private $pdo = null; // Objet PDO
    private $rp = null; // Requête paramétrée

    // Constructeur
    /**
     * Constructeur de la classe MyBD : initialise l'objet PDO
     * 
     * @param String $hote L'adresse IP du serveur MySQL
     * @param String $utilisateur Le code-utilisateur du compte MySQL
     * @param String $motdepasse
     * @param String $nombd Nom de la base de données
     * 
     * @return void
     */
    function __construct($hote, $utilisateur, $motdepasse, $nombd) {
        $options = [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ];
        $this->pdo = new PDO("mysql:host=$hote;dbname=$nombd;charset=utf8", $utilisateur, $motdepasse, $options);
    }

    // Méthodes

    /**
     * Effectue une requête SQL
     *
     * @param String $reqSql Requête SQL paramétrée
     * @param Array $params Tableau contenant les valeurs des paramètres à passer à la requête au moment de son exécution
     * @return void
     */
    private function envoyerRequete($reqSql, $params) {
        $this->rp = $this->pdo->prepare($reqSql);
        $this->rp->execute($params);
    }

    /**
     * Effectue une requête SELECT
     *
     * @param String $req Requête SQL de type SELECT
     * @param Array $params Tableau contenant les valeurs des paramètres à passer à la requête au moment de son exécution
     * @return Array Tableau des objets représentants les enregistrements
     */
    public function lire($req, $params) {
        $this->envoyerRequete($req, $params);
        return $this->rp->fetchAll();
    }
}
?>
