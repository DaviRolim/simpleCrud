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
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="text-center">
				<h1>Lista de Usuários</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-8 col-xs-12 col-sm-offset-2">
				<table class="table table-striped table-hover table-bordered">

					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>Celular</th>
						<th>CPF</th>
						<th>Ação</th>
					</tr>

					<c:forEach items="${usuarios }" var="usuario">
						<tr>
							<td>${usuario.nome}</td>
							<td>${usuario.email}</td>
							<td>${usuario.celular}</td>
							<td>${usuario.cpf}</td>

							<td>
							<div class="btn-group">
									<a id="deletarId" class="btn btn-default" href='<c:url value="/crud/delete/${usuario.id}"  />'>Deletar</a>
									<a class="btn btn-success" href='<c:url  value="/crud/update/${usuario.id}"  />'>Update</a>
							</div>
							</td>

						</tr>

					</c:forEach>

				</table>
			</div>
		</div>
		<div class="text-center">
			<a href="/mycrud/crud/create"><button type="button"
					class="btn btn-default">Cadastrar</button></a>
		</div>
	</div>
<c:url value="/resources/js" var="jsPath" />
<script src="${jsPath}/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("td:first-child").hover(function () {
			$(this).css("border", "0.3px solid black").animate({borderWidth: 1}, 100);

		}, function () {
			$(this).animate({borderWidth: 0}, 150);
		});
	});

</script>

</body>
</html>