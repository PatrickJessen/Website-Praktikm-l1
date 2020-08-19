var hover = document.querySelector(".Ernæringsassistens");
var showImage = document.querySelector(".HoverImage");
var hover2 = document.querySelector(".Gastronom");
var showImage2 = document.querySelector(".HoverImage2");

hover.addEventListener('mouseover', function () {
    showImage.style.visibility = 'visible';
})

hover.addEventListener('mouseout', function () {
    showImage.style.visibility = 'hidden';
})

hover2.addEventListener('mouseover', function () {
    showImage2.style.visibility = 'visible';
})

hover2.addEventListener('mouseout', function () {
    showImage2.style.visibility = 'hidden';
})

