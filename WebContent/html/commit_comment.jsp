<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Db.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
String title=request.getParameter("title");
String content=request.getParameter("content");
String user_id=session.getAttribute("user_id").toString();
Dbutil util=new Dbutil();
String sql="";
sql="insert into comment(title,content,author_id,commit_time)values('"+title+"','"+content+"','"+user_id+"',NOW()) ";
util.update(sql);
%>
</body>
<script type="text/javascript">
window.location.href="html_kclt.jsp";
</script></html>