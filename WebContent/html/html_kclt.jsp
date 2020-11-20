<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Db.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <title>HTML课程论坛
      </title>
      <style>body { margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; font-size: 12px; } div { font-size: 12px; line-height: 15px; } body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, button, textarea, p, blockquote, th, td { margin: 0; padding: 0; list-style: none; } body { background-color: #e4ecf5; } table { font-size: 12px; line-height: 22px; } .box { background: #fff; } .box h3 { background: url(listTitle.png) no-repeat 0 0; height: 31px; font: bold 14px/38px 微软雅黑; color: #1876b4; padding: 0 0 0 12px; } .pagebox { overflow: hidden; zoom: 1; font-size: 12px; font-family: "宋体",sans-serif; } .box li { list-style: none; text-align: left; background: url(flag01.gif) no-repeat 2px 9px; height: 18px; overflow: hidden; padding: 4px 4px 6px 20px; margin: 0 2px; line-height: 180%; border-bottom: 1px dotted #ccc; } .box li span { float: right; color: #999; padding: 4px 4px 6px 20px; font: 12px Arial, Helvetica, sans-serif; } a:link { font-size: 12px; color: #000000; text-decoration: none; } .menu { padding: 0; } a:visited { font-size: 12px; color: #000000; text-decoration: none; } .menu a, .menu a:visited { display: block; border-bottom: dashed 1px #0099FF; height: 30px; font: 12px/30px Arial, Helvetica, sans-serif; text-align: left; padding: 0 0 0 30px; overflow: hidden; color: #1774b7; background: url(flag04.gif) no-repeat 12px center; } .STYLE5 { color: #1876b4; font-weight: bold; font-size: 14px; } .mainmenu a { font-size: 12px; float: left; text-decoration: none; letter-spacing: 1px; cursor: hand; line-height: 32px; display: block; width: 73px; color: #fff; text-align: center; } .mainmenu a:link { font-size: 12px; color: #fff; text-decoration: none; font-weight: bold; } .mainmenu a:visited { font-size: 12px; color: #fff; text-decoration: none; font-weight: bold; }</style>
        <style type="text/css">  body{font-size: 12px;} /*对整个标签,和表格 设置宽度为990像素*/ #discuss,#discuss-datas{ width: 990px; } #discuss div.mt{ /*高度,边框,背景*/ height: 30px; border: 1px solid #DDDDDD; border-top: 2px solid #999999; background: #f7f7f7; } #discuss-content{ border-bottom: 1px solid #DDDDDD; } #discuss-datas tr.header td{ /*加粗 上下内边距 下边框*/ font-weight: bold; padding: 5px 0; border-bottom: 1px solid #DDDDDD; color: #666666; } #discuss-datas td{ /*内容水平居中对齐*/ text-align: center; } #discuss-datas td.col1{ /*宽度,文本左对齐*/ width: 620px; text-align: left; } #discuss-datas tbody td{ /*文本颜色*/ color: #9c9c9c; } #discuss a{ /*改链接颜色 去掉下划线*/ text-decoration: none; color: #005aa0; } #discuss a:hover{ text-decoration: underline; } #discuss-datas tbody td{ /*上下内边距 下边框*/ padding: 5px 0px; border-bottom: 1px dotted #DDDDDD; } /*给论坛内容加标签 加图标*/ #discuss i{ /*左内边距 下内边距高度 背景图*/ padding-left: 21px; padding-bottom: 5px; background:url(img/c63802c9ee7e4ddec0e53e152e665ea.png) no-repeat; background-size: 100%; } #discuss div.mt a{ float:left; width: 100px; height: 30px; text-align: center; line-height: 30px; } #discuss div.mt a:hover{ text-decoration: none; color: #E4393C; } #discuss div.mt a.current{ border: 1px solid #DDDDDD; border-top: 2px solid #E4393C; border-bottom: 0; background: #ffffff; margin-top: -6px; height: 35px; line-height: 35px; color: #E4393C; }</style>
</head>
<body>
      <table width="900" align="center" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <td colspan="3">
              <table width="900" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                  <tr>
                    <td>
                      <table width="900" align="center" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                          <tr>
                            <td>
                              <table width="900" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                   
                                  <tr>
                                    <td align="center" valign="top">
                                      <table width="885" border="1" cellspacing="0" cellpadding="0">
                                        <tbody>
                                          <tr>
                                            <td height="36" align="center" background="style/mbg.jpg">
                                              <div>
                                                <a href="../course_html.html" target="_blank">网站首页</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="html_kcjj.html">课程简介</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="html_jxdg.html">教学大纲</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="html_jxkj.html">教学课件</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="html_spzl.html">视频资料</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="html_kclt.jsp">课程论坛</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                               </div>
                                              <table width="885" border="0" cellspacing="0" cellpadding="0">
                                              </table>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </td>
                                  </tr> 
                                </tbody>
                              </table>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
          <tr>
            <td align="center" valign="top" colspan="2">
              <table width="885" align="center" style="margin-top:0px;" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                  <tr>
                    <td height="3" align="center" bgcolor="#ededed">
                    </td>
                  <tr>
     <div id="discuss">
       <!--讨论内容-->
      <div id="discuss-content">
      <div class="new_discuss" align="right">
            <a href="#">[我的动态]</a>
            <a href="#">[发表帖子]</a>
      </div>            
	    <!--表格内容-->
        <table id="discuss-datas">
          <!--标题栏-->
          <tr class="header">
            <td class="col1">主题</td>
            <td>点赞</td>
            <td>回复</td>
            <td>作者</td>
            <td>时间</td>
          </tr>
          <!--内容栏-->
          <tbody>
          <%
          Dbutil util=new Dbutil();
          String sql=null;
          ResultSet rs=null;
          sql="select title,user_id,user_name,commit_time,comment.comment_id as comment_id, ";
          sql+=" (select count(*)from star where star.comment_id=`comment`.comment_id)as stars, ";
          sql+=" (select count(*)from reply where reply.comment_id=`comment`.comment_id)as replys ";
          sql+=" from `comment`,user where author_id=user_id ";
          rs=util.query(sql);
          while(rs.next()){
          %>
            <tr>
              <td class="col1"> <i class="sheng"> </i> <a href="comment_info.jsp?comment_id=<%=rs.getInt("comment_id") %>"><%=rs.getString("title") %></a> </td>
              <td><%=rs.getInt("stars") %></td>
              <td><%=rs.getInt("replys") %></td>
              <td> <a href="user_info.jsp?user_id=<%=rs.getInt("user_id") %>"><%=rs.getString("user_name") %></a> </td>
              <td><%=rs.getString("commit_time") %></td>
            </tr>
            <%
          }
            %>
            <tr>
               <td>&nbsp;</td>
            </tr>
          </tbody>
        </table>
         <div id="discuss-total">
          <div class="all_discuss">共900个话题
            <a href="#">浏览全部话题>>></a>
          </div> 
        </div>
      </div>
    </div>
                  </tr>
                  <tr>
                    <td height="60" align="center">
                      <br>2020 web技术课程网站</td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
        </tbody>
      </table>
    </body>
</html>