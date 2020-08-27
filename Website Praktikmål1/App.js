function Hover1() {
    document.querySelector(".HoverImage").style.visibility = "visible";
  
}
function Hover1hide() {
    document.querySelector(".HoverImage").style.visibility = "hidden";
}
function Hover2() {
    document.querySelector(".HoverImage2").style.visibility = "visible";
  
}
function Hover2hide() {
    document.querySelector(".HoverImage2").style.visibility = "hidden";
}
function Hover3() {
    document.querySelector(".HoverImage3").style.visibility = "visible";
  
}
function Hover3hide() {
    document.querySelector(".HoverImage3").style.visibility = "hidden";
}
function Hover4() {
    document.querySelector(".HoverImage4").style.visibility = "visible";
  
}
function Hover4hide() {
    document.querySelector(".HoverImage4").style.visibility = "hidden";
}
function Hover5() {
    document.querySelector(".HoverImage5").style.visibility = "visible";
  
}
function Hover5hide() {
    document.querySelector(".HoverImage5").style.visibility = "hidden";
}
function Hover6() {
    document.querySelector(".HoverImage6").style.visibility = "visible";
  
}
function Hover6hide() {
    document.querySelector(".HoverImage6").style.visibility = "hidden";
}
function Hover7() {
    document.querySelector(".HoverImage7").style.visibility = "visible";
  
}
function Hover7hide() {
    document.querySelector(".HoverImage7").style.visibility = "hidden";
}

//Clicking on enter it will search


function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('li');

    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}