/**
 * Changer État Lien
 * Changer l'apparence du lien de la navigation correspondant à la section sur laquelle l'utilisateur s'est arrêté/navigue
 */
const sections = document.querySelectorAll('.scrollable'); // la position qui s`index.
const liensNav = document.querySelectorAll(".lien-nav");

function changerEtatLien() {
    let index = sections.length;

    while (--index >= 0 && window.scrollY <= (sections[index].offsetTop + (sections[index].offsetHeight-100))) {
        // console.log(index, " /offset : ", sections[index].offsetTop, " / scrollY : ", window.scrollY);
        liensNav.forEach((lien) => lien.classList.remove('section-courante')); // remove .active
        liensNav[index].classList.add('section-courante'); // ajout .active
        // console.log("index : ", liensNav[index]);
        // console.log("Hauteur du doc : ************************ ", document.body.offsetHeight);
        if(window.scrollY > document.body.offsetHeight - window.innerHeight - 100) {
            liensNav[sections.length-1].classList.add('section-courante');
            liensNav[sections.length-2].classList.remove('section-courante');
        }
    }
}

/**
 * Cacher Splash
 * Permet de cacher l'écran d'atterrissage
 */
function cacherSplash() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
    liensNav.forEach((lien) => lien.classList.remove('section-courante')); // remove .active
    liensNav[0].classList.add('section-courante'); // ajout .active & met à jour la section active dans le menu collant
    document.querySelector("#splash").style.display="none";
    document.querySelector("body").style.overflow="visible";
    document.querySelector("#conteneur").style.display="block";
    document.querySelector("footer").style.display="block";
    document.querySelector("#lignes_footer").style.display="block";
}

/**
 * Afficher Splash
 * Permet d'afficher (ou réafficher) le splash screen soit lorsque l'utilisateur visite le site pour la première fois ou lorsqu'il clique sur les boutons logo du TIM
 */
function afficherSplash() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
    document.querySelector("#splash").style.display="block";
    document.querySelector("body").style.overflow="hidden";
    document.querySelector("#conteneur").style.display="none";
    document.querySelector("footer").style.display="none";
    document.querySelector("#lignes_footer").style.display="none";
    document.querySelector("#splash video").play();
}

/** 
 *  Montrer le Bouton
 *  Faire afficher le bouton continuer après 4 secondes
*/
function montrerLeBouton(){
    const elementApparaitre = document.querySelector("#splash button");
    const limiteTemps = 4 // seconds;
    let i=0;
    const minuterie = setInterval(function(){
        i++;
        if(i == limiteTemps) { 
            clearInterval(minuterie);
            elementApparaitre.classList.add("apparaitre");
        } 
    },1000);
}

/**
 * Changer section courante
 * Changer le style du lien de la navigation qui correspond à la section courante
 */
function changerSectionCourante() {
    let sectionCourante = document.querySelectorAll("section-courante");      
    if(sectionCourante.length > 0) {
        sectionCourante[0].classList.remove("section-courante");
    }
    this.classList.add("section-courante");
}

/**
 * Fonction scrollFunction
 * 
 * Ajouter un arrière-plan à la barre de navigation lorsque l'utilisateur descend la page
 */

const barreNav = document.querySelector("nav");

function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        barreNav.style.backgroundColor = "rgba(5,0,20,.8)";
    } else {
        barreNav.style.backgroundColor = "rgba(0,0,0,0)";
    }
}