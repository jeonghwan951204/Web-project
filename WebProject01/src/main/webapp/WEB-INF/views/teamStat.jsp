<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	StringBuffer TeamTable = (StringBuffer)request.getAttribute("TeamTable");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html {
	background: url('./images/main.jpg') no-repeat center center fixed;
	background-size: cover;
}

table {
  border-collapse: collapse;
  width: 70%;
	height: 300px;
}

th, td {
  text-align: left;
  padding: 8px;
  
}

tr, a {color: #f2f2f2;}

</style>
</head>
<body>
<%=TeamTable %>
</body>
</html>