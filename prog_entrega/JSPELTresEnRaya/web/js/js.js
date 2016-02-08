var unClick = true;
function colocar(id) {
     var jugada = id.getAttribute('ID');
    if (unClick){
        id.innerHTML = "<img src='img/x.png'>" + 
            "<input type='hidden' name='jugadas' value="+jugada+" />";
    unClick = false;
    } else {
        if (id.childElementCount === 2){
           id.innerHTML = "";
           unClick = true;      
        }
          
    }
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


