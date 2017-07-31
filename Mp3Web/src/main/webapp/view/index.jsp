<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css" />
	


<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>  



<html>

<body>


<div id="about" class="container-fluid">
	
	<div class="row">
	
		<div class="col-sm-6 text-center" >
			<h2>Rockola!</h2>
			<div class="list-group">
				<c:forEach items="${cancion.getListaDeTemas()}" var="item">
			  		<a id="cancion" class="list-group-item" onClick="llamadaAjax('GET','${item.nombre}');" role="button">${item.nombre}</a>
				</c:forEach>
			</div>
	
			<div class="panel-group">
				<div class="panel panel-primary">
				  <div class="panel-heading">
				  	<h4 class="panel-title">
				  		Reproduccion
				  	</h4>
				  </div>
				  
			  	<div class="panel-body">
			  		<audio  id="reproductor" controls> </audio>
			  	</div>
			  	<button onClick="play()"><span class="glyphicon glyphicon-play"></span></button>
				<button onClick="stop()"><span class="glyphicon glyphicon-pause"></span></button>
			  </div>
			  <div id="prueba"></div>
			</div>
			
		</div>

	</div>
	
</div>
<script type="text/javascript"> 

var audio = document.getElementById('reproductor');


function stop(){
	audio.pause();
};

function play(){
	audio.play();
};

function llamadaAjax(metodo,param) {
    $.ajax({
        url: 'getTema?tema='+param,
        type: metodo,
        dataType: "text",
        success: function (data)
        {
		
        	 $('#reproductor').attr("src","${cancion.getPathMusica()}"+"\/"+data+"");
        	 play();
        },
        error: function (xhr, ajaxOptions, thrownError) {
        }
    });
}




</script>

</body>
</html>
