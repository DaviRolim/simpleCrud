<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
</head>
<body>
<h1>Update user</h1>
<c:url value="/crud/update" var="urlformulario"/>
	<form action="${urlformulario}/${usuario.id}" method="post">
	
	<input type="hidden" value="${usuario.id}">
	
	<label>Nome</label>
	<input type="text" name="nome" value="${usuario.nome}">
	<br>
	<label>Email</label>
	<input type="text" name="email" value="${usuario.email }">
	<br>
	<label>CPF</label>
	<input type="text" name="cpf" value="${usuario.cpf }">
	<br>
	<label>Celular</label>
	<input type="text" name="celular" value="${usuario.celular }">
	<br>
	
	<button type="submit">Submeter</button>
	
	</form>

</body>
</html>