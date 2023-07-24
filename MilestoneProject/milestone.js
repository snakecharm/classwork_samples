//Bernadette Asoanab
//IFT 301
//2/28/2021

//These first 6 functions act as selectors for the review page. You can click on one of the images
//in the top row to read a short review of the book

function choose1(){
    let selected = document.querySelector("#choice1");//This was required to get the div property to show with the correct background
    selected.classList.add("reviewbody");
    
            document.getElementById("choice1").style.display="block";
            document.getElementById("choice2").style.display="none";
            document.getElementById("choice3").style.display="none";
            document.getElementById("choice4").style.display="none";
            document.getElementById("choice5").style.display="none";
            document.getElementById("choice6").style.display="none";         
}

function choose2(){
    let selected = document.querySelector("#choice2");
    selected.classList.add("reviewbody");
    
    document.getElementById("choice1").style.display="none";
    document.getElementById("choice2").style.display="block";
    document.getElementById("choice3").style.display="none";
    document.getElementById("choice4").style.display="none";
    document.getElementById("choice5").style.display="none";
    document.getElementById("choice6").style.display="none";
}

function choose3(){
    let selected = document.querySelector("#choice3");
    selected.classList.add("reviewbody");
    
    document.getElementById("choice1").style.display="none";
    document.getElementById("choice2").style.display="none";
    document.getElementById("choice3").style.display="block";
    document.getElementById("choice4").style.display="none";
    document.getElementById("choice5").style.display="none";
    document.getElementById("choice6").style.display="none";
}

function choose4(){ 
    let selected = document.querySelector("#choice4");
    selected.classList.add("reviewbody");
    
    document.getElementById("choice1").style.display="none";
    document.getElementById("choice2").style.display="none";
    document.getElementById("choice3").style.display="none";
    document.getElementById("choice4").style.display="block";
    document.getElementById("choice5").style.display="none";
    document.getElementById("choice6").style.display="none";
}

function choose5(){ 
    let selected = document.querySelector("#choice5");
    selected.classList.add("reviewbody");
    
            document.getElementById("choice1").style.display="none";
            document.getElementById("choice2").style.display="none";
            document.getElementById("choice3").style.display="none";
            document.getElementById("choice4").style.display="none";
            document.getElementById("choice5").style.display="block";
            document.getElementById("choice6").style.display="none";
}

function choose6(){ 
    let selected = document.querySelector("#choice6");
    selected.classList.add("reviewbody");
    
            document.getElementById("choice1").style.display="none"; 
            document.getElementById("choice2").style.display="none";
            document.getElementById("choice3").style.display="none";
            document.getElementById("choice4").style.display="none";
            document.getElementById("choice5").style.display="none";
            document.getElementById("choice6").style.display="block";
}


//The next 3 sections create a table from the array in the list for the Authors page
//You can also see my attempt to have a link to the authors website created but each time it did
//not work
var romanceAuthors = document.getElementById("romance");
var romanceAuthorsList = ["Diana Gabaldon", "Outlander","Nora Roberts", "Key of Light", "J. S. Lee", "Onyx: Truth"];
var romanceLen = romanceAuthorsList.length;
var i = 0;
while(i < romanceLen){
    var row = romanceAuthors.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    cell1.innerHTML = romanceAuthorsList[i];
    i++; 
    cell2.innerHTML = romanceAuthorsList[i];
    i++;
}


var sciFiAuthors = document.getElementById("scifi");
var sciFiAuthorsList = ["Anne McCaffery", "Dragonflight", "Charissa Dufour", "Trust & Treachery(Echos of Sol Book 1", "Janet Edwards", "Hive Mind: Telepath"];
var sciFiLen = sciFiAuthorsList.length;
var j = 0;
while(j < sciFiLen){
    var row = sciFiAuthors.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    cell1.innerHTML = sciFiAuthorsList[j];
    j++;
    cell2.innerHTML = sciFiAuthorsList[j];
    j++;
}

var fantasyAuthors = document.getElementById("fantasy");
var fantasyAuthorsList = ["Mercedes Lackey", "Storm Warning", "Patricia Briggs", "Moon Callled", "Karen Lynch", "Pawn"];
var fantasyLen = fantasyAuthorsList.length;
var k = 0;
while(k < fantasyLen){
    var row = fantasyAuthors.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    cell1.innerHTML = fantasyAuthorsList[k];
    k++;
    cell2.innerHTML = fantasyAuthorsList[k];
    k++;
}

//This last function is a validator for the About me page

function validation(){
    var name = document.forms["contact"]["Name"].value;
    var mail = document.forms["contact"]["Email"].value;
    var mailValidator = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    var nameField = 0;
    var mailField = 0;

    if(name == ""){
        document.getElementById("nError").style.display = "contents";
        nameField = 1;
    }else{
        document.getElementById("nError").style.display = "none";
    }

    if(mail.match(mailValidator)){
        document.getElementById("mError").style.display = "none";
    }else{
        document.getElementById("mError").style.display = "contents";
        mailField = 1;
    }

    if(nameField == 1 || mailField == 1){
        return false;
    }else{
        return true;
    }
}