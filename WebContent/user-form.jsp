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
		<c:if test="${user != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${user != null}">
            			Editar
            		</c:if>
            		<c:if test="${user == null}">
            			Adicionar Novo Erro
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${user != null}">
        			<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        		</c:if>            
            <tr>
                <th>Tarefa: </th>
                <td>
                	<input type="text" name="entregavel" size="45"
                			value="<c:out value='${user.entregavel}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Erro: </th>
                <td>
                	<input type="text" name="erro" size="45"
                			value="<c:out value='${user.erro}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Descricao: </th>
                <td>
                	<input type="text" name="descricao" size="45" 
                			value="<c:out value='${user.descricao}' />"
                	/>
                </td>
            </tr>
            
            <tr>
                <th>Status: </th>
                <td>
                	<input type="text" name="status" size="45" 
                			value="<c:out value='${user.status}' />"
                	/>
                </td>
            </tr>
            
            
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Salvar" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
