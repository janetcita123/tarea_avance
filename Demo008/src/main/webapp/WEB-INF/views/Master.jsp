<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema de Atenciones Odontologicas</title>
</head>
<body>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/bootstrap/css/NavBar.css">

  
</head>
<body> 
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner"> 
   <div style="padding-left:80%;text-align:center; "><label style="color:#E0EAFF;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:small;"> ${nombres}</label><br>
	<label style="color:#E0EAFF;font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-size:small;">${rol}</label>
 </div>
  <div class="container" style="width: 80%">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./" class="navbar-brand" style="font-size:large;">ATENCIONES ODONTOLOGICAS</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li class="active">
          <a href="#">Atencion</a>
        </li>
				 
        <li>
          <a href="#">Pacientes</a>
        </li>
        <li>
          <a href="#">Consultas</a>
        </li>
        <li >
          <a href="#">Cuenta</a>
        </li>
      </ul>
    </nav>
   
  </div>
 
</header>  <br><br><br><br><br><br>

</body>
</html>