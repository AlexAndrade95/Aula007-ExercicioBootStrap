<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 19:34:40
    Author     : alex_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String errorMessage = null;
boolean hasParameters = request.getParameter("somar")!=null;
double n1=0, n2=0, soma=0, n3=0;
if(hasParameters){
try{
n1 = Double.parseDouble(request.getParameter("n1"));
n2 = Double.parseDouble(request.getParameter("n2"));
n3 = Double.parseDouble(request.getParameter("n3"));
soma = n3* (Math.pow((1 + n1/100), (n2 * 1))) - n3;
}catch(Exception ex){
errorMessage = "Erro ao tentar ler parâmetros";
}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@include file="WEB-INF/jspf/navbar.jspf" %>
<title>Juros Composto- JavaEE JSP</title>
</head>
<body>
<h1>JavaEE</h1>
<h2>JSP</h2>
<h3>Juros</h3>
<%if(errorMessage!=null){%>
<div style="color: red"><%= errorMessage %></div>
<%}else if(hasParameters){%>
<div><%=soma%> % </u></div>
<hr/>
<%}%>
<form action="jurosCompostos.jsp">
<input type="number" name="n1" value="<%= n1 %>"/>+
<input type="number" name="n2" value="<%= n2 %>"/>
<input type="number" name="n3" value="<%= n3 %>"/>+
<input type="submit" name="somar" value="="/>
</form>
</body>
</html>

