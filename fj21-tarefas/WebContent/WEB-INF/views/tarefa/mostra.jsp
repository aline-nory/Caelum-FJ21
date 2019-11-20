
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		
		<input  type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição: <br /> 
		<textarea name="descricao" cols="100" rows="5"><%-- 
		--%>${tarefa.descricao}<%-- 
		--%></textarea>
		<br /> 
		
		Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : '' } /> <br /> 
		
		Data de Finalização: <br /> 	
		<input type="text" name="dataFinalizacao"
			value="<fmt:formatDate
				value="${tarefa.dataFinalizacao.time}"
				pattern="dd/MM/yyyy" />"/>
		<br /> 
		
		<input type="submit" value="Alterar"/>
	
	</form> 

</body>
</html>