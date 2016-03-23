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
    	<s:textfield key="contato.nome" name="nome" />
    	<s:textfield key="contato.email" name="email" />
    	<s:textfield key="contato.endereco" name="endereco" label="Endereço" />
    	<s:datetextfield label="Data de Nascimento" key="contato.dataNascimento" 
    		name="dataNascimento" format="dd/MM/yyyy" />
    	<s:if test="#id != 0">
    		<s:hidden name="id" key="contato.id" />
    	</s:if>
    	<s:submit key="submit" name="Gravar" /> 
    </s:form>
  </body>
</html>