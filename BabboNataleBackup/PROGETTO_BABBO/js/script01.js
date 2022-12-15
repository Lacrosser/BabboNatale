/* -------------------------------------------------------------------------- */
/*                            Costanti e variabili                            */
/* -------------------------------------------------------------------------- */

//const MAXCHAR = /^.{50}$/;
//const URLCOMM = "http://localhost:3000/posts"
const URLUTENTI = "http://localhost:9001/babbi"
// const AVATAR = "https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png";
// const REGUSER = /^[a-zA-Z\d]{1,12}$/;
// const REGPASS = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

// var commento = document.querySelector("#inserimento");
// var count = document.querySelector("#countdown");
// var digitare = document.querySelector("#digitare");
var invio = document.querySelector("#invio");
// var mioForm = document.querySelector("#mioForm");
// var output = document.querySelector("#output");
var username = document.querySelector("#username");
var password = document.querySelector("#password");
var btn = document.querySelector("#salvaUtente");
var logBlock = document.querySelector("#login");
// var avatar = document.querySelector("#avatarStandard");
// var btnLogout = document.querySelector("#BtnLogout");
// var selectCity = document.querySelector("#cita");
// var code = document.querySelector("#ultimoCarattere");


// var errorPass = document.querySelector("#errorPass");
// var errorUser = document.querySelector("#errorUser");
// var errorLegoCity=document.querySelector("#errorLego")

// var checkpass = document.querySelector("#password");
// var checkUser = document.querySelector("#username");


/* -------------------------------------------------------------------------- */
/*                             Inizio della pagina                            */
/* -------------------------------------------------------------------------- */

// wrapper();
// statusOff();


/* -------------------------------------------------------------------------- */
/*                                  Funzioni                                  */
/* -------------------------------------------------------------------------- */


// function statusOn() {
//     var scrittura = "Stai scrivendo...."
//     digitare.textContent = scrittura;
// }

// function statusOff() {

//     digitare.innerHTML = "Premi nel box per scrivere"
// }



// function wrapper() {
//     count.textContent = "Mancano:" + (50 - commento.value.length);
// }

// function logger() {
//     console.log(event);
// }


// function logOrario() {
//     var now = new Date();
//     var giorno = now.getDate();
//     var mese = now.getMonth() + 1;
//     var anno = now.getFullYear();


//     return giorno + "/" + mese + "/" + anno
// }


// function mostraBabbi(listabho) {
//     listabho.forEach(element => {
//         //console.log(element);
//         var post = element.msg[0].testo;
//         output.setAttribute("value", post);
//         // avatar.setAttribute("src", AVATAR);

//         //console.log(post);


//     });

// };

// function controllaUser() {
//     // if (!checkUser.value.match(REGUSER)) {


//         //almeno una maiuscola
//         //almeno una minuscola
//         //almeno un carattere speciale @$!%*?&
//         //lunghezza minima 8 caratteri
//         // errorUser.textContent = "Per favore controlla il tuo Username:";

//         for (let i = 0; i < 2; i++) {

//             switch (i) {
//                 case 0:
//                     var li = document.createElement("li")
//                     li.textContent = "Username: massimo 12 caratteri";
//                     errorUser.appendChild(li);

//                     break;
//                 case 1:
//                     var li = document.createElement("li")
//                     li.textContent = "Username: Non sono accettati spazi o caratteri speciali";
//                     errorUser.appendChild(li);
//                     break;

//                 default:
//                     break;
//             }

//         }
//         event.preventDefault();
//         return false;
//     // } else {
//     //     return true;
//     }



// function controllaPassword() {
//     if (!checkpass.value.match(REGPASS)) {
//         //almeno una maiuscola
//         //almeno una minuscola
//         //almeno un carattere speciale @$!%*?&
//         //lunghezza minima 8 caratteri
//         errorPass.textContent = "Per favore controlla la tua Password:";
//         for (let i = 0; i < 5; i++) {

//             switch (i) {
//                 case 0:
//                     var li = document.createElement("li")
//                     li.textContent = "Password: deve avere almeno una maiuscola";
//                     errorPass.appendChild(li);

//                     break;
//                 case 1:
//                     var li = document.createElement("li")
//                     li.textContent = "Password:Deve avere almeno una minuscola";
//                     errorPass.appendChild(li);
//                     break;
//                 case 2:
//                     var li = document.createElement("li")
//                     li.textContent = "Password:Deve avere almeno un carattere speciale @$!%*?&";
//                     errorPass.appendChild(li);

