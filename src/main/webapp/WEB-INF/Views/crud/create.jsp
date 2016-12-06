<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create</title>
</head>
<body>
<h1>${cadastrar}</h1>
<h3>${sucesso}</h3>
<c:url value="/crud/create" var="urlformulario"/>
	<form action="${urlformulario}" method="post">
	
	
	<label>Nome</label>
	<input type="text" name="nome">
	<br>
	<label>Email</label>
	<input type="text" name="email">
	<br>
	<label>CPF</label>
	<input type="text" name="cpf">
	<br>
	<label>Celular</label>
	<input type="text" name="celular">
	<br>
	
	<button type="submit">Submeter</button>
	
	</form>

</body>
</html>