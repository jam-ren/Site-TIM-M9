var index = 1; 
var maMinuterie;
var contenantDiaporama;

// Afficher le carrousel de l'accueil
window.addEventListener("load",function() {
    montrerDiapo(index);
    maMinuterie = setInterval(function(){diapoPlus(1)}, 4000);

    // Enlever les flèches de navigation du carrousel
    contenantDiaporama = document.getElementsByClassName('diaporama-interne')[0];
    contenantDiaporama.addEventListener('mouseenter', pause)
    contenantDiaporama.addEventListener('mouseleave', reprendre)
})

// Contrôle du changement d'image
function diapoPlus(n){
    clearInterval(maMinuterie);
    if (n < 0){
        montrerDiapo(index -= 1);
    } else {
        montrerDiapo(index += 1); 
    }
  
// Permettre la navigation automatique entre les images
  if (n === -1){
      maMinuterie = setInterval(function(){diapoPlus(n + 2)}, 4000);
    
  } else {
      maMinuterie = setInterval(function(){diapoPlus(n + 1)}, 4000);
  }
}

// Activer suivant et précédent lorsque l'utilisateur clique sur une catégorie
var liCarrousel = document.querySelectorAll('.li-carrousel');
for (let i= 0; i < liCarrousel.length; i++) {
    liCarrousel[i].addEventListener('click', function(){
        diapoActuelle(i+1);
    });
}

// Contrôle la diapositive actuelle et réinitialise l'intervalle si nécessaire
function diapoActuelle(n){
    clearInterval(maMinuterie);
    maMinuterie = setInterval(function(){diapoPlus(n + 1)}, 4000);
    montrerDiapo(index = n);
}

// Afficher et changer les diapositives du carrousel
function montrerDiapo(n){
    var i;
    var diapositives = document.getElementsByClassName("ma-diapo");
    if (n > diapositives.length) {
        index = 1;
    }
    if (n < 1) {
        index = diapositives.length
    }
    for (i = 0; i < diapositives.length; i++) {
        diapositives[i].style.display = "none";
    }
    for (i = 0; i < liCarrousel.length; i++) {
        liCarrousel[i].className = liCarrousel[i].className.replace(" active", "");
    }
    diapositives[index-1].style.display = "block";
    liCarrousel[index-1].className += " active";
}

// Arrêter la navigation automatique lorsque la souris est sur le carrousel
pause = () => {
    clearInterval(maMinuterie);
}

// Réactiver la minuterie
reprendre = () =>{
    clearInterval(maMinuterie);
    maMinuterie = setInterval(function(){diapoPlus(index)}, 4000);
}
