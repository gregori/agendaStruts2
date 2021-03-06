<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos</title>
</head>
<body>
  <h2>
    <s:property value="mensagem"/>
  </h2>
  <a href="editaContato">Novo Contato</a>
  <table>
    <thead>
      <tr>
        <th>Nome</th>
        <th>E-Mail</th>
        <th>Endereço</th>
        <th>Data de Nascimento</th>
        <th colspan="2">Ações</th>
      </tr>
    </thead>
    <s:iterator value="contatos" status="id">
      <s:if test="#id.even == true">
        <s:set var="bgColor" value="%{'aaee88'}" />
  	  </s:if>
  	  <s:else>
  	    <s:set var="bgColor" value="%{'ffffff'}" />
  	  </s:else>
  	  <tr bgcolor="<s:property value="bgColor"/>">
  	    <td><s:property value="nome"/></td>
  	    <td>
		  <s:if test="%{email != '' && email != null}">
  			<a href="mailto:'<s:property value="email"/>'">
  			  <s:property value="email"/>
  			</a>
  		  </s:if>
  		  <s:else>
			E-mail não informado
		  </s:else>
		</td>
	    <td><s:property value="endereco"/></td>
	    <td>
	      <s:date name="dataNascimento.time" format="dd/MM/yyyy"/>
	    </td>
			<s:url id="editar" action="editaContato" var="editUrl">
				<s:param name="id">
					<s:property value="id" />
				</s:param>
			</s:url>
			<s:url id="remover" action="removeContato" var="removeUrl">
				<s:param name="id">
					<s:property value="id" />
				</s:param>
			</s:url>
		<td>
		  <a href='<s:property value="#editUrl"/>'>Editar</a>
	    </td>
	    <td>
	      <a href='<s:property value="#removeUrl"/>'>Remover</a>
	    </td>
  	  </tr>
  	</s:iterator>
  </table>
</body>
</html>