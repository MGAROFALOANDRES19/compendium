//var menu = document.getElementById('main-navigation');

$(document).ready(function(){
	/*
	var menu_ = $("#nav-main-menu");

	var menu1 = $(".mynavbar");*/


	var content = $("#content-main_");

	var menu = document.getElementsByClassName("mynavbar");
	if(menu[1]!=null)
		var menuPosition = menu[1].getBoundingClientRect().top;

	/*var panel = document.getElementById("panel-pdf")
	if(panel!=null)
		var panelPosition = panel.getBoundingClientRect().top;*/

	var main = $(".mynavbar")

	window.addEventListener('scroll', function() {

		//console.log("window "+window.pageYOffset)
		//console.log("menu: "+menuPosition)
		//console.log(menu)

		/*if(panelPosition!=null){
			console.log(window.pageYOffset)
			if (window.pageYOffset >= panelPosition ) {
				//console.log(panelPosition)

				$("#panel-pdf").addClass("fixed-item")

			}else{

				$("#panel-pdf").removeClass("fixed-item")
			}
		}*/
		if (window.pageYOffset >= menuPosition  && $(window).width()>= 767 && window.pageYOffset>=131) {
			//console.log("Hola");
			//console.log("pageYOffset: "+window.pageYOffset);
			content.css("margin-left", "235px");
			//content.css("width", "100%")

			main[1].style.position = "fixed"
			main[1].style.top = 0;


			//$(".mynavbar").addClass("fixed-menu");
		}else{

			main[1].style.position = "relative"
			content.css("margin-left", "0");

		}

		//var menu__ = document.getElementById("nav-main-menu");
		//menu__.style.display='none';
		//menu.style.position = "fixed";
		//menu.style.top = '0px';
		//menu_.addClass("fixed-menu");
		//menu1[0].style.background = "red"
		//main.css("background", "red");

	});


});

//var menu = $("#nav-main")[0];

//console.log(main);

//var menuPosition = $("#nav-main")[0].getBoundingClientRect().top;
//var menuPosition = menu.clientRect();
//var menuPosition = menu.getBoundingClientRect().top;


/*$("#nav-main").css({
        	"position": "fixed",
        	"top": "0",
        	"width": "100%",
        	"background": "red",
        });
$(".telefono").css("width", "1000px");*/
	//console.log("ancho: "+$(window).width()  767px)
    /*if (window.pageYOffset >= menuPosition  && $(window).width()>= 767) {
        //menu.style.position = 'fixed';


        //main.css("margin-left", "235px");
        //main.css("width", "100%");
        //main.css("background", "red");
        console.log("ok"+menuPosition);
    } else {
        menu.style.position = 'relative';
        menu.style.top = '';
        menu.style.zIndex = "3";
        //main.css("margin-left", "0");
        //main.css("background", "green");
    }*/
