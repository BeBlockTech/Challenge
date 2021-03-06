// Image_gallery_versie1.js
// een Javascript_PF project
var versie = " versie 3.0";
/*
window.onload = function () {
     //nieuwe eventhandler voor alle hyperlinks in de menubalk
     //var eSidebar = document.querySelector('sidebar');
     //var eLinks = eSidebar.getElementsByTagName('a');
     //versie info
     var eKop = document.querySelector('h1');
     eKop.innerHTML = eKop.innerHTML + versie;
     var eImg = document.getElementById('plaatshouder');
     var eLinks = document.querySelectorAll('sidebar a');
     console.log('sidebarLinks %s', eLinks.length);
     for(var i=0;i<eLinks.length;i++){
          eLinks[i].addEventListener('click',function (e){
               e.preventDefault();
               toonFoto(this, eImg);
          })
     }
}
*/
window.onload = function () {
     console.log(aModernArt[0][0]); //is aModernArt aanwezig?
     
     //noscript verbergen
     var eNoScript = document.getElementById('noscript');
     eNoScript.style.display = "none";

     //array geladen?
     if(typeof aModernArt == "undefined"){
          throw new Error("array aModernArt niet gevonden");
     }
     else{
          console.log(aModernArt[0][0]);
          //versie info
          var eKop = document.querySelector('h1');
          eKop.innerHTML = eKop.innerHTML + versie;
          ...
     }

     //versie info
     var eKop = document.querySelector('h1');
     eKop.innerHTML = eKop.innerHTML + versie;
     var eImg = document.getElementById('plaatshouder');
     //var eSidebar = document.querySelector('sidebar');
     //var eLinks = eSidebar.getElementsByTagName('a'); //collection
     var eLinks = document.querySelectorAll('sidebar a'); //collection
     //console.log('eLinks %s',eLinks.length);
     for(var i=0;i<eLinks.length;i++){
          eLinks[i].addEventListener('click',function (e){
                e.preventDefault();
                //toonFoto(this,eImg);
                })
          eLinks[i].addEventListener('mouseover',function (e){
          toonFoto(this,eImg);
          })
     }
}

function toonFoto(eLink, eImg){
      /* wisselt de bron van het src attribuut van de img#beeld
     @ eLink, een hyperlink element
     @ eImg, plaatshouder img
     */
     //console.log(eLink.href);
     eImg.src = eLink.href;
     var sInfo = eLink.getAttribute('title');
     var eInfo = document.getElementById('info');
     if(eInfo){
          //eInfo bestaat reeds
          eInfo.innerHTML = sInfo;
     }
     else {
          var eInfo = document.createElement('p');
          eInfo.id = "info";
          eInfo.innerHTML = sInfo;
          //eImg.parentNode.appendChild(eInfo);
          eImg.parentNode.insertBefore(eInfo,eImg.parentNode.firstChild);
     }
}