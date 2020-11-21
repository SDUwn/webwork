<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Db.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>处理登录</title>
</head>
<body>
<%
response.setContentType("text/html;charset=utf-8");  
request.setCharacterEncoding("utf-8");
 String name=request.getParameter("name");//获取name的参数值
 String password=request.getParameter("password");//获取password的参数值
%>

<%
 String queryNumberSQL="";
 ResultSet rs=null;
 int user_id=-1;
 Dbutil util=new Dbutil();
 queryNumberSQL="SELECT * from user where user_name='"+name+"' and password='"+password+"'";
 rs=util.query(queryNumberSQL);//执行数据库查询操作并获取结果集
 boolean flag=false;//初始化flag
 if(rs.next()){//判断结果
 flag=true;
 user_id=rs.getInt("user_id");
 session.setAttribute("user_name", name);//将name的内容赋值给UserName
 session.setAttribute("user_id", user_id);
 }else{
 flag=false;
 System.out.println("您的账号或者密码错误");
 }
%>
<%
 if(flag){
 %>
<jsp:forward page="index1.jsp"></jsp:forward>//跳转页面
<%
 }else{
%>
<jsp:forward page="login_failed.jsp"></jsp:forward>//跳转页面
<%
 }
util.close();
%>
</body>
</html>