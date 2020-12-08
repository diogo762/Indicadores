<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Indicador de Erros Cresol</title>
</head>
<body>
	<center>
		<h1>Indicador de Erros Cresol</h1>
        <h2>
        	<a href="new">Adicione um novo erro</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">Listar todos os erros</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista de Erros</h2></caption>
            <tr>
                
                <th>Entregavel</th>
                <th>Erro</th>
                <th>Descricao</th>
                <th>Status</th>
                <th>Acao</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    
                    <td><c:out value="${user.entregavel}" /></td>
                    <td><c:out value="${user.erro}" /></td>
                    <td><c:out value="${user.descricao}" /></td>
                    <td><c:out value="${user.status}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${user.id}' />">Editar</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${user.id}' />">Deletar</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
