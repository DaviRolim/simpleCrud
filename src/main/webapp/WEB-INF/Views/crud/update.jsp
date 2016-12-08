<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">
</head>
<body>
	<div style="width:100%; height: 40px; background-color: grey;"></div>
	<div class="container-fluid">
	<div style="background-color: lightgrey; margin-left: 25%; margin-right:25%;">
		<div class="text-center">
			<c:url value="/crud/update" var="urlformulario" />
			<form action="${urlformulario}/${usuario.id}" method="post" class="form-group">
			<fieldset>
			<legend>Atualizar Usuário</legend>
			<input type="hidden" value="${usuario.id}">

				<div style="margin-left:20%; margin-right:20%;">
					<label>Nome</label> 
					<input type="text" name="nome" class="form-control" value="${usuario.nome }" autofocus> <br> 
					<div class="form-group">
						<label>Email</label>
						<div class="input-group">
						<span class="input-group-addon">@</span>
						<input	type="text" name="email" value="${usuario.email }" class="form-control"> <br>
						</div>
					</div>
					<label>CPF</label>
					<input type="text" name="cpf" class="form-control" value="${usuario.cpf }"> <br>
					<label>Celular</label> 
					<input type="text" name="celular" value="${usuario.celular }" class="form-control"> <br>
				</div>
				<div class="clearfix"></div>
				
				<div class="btn-group">
				<button type="submit" class="btn btn-primary">Atualizar</button>
				<a class="btn btn-default" href="/mycrud/crud/read">Voltar</a>
				</div>
		</fieldset>
			</form>
	</div>
		</div>
	</div>
</body>
</html>