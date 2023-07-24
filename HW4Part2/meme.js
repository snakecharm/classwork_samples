var memeName = 'Why Are You Running?'; //Meme that I choses
var reason = 'it was often used in relation to new players in Final Fantasy XIV who would run from the group into danger.';
var year = 2018; 

var sentance = 'The first time I saw '+memeName+' was in '+year+' and I like it because '+reason
//complete statement on why I like the meme

var namePlaceholder = document.getElementById('title');
namePlaceholder.textContent = memeName; //sets the heading of the page
var sentancePlaceholder = document.getElementById('statement');
sentancePlaceholder.textContent = sentance; //sets the full statement in the paragraph