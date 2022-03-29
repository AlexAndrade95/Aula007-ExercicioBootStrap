<%@page contentType="text/html" pageEncoding="UTF-8"%>
      
<%
String errorMessage = null;
boolean hasParameters = request.getParameter("somar")!=null;
double c=0, i=0, soma=0, t=0;
if(hasParameters){
try{

c = Double.parseDouble(request.getParameter("c"));
i = Double.parseDouble(request.getParameter("i"));
t = Double.parseDouble(request.getParameter("t"));
soma = (c*i*t)/100;
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
<title>Juros Simples- JavaEE JSP</title>
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

<form action="jurosSimples.jsp">
<input type="number" name="t" value="<%= t %>"/>+
<input type="number" name="c" value="<%= c %>"/>
<input type="number" name="i" value="<%= i %>"/>+
<input type="submit" name="somar" value="="/>
</form>
</body>
</html>