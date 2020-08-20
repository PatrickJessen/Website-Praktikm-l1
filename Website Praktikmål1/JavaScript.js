function dragStart(event) {
    event.dataTransfer.setData("Text", event.target.id);
    document.getElementById("demo").innerHTML = "Du er nu igang med at flytte teksten";
}

function allowDrop(event) {
    event.preventDefault();
}

function drop(event) {
    event.preventDefault();
    var data = event.dataTransfer.getData("Text");
    event.target.appendChild(document.getElementById(data));
    document.getElementById("demo").innerHTML = "Teksten blev Flyttet";
}