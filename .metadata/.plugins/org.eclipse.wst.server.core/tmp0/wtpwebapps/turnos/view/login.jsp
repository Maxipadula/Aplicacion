<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login/form-elements.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/login/font-awesome.min.css" />

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/login/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/login/scripts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>



<title>Login</title>
</head>
<body>


	 <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Turnos</strong> </h1>
                            <div class="description">
                            	<p>
	                            	Bienvenido al sistema de reserva de <strong>turnos online</strong>. Si usted conoce su clave, <br/>
	                            	por favor complete para entrar:
	                            	
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login!!</h3>
                            		<p>Ingres� tu Usuario y Contrase�a para loguearte:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form:form role="form" action="" method="post" commandName="login" class="login-form" id="form">
			                    	<div class="form-group">
			                    		<form:label class="sr-only" path="usuario" for="usuario">Usuario</form:label>
			                        	<form:input type="text" path="usuario" name="form-username" placeholder="Usuario..." class="form-username form-control" id="form-username"/>
			                        	
			                        </div>
			                        
			                        <div class="form-group">
			                        	<form:label class="sr-only" path="clave" for="form-password">Contrase�a</form:label>
			                        	<form:input type="password" path="clave" name="form-password" placeholder="Contrase�a..." class="form-password form-control" id="form-password"/>
			                        </div>
			                        <button type="submit" class="btn">Enviar!</button>
			                    </form:form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
           
        </div>

</body>
</html>