var menu = document.getElementById('mynavbar');

var main = $("#main-content");
//console.log(main);

var menuPosition = menu.getBoundingClientRect().top;
window.addEventListener('scroll', function() {

	console.log("window "+window.pageYOffset)
	console.log("menu: "+menuPosition)
	//console.log("ancho: "+$(window).width()  767px)
    if (window.pageYOffset >= 200) {
        menu.style.position = 'fixed';
        menu.style.top = '0px';
       // main.css("margin-left", "235px");
        //main.css("width", "100%");
        //main.css("background", "red");
    } else {
        menu.style.position = 'relative';
        menu.style.top = '';
        menu.style.zIndex = "3";
        //main.css("margin-left", "0");
        //main.css("background", "green");
    }
});
