<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>
<title>Insert title here</title>
</head>
<body>


<form class="form-horizontal" action="../AdminController" method="post">
<fieldset>

<!-- Form Name -->
<legend>Formulario de administrador</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Usuario</label>  
  <div class="col-md-2">
  <input id="" name="user" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Contraseña</label>
  <div class="col-md-2">
    <input id="" name="pw" type="password" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button id="" name="entrar" class="btn btn-primary">Entrar</button>
  </div>
</div>

</fieldset>
</form>


</body>
</html>