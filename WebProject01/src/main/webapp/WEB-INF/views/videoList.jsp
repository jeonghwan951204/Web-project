<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.project01.VideoTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	ArrayList<VideoTO> lists = (ArrayList)request.getAttribute("lists");
    
		for( VideoTO list : lists ){
			String thumb = list.getThumb();
			String src = list.getSrc();
			String subject = list.getSubject();
			String writer = list.getWriter();
			int hit = list.getHit();
		
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


</style>
</head>
<body>
<!-- 상단 디자인 -->
<div class="con_title">
	<h3>동영상 게시판</h3>
	
</div>
<div style="position: relative; width: 100%; height: 120px; border-top: 1px solid black " >
	<div style="position:absolute; left:80px; top:4px; width:140px; height:100px; overflow:hidden; text-align:center; border:1px solid silver;">
		<a href="https://www.youtube.com/watch?v=<%=src%>"><img src="https://img.youtube.com/vi/<%=src%>/0.jpg" width="140" height="100"></a>	
	</div>
	<div style="position:absolute; left:240px; top:4px; width:515px; height:110px; overflow:hidden;">
		<span style="color:#2955BC; font-size:14pt; text-decoration:none;"><a style="text-decoration:none;" href="https://www.youtube.com/watch?v=<%=src%>"><b><%=subject %></b></a></span>
		<br><br>
		<span style="font-size: 12px; line-height: 5px;"><%=writer%><br><%=hit%><span>
	</div>
</div>
</body>
</html>
<% } %>
