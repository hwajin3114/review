<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
	integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
	crossorigin="anonymous"></script>
<style>
html, body {
	height: 100%;
}

.row {
	margin-bottom: 10px;
}

[class|="col"] {
	background: #2db34a;
	border: 1px solid #eaeaed;
	font-size: .8em;
	line-height: 50px;
	text-align: center;
	color: white;
	font-weight: 700;
}
</style>
</head>
<body>
	<div style="height: 100%; width: 100%;">	<!-- class="container-fluid" -->
		<div class="header" style="height: 80px;">
			<div style="background-color: yellowgreen"><button>test</button></div>
			<div style="background-color: lightpink">tab</div>
		</div>
		<div class="row content" style="height: 90%;">
			<div class="col-3">col1</div>
			<div class="col-3">col2</div>
			<div class="col-3">col3</div>
			<div class="col-3">col4</div>
		</div>
	</div>
</body>