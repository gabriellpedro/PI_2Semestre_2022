var tinyslider = document.querySelector(".tinyslider");
var items = tinyslider.getAttribute("data-items");
var autoplay = tinyslider.getAttribute("data-autoplay");
var slideby = 1 / items;
var slidespeed = tinyslider.getAttribute("data-slidespeed");
org_html = document.querySelector(".tinyslider").innerHTML;
new_html = "<div class='slides'>" + org_html + "</div>";
document.querySelector(".tinyslider").innerHTML = new_html;
var sliderwrapper = document.querySelector(".slides");
var slides = document.getElementsByClassName("tinyslide");
var slidenum = slides.length;
var wrapperwidth = tinyslider.offsetWidth;
var sliderwidth = (slidenum * wrapperwidth) / items;
var nav = document.createElement("ul");
nav.setAttribute("class", "nav");
nav.innerHTML =
    '<li class="nav-prev"><a href="javascript:void(0)" onclick="backward()"><</a></li><li class="nav-next"><a href="javascript:void(0)" onclick="forward()">></a></li>';
document.querySelector(".tinyslider").appendChild(nav);
var prev = document.querySelector(".nav-prev");
var next = document.querySelector(".nav-next");
for (var i = 0; i < slidenum; i++) {
    slides[i].setAttribute("style", "width:" + wrapperwidth / items + "px");
}
sliderwrapper.setAttribute(
    "style",
    "width:" + sliderwidth + "px; transition:" + slidespeed + ""
);
var count = 1;
function backward() {
    if (count > 1) {
        count--;
        sliderwrapper.style.transform =
            "translateX(-" + wrapperwidth * (count - 1) * slideby + "px)";
    } else {
        count = slidenum / items / slideby - items + 1;
        sliderwrapper.style.transform =
            "translateX(-" + wrapperwidth * (count - 1) * slideby + "px)";
    }
}
function forward() {
    if (count < slidenum / items / slideby - items + 1) {
        sliderwrapper.style.transform =
            "translateX(-" + wrapperwidth * (count - 1) * slideby + "px)";
        count++;
    } else {
        count = 1;
        sliderwrapper.style.transform = "translateX(0px)";
    }
}
if (autoplay) {
    setInterval(forward, 5000);
}
tinyslider.addEventListener("mouseover", function () {
    clearInterval();
});

const urlParams = new URLSearchParams(window.location.search);
const pageParam = urlParams.get("page");
console.log(pageParam);

if (pageParam > 1) {
    const element = document.getElementById("all-books");
    element.scrollIntoView(true);
}
