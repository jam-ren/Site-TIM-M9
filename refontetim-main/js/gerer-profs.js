/**
 * change le volet actif dans le menu de volets pour celui qui a été sélectionné
 */
let navProfs = document.querySelectorAll("#menus-profs li");

// ajoute ou enlève la classe 'volet-actif' pour mettre le bon volet actif dans le menu de volets
for (let i = 0; i < navProfs.length; i++) {
    navProfs[i].addEventListener('click', function() {
        let filtreCourant = document.querySelectorAll(".volet-actif");
        
        if(filtreCourant.length > 0) {
            filtreCourant[0].classList.remove("volet-actif");
        }

        this.classList.add("volet-actif");
        afficherProfsVolet(navProfs[i].getAttribute('data-volet'));
    });
    
}

/**
 * afficher la liste de professeurs correspondants au volet selectionné dans le menu de volets
 * 
 * @param {string} volet le volet qui a été selectionné dans le menu de volets
 */
function afficherProfsVolet(volet) {
    var profsParVolet = document.querySelectorAll(".profs");
    
    for (let i = 0; i < profsParVolet.length; i++) {
        if (profsParVolet[i].getAttribute('data-volet') == volet) {
            profsParVolet[i].style.display = "grid";
            console.log(profsParVolet[i].getAttribute('data-volet'));
        } else {
            profsParVolet[i].style.display = "none";
        }
    }
}

/**
 * affiche le menu déroulant
 */
let contenuDeroulantProfs = document.querySelector("#menus-profs .contenu-deroulant");
let liContenuDeroulantProfs = document.querySelectorAll("#menus-profs .contenu-deroulant li");
let boutonDeroulantProfs = document.querySelector("#menus-profs .btn-deroulant");

// Ouvrir et fermer le menu déroulant (mobile) lorsque l'utilisateur clique sur le bouton
boutonDeroulantProfs.addEventListener('click', function() {
    contenuDeroulantProfs.classList.toggle('cacher');
    boutonDeroulantProfs.classList.toggle('actif');
});

// Fermer le menu déroulant lorsque l'utilisateur sélectionne une session
for (let i = 0; i < liContenuDeroulantProfs.length; i++) {
    liContenuDeroulantProfs[i].addEventListener('click', function() {
        contenuDeroulantProfs.classList.toggle('cacher');
        boutonDeroulantProfs.classList.toggle('actif');
        boutonDeroulantProfs.innerHTML = liContenuDeroulantProfs[i].innerHTML; //change le texte du bouton sur l'option cliquée
    });
}   

// au clic sur un professeur: appelle la fonction afficherDetails profs
// elmProf fait référence à chaque prof
let elmProf = document.querySelectorAll(".prof");

for (let i = 0; i < elmProf.length; i++) {
    elmProf[i].addEventListener('click', afficherDetailsProfs, false);
}

/**
 * affiche la description longue d'un professeurs
 */
function afficherDetailsProfs() {
    let elmProf = this;
    let elmEnfant = elmProf.childNodes;
    let elmEnfantEnfant = elmEnfant[3].childNodes;

    elmProf.classList.toggle('couleur-BG');

    for (i = 0; i < elmEnfant.length; i++) {
        if (elmEnfant[i].nodeType === 1) {
            if (elmEnfant[i].classList.contains('details')){ 
                for (i = 0; i < elmEnfantEnfant.length; i++) {
                    if (elmEnfantEnfant[i].nodeType === 1) {
                        if (elmEnfantEnfant[i].classList.contains('desc-courte')){
                            elmEnfantEnfant[i].classList.toggle('cacher');
                        }
                        if (elmEnfantEnfant[i].classList.contains('desc-longue')){
                            elmEnfantEnfant[i].classList.toggle('cacher');
                        }
                        if (elmEnfantEnfant[i].classList.contains('lien')){
                            elmEnfantEnfant[i].classList.toggle('cacher');
                        }
                    }
                }
            }
        }
    }
}

/**
 * affiche plus ou moins de professeurs dépendemment de l'état du bouton voir plus
 */
let voirPlus = document.querySelector("#voir-plus");
voirPlus.addEventListener('click', function() {
    let profsParVolet = document.querySelectorAll(".profs");
    let liProfs = document.querySelectorAll(".profs li");
   
    //affiche ou non toute la liste de professeurs selon l'état du bouton "voir plus" vérifié avec sa classe
    voirPlus.classList.toggle('clique');
     if(voirPlus.classList.contains('clique')){
        for (let i = 0; i < profsParVolet.length; i++) {
            liProfs = profsParVolet[i].children;
            for (let i = 0; i < liProfs.length; i++) {
                liProfs[i].style.display = "flex";
            }
        }
    } else {
        for (let i = 0; i < profsParVolet.length; i++) {
            liProfs = profsParVolet[i].children;
            for (let i = 0; i < liProfs.length; i++) {
                if(i>3){
                    liProfs[i].style.display = "none";
                }
            }
        }
    }
})

/**
 * Empêche la propagation du clic sur un professeur lorsque l'on clique sur un lien de prof
 */
document.querySelector(".lien").addEventListener("click", function(ev){
    ev.stopPropagation();
});



