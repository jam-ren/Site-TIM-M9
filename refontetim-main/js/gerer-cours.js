// Changer le style de la session courante
let navSessions = document.querySelectorAll("#menus-cours li");
// Écouteur d'événement sur chaque élément du menu de filtre des sessions et appel de la fonction afficherCoursSession
for (let i = 0; i < navSessions.length; i++) {
    navSessions[i].addEventListener('click', function() {
        let sessionCourante = document.querySelectorAll(".session-active");
        console.log(sessionCourante);

        if(sessionCourante.length > 0) {
            sessionCourante[0].classList.remove("session-active");
        }

        this.classList.add("session-active");
        afficherCoursSession(navSessions[i].getAttribute('data-session'));
    });
}


/**
 * Gestion du menu déroulant de filtre des sections
 */
let contenuDeroulantCours = document.querySelector("#menus-cours .contenu-deroulant");
let liContenuDeroulantCours = document.querySelectorAll("#menus-cours .contenu-deroulant li");
let boutonDeroulantCours = document.querySelector("#menus-cours .btn-deroulant");

// Ouvrir et fermer le menu déroulant (mobile) lorsque l'utilisateur clique sur le bouton
boutonDeroulantCours.addEventListener('click', function() {
    contenuDeroulantCours.classList.toggle('cacher');
    boutonDeroulantCours.classList.toggle('actif');
});

// Fermer le menu déroulant lorsque l'utilisateur sélectionne une session
for (let i = 0; i < liContenuDeroulantCours.length; i++) {
    liContenuDeroulantCours[i].addEventListener('click', function() {
        contenuDeroulantCours.classList.toggle('cacher');
        boutonDeroulantCours.classList.toggle('actif');
        boutonDeroulantCours.innerHTML = liContenuDeroulantCours[i].innerHTML; //change le texte du bouton sur l'option cliquée
    });
}   

// Sélectionner tous les cours
let lesElmCours = document.querySelectorAll(".un-cours");

// Écouteur d'événement sur tous les cours
for (let i = 0; i < lesElmCours.length; i++) {
    lesElmCours[i].addEventListener('click', afficherDetailsCours, false);
}

/**
 * Afficher Détails Cours
 * Détecte le clic sur un titre de cours et affiche les détails correspondant au cours
 */
function afficherDetailsCours() {
    console.log(this);
    console.log(this.childNodes);
    let elmCours = this;
    let elmEnfant = elmCours.childNodes;
    console.log(elmCours);
    console.log(elmCours.classList);
    elmCours.classList.toggle('couleur-BG');
    for (i = 0; i < elmEnfant.length; i++) {
        if (elmEnfant[i].nodeType === 1) {
            if (elmEnfant[i].classList.contains('details-cours')){
                elmEnfant[i].classList.toggle('cacher');
            }
        }
    }
}

// Sélectionner tous les cours
var coursParSession = document.querySelectorAll(".les-cours");

// Afficher seulement les cours de la première session à l'ouverture du site
coursParSession[0].style.display="grid";

/**
 * Afficher Cours Session
 * 
 * @param {int} nSession Numéro de la session pour laquelle on veut obtenir les cours
 */
function afficherCoursSession(nSession) {
    for (let i = 0; i < coursParSession.length; i++) {
        if (coursParSession[i].getAttribute('data-num-session') == nSession) {
            coursParSession[i].style.display = "grid";
        } else {
            coursParSession[i].style.display = "none";
        }
    }
}
    