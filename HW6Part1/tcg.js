//Bernadette Asoanab
//IFT 301
//2/21/2021

//The first section adds CSS styles to my cards

let box1 = document.querySelector(".card1");
box1.classList.add("cardstyle");

let box2 = document.querySelector(".card2");
box2.classList.add("cardstyle");

let box3 = document.querySelector(".card3");
box3.classList.add("cardstyle");

//This section adds a link  of the official site to the bottom of my page

var slink = document.createElement("a");
slink.setAttribute("href","https://na.finalfantasyxiv.com/");
slink.innerHTML = "Images are from the Official Final Fantasy XIV site.";
document.getElementById("site").appendChild(slink)
