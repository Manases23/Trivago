<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	<link rel="stylesheet" href="css/estilo.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>
<title>Index</title>
</head>
<body>
	<div class="row">
		<div id="imagen" class="text-center">
			<img width="115" src="http://logonoid.com/images/trivago-logo.png">
		</div>
	</div>

	<div class="container-fluid">

		<div class="row buscador">

			<div class="col-md-3"></div>
			<div class="col-md-6">
<form action="BuscadorController" method="post">
				<div class="input-group custom-search-form">
					<input name="buscar" type="text" class="form-control" placeholder="Ej:Madrid">
					<span class="input-group-btn">
						<button type="submit" class="btn btn-primary btn-md">Buscar</button>
						<span class="glyphicon glyphicon-search"></span> <br>

					</span>
				</div>
				<div class="text-center">
					<input name="nombrehotel" type="text"
						placeholder="Ej:Hotel Emperador"> <select
						name="tipoalojamiento">
						<option value="1">Hotel</option>
						<option value="2">Hostal</option>
						<option value="3">Parador</option>
						<option value="4">Casa rural</option>
					</select> <select name="categoria">
						<option value="1">3 estrellas</option>
						<option value="2">4 estrellas</option>
						<option value="3">5 estrellas</option>
					</select>
				</div>
</form>
			</div>
			<div class="col-md-3"></div>

		</div>
		<br>
		<br>
		<br>









		<!-- 		Segundo buscador -->


		<div id="buscadorinutil" class="row text-center">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2 id="colorletra">Encuentra tu hotel ideal</h2>
				<h2 id="colorletra">al mejor precio</h2>
				<br>
				<div class="input-group custom-search-form" id="inputinutil">
					<input type="text" class="form-control" placeholder="Ej:Madrid">
					<span class="input-group-btn">
						<button type="submit" class="btn btn-primary btn-md">Buscar</button>
						<span class="glyphicon glyphicon-search"></span>

					</span>
				</div>
			</div>
			<div class="col-md-3"></div>

		</div>

	</div>
</body>
</html>