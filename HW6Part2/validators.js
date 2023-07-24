//Bernadette Asoanab
//IFT301
//2/21/2021

//This is a function to validate user input
function validate(){//These are the variables from the user input to be evaluated
    var fname = document.forms["validator"]["fname"].value;
    var lname = document.forms["validator"]["lname"].value;
    var ccnmber = document.forms["validator"]["ccnmber"].value;
    var fnfield = 0;
    var lnfield = 0;
    var ccfield = 0;
    
    //This compares the name that was entered. If the name does not meet the requirements it will 
    //return an error message
    if (fname == "" || fname > 25){
        document.getElementById("fnerror").style.display = "contents";
        fnfield = 1;
    }else{
        document.getElementById("fnerror").style.display = "none";
    }
    
    //The same as the first. If input is invalid an error message will display 
    if (lname == "" || lname > 25){
        document.getElementById("lnerror").style.display = "contents";
        lnfield = 1;
    }else{
        document.getElementById("lnerror").style.display = "none";
    }

    //This will evaluate a Credit Card number to make sure the right number of digits are entered
    if (ccnmber.toString().length != 16){
        document.getElementById("ccerror").style.display = "contents";
        ccfield = 1;
    }else{
        document.getElementById("ccerror").style.display = "none";
    }

    //If any of the above conditions fail then the error message will appear
    if (fnfield == 1 || lnfield == 1 || ccfield ==1){
        return false;
    }else{
        return true;
    }
}


