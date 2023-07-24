
function chooseFunction(){ //This function is what will be called to get the choices
    var game = window.prompt("Choose a game:", "Kingdom Hearts, Final Fantasy 7 Remake, God of War");//prompt for the three choices
    game = game.toLowerCase(); //converts any string enterd to lower case
    switch(game){
        case "kingdom hearts": //First case
            document.getElementById("choice1").style.display="contents";//shows the first choice 
            document.getElementById("choice2").style.display="none";//sets the rest to not show on the page
            document.getElementById("choice3").style.display="none";
            document.getElementById("dchoice").style.display="none";
            break;
        case "final fantasy 7 remake":
            document.getElementById("choice1").style.display="none";//this block sets the second choice to show and removes the others
            document.getElementById("choice2").style.display="contents";
            document.getElementById("choice3").style.display="none";
            document.getElementById("dchoice").style.display="none";
            break;
        case "god of war":
            document.getElementById("choice3").style.display="contents";//This block shows the third choice and removes the others
            document.getElementById("choice1").style.display="none";
            document.getElementById("choice2").style.display="none";
            document.getElementById("dchoice").style.display="none";
            break;       
        default:
            document.getElementById("dchoice").style.display="contents";//Thsi is the default choice that will display if no correct answer given
            document.getElementById("choice1").style.display="none";
            document.getElementById("choice2").style.display="none";
            document.getElementById("choice3").style.display="none";
    }
}