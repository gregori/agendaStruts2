<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Edita Contato</title>
    <link href="css/jquery-ui.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
  </head>
  <body>
  	<c:import url="cabecalho.jsp"></c:import>
    <h1>Adiciona Contatos</h1>
    <hr/>
    <form action="adicionaContato" method="POST">
    	Nome: <input type="text" name="nome" value="${contato.nome}"><br>
    	E-mail: <input type="text" name="email" value="${contato.email}"><br>
    	Endereço: <input type="text" name="endereco" value="${contato.endereco}"><br>
    	Data de Nascimento: <agenda:campoData id="dataNascimento"></agenda:campoData><br>
    	
    	<input type="submit" value="Gravar">
    </form>
    <c:import url="rodape.jsp"/>
  </body>
</html>