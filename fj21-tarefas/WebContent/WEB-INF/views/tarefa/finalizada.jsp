<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
</head>
	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<td>${tarefa.id}</td>
		<td>${tarefa.descricao}</td>
		<td>Finalizado</td>
		<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /></td>
		<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
		<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
	</body>
</html>