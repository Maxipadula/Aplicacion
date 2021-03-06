var audio;
var path;
var temas;
var playlist;
var progress;
var duracion;

function llamadaAjax(metodo,param) {
    $.ajax({
        url: 'getTema?tema='+param,
        type: metodo,
        dataType: "text",
        success: function (data)
        {
        	
        	audio.src = $('#path').attr('value')+"\/"+data+"";
        	audio.value = data;

        	audio.play();
  	
        },
        error: function (xhr, ajaxOptions, thrownError) {
        }
    });
}


function stop(){
	audio.pause();
	$('#progress').attr("class","progress-bar progress-bar-danger");
	
};

function play(){
	audio.play();
	$('#progress').attr("class","progress-bar ");
};

function time(){
	return audio.currentTime;
};


$(document).ready(function() {

audio 		= document.getElementById('reproductor');
progress	= document.getElementById('progress');
path 		= $('#path');
temas 		= $('#playList li a');
playlist 	= $.makeArray(temas);

initPlaylist();



function initPlaylist(){

	
	llamadaAjax("GET",playlist[0].name);
	
	
	audio.addEventListener('ended',function(e){
		
		var len = playlist.length;
		var canciones = [];
		var temaSonando;
		var numeroTemaSonando;
		var temaAReproducir;
		
		$.each(playlist, function(i) {
		    
			canciones[canciones.length] = playlist[i].name;
		
		});
		
		temaSonando = audio.value;
		numeroTemaSonando = canciones.indexOf(temaSonando);
		temaAReproducir;


		if(numeroTemaSonando == len-1){
			temaAReproducir = 0;

		} else {
			temaAReproducir = numeroTemaSonando +1;

		}
		
		llamadaAjax("GET",playlist[temaAReproducir].name);
	});
	
	audio.addEventListener('loadedmetadata', function () {
	    duracion = this.duration;
	}, false);

	
	/*
	$('#reproductor').change(function(){
		$('#tituloReproductor').html(audio.value);
	});
	
	*/
	audio.ontimeupdate = function(){progresarBarra()};
	
	function progresarBarra(){
		
		var curtime;
		var percent;
		
		curtime = time();
		
	    percent = Math.round((curtime * 100) / duracion);
	    progress.style.width = percent + '%';
	   // handler.style.left = percent + '%';
	};


}



});


