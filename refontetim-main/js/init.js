(function(){
    // Initialiser l'effet 3D du logo dans l'écran d'atterrissage
    VanillaTilt.init(document.querySelectorAll(".boite"));

    // Lorsque l'on clique sur le bouton continuer dans le splash screen, on cache le splash screen et on affiche tout le reste du site
    document.querySelector("#splash button").addEventListener("mouseup", cacherSplash);

    // Lorsque l'on clique sur le logo du tim dans le site, on cache le site et on affiche le splash screen
    document.querySelector("#conteneur #logo").addEventListener("mouseup", afficherSplash);
    document.querySelector("#contact img").addEventListener("mouseup", afficherSplash);   

    //Appeler la fonction sur le chargement de la page
    window.addEventListener("load", montrerLeBouton);

    // Appeller changerEtatLien lorsqu'on charge la page
    changerEtatLien();

    // Changer le style de la section active dans la navigation lorsque l'utilisateur clique sur un des liens
    for (let i = 0; i < liensNav.length; i++) {
        liensNav[i].addEventListener("click", changerSectionCourante);
    }

    // Changer la section active dans la navigation lorsque l'utilisateur défile dans la page 
    // ajustement du scroll, simple correction throttle.
    // Source: https://codeburst.io/throttling-and-debouncing-in-javascript-b01cad5c8edf [Auteur: Jhey Tompkins]
    const throttle = (func, limit) => {
        let inThrottle;
        return function () {
            const args = arguments;
            const contexte = this;
            if (!inThrottle) {
                func.apply(contexte, args)
                inThrottle = true;
                setTimeout(() => inThrottle = false, limit);
            }
        }
    }

    window.addEventListener('scroll', throttle(changerEtatLien), 1000); // appel event

    // Initialisation des animations de sections
    AOS.init({
        duration: 3000,
        once: true,
    });

}) ();