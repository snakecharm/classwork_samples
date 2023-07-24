var table = document.getElementById("ingredients");//identifies teh table
var listOfIngredients = ["olive oil", "potatoes", "onion", "eggs", "salt", "peper"];//array of ingredients
var ingredientLen = listOfIngredients.length;//length of the array for loop
var i = 0;
while(i < ingredientLen){//while loop to itterate over the array and add a row with a new cell containing the object to the table
    var row = table.insertRow(-1);
    var cell = row.insertCell(0);
    cell.innerHTML = listOfIngredients[i];
    i++;
}