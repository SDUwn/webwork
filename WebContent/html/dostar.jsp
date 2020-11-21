<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Db.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 </head>
<body>
<%
String user_id=session.getAttribute("user_id").toString();
String comment_id=request.getParameter("comment_id");
Dbutil util=new Dbutil();
String sql="insert into star(comment_id,user_id,star_time) values('"+comment_id+"','"+user_id+"',NOW() )  ";
util.update(sql);
 %>
<script type="text/javascript">
window.history.back();
</script>
</body>
</html>