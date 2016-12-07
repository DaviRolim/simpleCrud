<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Read</title>
<c:url value="/resources/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" >
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" >
</head>
<body>

<h1>Lista de Usuários</h1>

<table class="table table-striped table-hover">

<tr>
<th>Nome </th>
<th>Email </th>
<th>Celular </th>
<th>CPF </th>
</tr>

<c:forEach items="${usuarios }" var="usuario">
<tr>
<td>${usuario.nome}</td>
<td>${usuario.email}</td>
<td>${usuario.celular}</td>
<td>${usuario.cpf}</td>

<td>
		<span>
			<a href='<c:url value="/crud/delete/${usuario.id}"  />' >[Deletar]</a>
			<a href='<c:url value="/crud/update/${usuario.id}"  />' >[Update]</a>
			
		</span>
</td>

</tr>

</c:forEach>

</table>
<div class="text-center">
<a href="/mycrud"><button type="button" class="btn btn-default">Voltar</button></a>
</div>

</body>
</html>