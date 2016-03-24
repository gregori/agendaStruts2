<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="agenda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <s:head/>
    <title>Edita Contato</title>
    <link href="css/jquery-ui.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
  </head>
  <body>
    <h1>Adiciona Contatos</h1>
    <hr/>
    <s:form action="criaEditaContato" method="post">
    	<s:textfield key="contato.nome" label="Nome" />
    	<s:textfield key="contato.email" label="E-mail" />
    	<s:textfield key="contato.endereco" label="Endereço" />
    	<s:date name="contato.dataNascimento" var="fmtDataNascimento" format="dd/MM/yyyy" />
    	<s:textfield label="Data de Nascimento" name="contato.dataNascimento" 
    		value="%{#fmtDataNascimento}" />
    	<s:if test="#id != 0">
    		<s:hidden key="id" />
    	</s:if>
    	<s:submit value="Gravar" /> 
    </s:form>
  </body>
</html>