//                     break;
//                 case 3:
//                     var li = document.createElement("li")
//                     li.textContent = "Password: Deve contenere almeno un numero";
//                     errorPass.appendChild(li);

//                     break;
//                 case 4:
//                     var li = document.createElement("li")
//                     li.textContent = "Password: Lunghezza minima 8 caratteri";
//                     errorPass.appendChild(li);
                    
//                     break;

//                 default:
//                     break;
//             }

//         }
//         event.preventDefault();
//         return false;
//     } else {
//         return true;
//     }

// }

// function controllaCity(){
//  if(selectCity.value==""){
//     errorLegoCity.textContent="Devi Selezionare la Città"
//     return false;
// }else{
//      return true;
//  }
// }

// function ripristinoCampi() {
//     var li = document.querySelectorAll("ul#errorPass li");
//     var lu = document.querySelectorAll("ul#errorUser li");
//     errorPass.textContent="";
//     errorUser.textContent="";
//     errorLegoCity.textContent="";
//     li.forEach(element => {

//         element.remove();

//     });
//     lu.forEach(luele => {
//         luele.remove();
//     });
// }


function validate() {
    var cU=controllaUser();
    var cP=controllaPassword();
    var cLego=controllaCity();
    console.log(cU);
    console.log(cP);
    console.log(cLego);
    if (cU&&cP && cLego) {
        return true;

    } else {
        return false;
    }

}


/* -------------------------------------------------------------------------- */
/*                            Oggetti da costruire                            */
/* -------------------------------------------------------------------------- */

function Tweet(commento, tempo) {
    this.testo = commento;
    this.data = tempo;
};

function UtentiTwit(username, password, avatar, [Tweet]) {
    this.username = username;
    this.password = password;
    this.avatar = avatar;
    this.msg = [Tweet];
}


/* -------------------------------------------------------------------------- */
/*                           funzioni di post e get                           */
/* -------------------------------------------------------------------------- */


// registrazione di un Utente con un Tweet 
// function registraUtenti() {
//     var comm = new Tweet(commento.value, logOrario());
//     var user = new UtentiTwit(username, password, AVATAR, [comm]);
//     //console.log(comm);
//     fetch(URLUTENTI, {

//             method: "POST",
//             headers: {
//                 "Content-type": "application/json"
//             },
//             body: JSON.stringify(user)
//         })
//         .then(data => {
//             data.json()
//             //console.log(data);

//         })
//         .then(response => {
//             console.log("Utente, registrato");
//         })
//     var scrittura = commento.value;
//     //console.log(scrittura);
//     output.setAttribute("value", scrittura);
//     //output.innerHTML=scrittura;
//     return false;
// };



//get per prendere i dati
fetch(URLUTENTI)
    .then(data => {
        return data.json()
    })
    .then(response => {

        //console.log(response);

        mostraUtenti(response);

    });




/* -------------------------------------------------------------------------- */
/*              event listener e memorizzazione variabili locali              */
/* -------------------------------------------------------------------------- */


// commento.addEventListener("focus", statusOn)
// commento.addEventListener("focusout", statusOff)

// commento.addEventListener("keydown", function () {

//     commUser = commento.value.length;
//     var key = event.which;
//     if (commUser >= 50) {

//         if (key == 8 || key == 46) {
//             var commUser = commento.value.length - 1;
//         } else {
//             event.preventDefault();
//         }

//     } else {

//         if (key == 8 || key == 46) {
//             var commUser = commento.value.length - 1;
//         } else {
//             var commUser = commento.value.length + 1;

//         }

//         code.textContent = "Hai premuto il codice: " + key;
//         count.textContent = "Mancano:" + (50 - commUser);

//     }


// });


// invio.addEventListener("click", registraUtenti);

// btnLogout.addEventListener("click", logout);

var username = localStorage.getItem("userLoggato");
var password = localStorage.getItem("passwordRegistrata");
// var city = localStorage.getItem("city");

// if (localStorage.getItem("userLoggato") && localStorage.getItem("passwordRegistrata")) {

//     logBlock.setAttribute("hidden", "hidden")
//     mioForm.removeAttribute("hidden")
//     selezioneCita();

// };



// function logout() {

//     localStorage.removeItem("userLoggato");
//     localStorage.removeItem("passwordRegistrata");
//     localStorage.removeItem("city");
//     mioForm.setAttribute("hidden", "hidden");
//     logBlock.removeAttribute("hidden");
// }



btn.addEventListener("click", function () {
    var password = document.querySelector("#password").value;
    var username = document.querySelector("#username").value;
    // var city = document.querySelector("#cita").value;

    localStorage.setItem("userLoggato", username);
    localStorage.setItem("passwordRegistrata", password);
    // localStorage.setItem("city", city)


    console.log(localStorage.getItem("passwordRegistrata"));
    console.log(localStorage.getItem("userLoggato"));
    // console.log(localStorage.getItem("city"));

    ripristinoCampi();
  
    if (true) {
        if (localStorage.getItem("userLoggato") == username && localStorage.getItem("passwordRegistrata") == password) {

            logBlock.setAttribute("hidden", "hidden");
            mioForm.removeAttribute("hidden");
            //selezioneCita();
            console.log("ma come");
        } else {
            console.log("error");
        }
    } else {
        event.preventDefault();
    }

});


/* -------------------------------------------------------------------------- */
/*                           Mappa creazione e setup                          */
/* -------------------------------------------------------------------------- */



function selezioneCita() {
    city;
    console.log(city);

    switch (city) {
        case "1":
            var map = L.map('map').setView([45.465454, 9.186516], 13);
            layerSelect();
            
            break;

        case "2":
            var map = L.map('map').setView([41.8933203, 12.4829321], 13);
            layerSelect();
            break;

        case "3":
            var map = L.map('map').setView([45.0677551, 7.6824892], 13);
            layerSelect();
            break;

        case "4":
            var map = L.map('map').setView([45.6728109, 11.9252448], 13);
            layerSelect();
            break;

        case "5":
            var map = L.map('map').setView([43.1672254, 11.4671812], 13);
            layerSelect();
            break;


    }


    function layerSelect() {
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);

        var marker = L.marker([45.465454, 9.186516]).addTo(map)
    };


}














// crea una pagina con una textArea per permettere all'utente di scrivere un messaggio di 50 caratteri massimo. Al raggiungimento dei 50 caratteri impedisci all'utente di scrivere oltre. Un pulsante invia che scrive il messaggio all'interno di un database formato json (json-server) e il suo timestamp. Stampa sotto la textArea il messaggio.
//      tetArea sarà visibile solo agli utenti che avranno effettuato la registrazione.

//     Prevedere un form di registrazione, un pulsante che prende le informazioni, le registra nel db e successivamente "apparirà la textArea" con l'aggiunta di un cerchio con dentro l'avatr dell'utente appena registrato e il suo username.
//     Campi dell'utente saranno:
//     id
//     username
//     password
//     avatar: "...Link ad un avatar online"
//     msg: [
//     {
//         testo: "..La..",
//         data: "../../.."
//     }]

// <!-- Inserire una mappa con leaflet. La mappa verrà caricata nel momento in cui l'utente, attraverso una select, inserisce la città dalla quale si sta connettendo.
// La mappa deve essere responsive.
// Cambiare lo stile dei bottoni di zoom-in e zomm-out.
// Custom marker icon -->

//Questo progetto di Js è stato realizzato Da Abel Nucci https://www.linkedin.com/in/abel-nucci-116330256/
/* -------------------------------------------------------------------------- */
/*                             Funzioni deprecate                             */
/* -------------------------------------------------------------------------- */


//fetch commento
//  fetch(URLCOMM)
//      .then(data => {
//          return data.json()
//      })
//      .then(response => {

//         //console.log(response);

//         mostraPost(response);

//      });


// function mostraPost(listabho){
//     listabho.forEach(element => {

//         var post=element.commento;
//         output.setAttribute("value",post);

//         console.log(post);


//     });

// };



// function registraCommento() {
//     var comm = new Tweet(commento.value, logOrario());
//     //console.log(comm);
//     fetch(URLCOMM, {

//             method: "POST",
//             headers: {
//                 "Content-type": "application/json"
//             },
//             body: JSON.stringify(comm)
//         })
//         .then(data => {
//             data.json()
//             console.log(data);

//         })
//         .then(response => {
//             console.log("Utente, registrato");
//         })
//     var scrittura = commento.value;
//     console.log(scrittura);
//     output.setAttribute("value", scrittura);
//     //output.innerHTML=scrittura;
//     return false;
// };


// function contatoreStart() {

//     var cont = controllaCommento();
//     count.textContent = "Mancano:" + (50 - cont);
//     //console.log(cont);
// }


// function controllaCommento() {
//     //logger();
//     var commUser = commento.value.length + 1;
//     if (commUser >= 50) {
//         event.preventDefault();

//     } else {


//     }
//     // console.log(commUser);
//     return commUser;
// }