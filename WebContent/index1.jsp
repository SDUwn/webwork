<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <!DOCTYPE html>
  <html>
    
    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <style>html, body { width: 100%; height: 100%; } body { font-size: 12px; text-align: center; margin: 0px; line-height: 200%; background: url(css/blue/bg.jpg) 0 0 repeat-x; color: #646464; } body { background-color: #ffffff; font-size: 12px; text-align: center; margin: 0px; line-height: 200%; background: url(bg.gif) 0 0 repeat-x; color: #646464; } body { background-color: #ffffff; } .copy-right, .copy-right a { color: #3ca2ca; } .copy-right, .copy-right a { color: #710100; height: 30px; } div.center { margin: 0 auto; width: 1000px; text-align: left; } .clear { clear: both; font-size: 0px; line-height: 0px; } .underline { text-decoration: underline; } img { border: 0px; } a { text-decoration: none; color: #646464; } .i-container { margin-top: 20px; } .i-head { background: #ececec; padding: 2px 5px; border: #b8b8b8 1px solid; font-weight: bold; } .i-body { background: #ffffff; padding: 5px; border: #b8b8b8 1px solid; border-top: 0px; } font, table, textarea { line-height: 200%; font-size: 12px; } ul, form, p { margin: 0px; padding: 0px; list-style: none; } .i-papelasthov { background: url(innerBtn.png) no-repeat; display: block; width: 16px; height: 16px; font-size: 0px; margin: 0px 8px; background-position: -104px 50%; } select, input, textarea { color: #5d5d5d; } .i-papenexthov { background: url(innerBtn.png) no-repeat; display: block; width: 16px; height: 16px; font-size: 0px; margin: 0px 8px; background-position: -66px 50%; } .i-papepre { background: url(innerBtn.png) no-repeat; display: block; width: 16px; height: 16px; font-size: 0px; margin: 0px 8px; background-position: -173px 50%; } .i-papefirst { background: url(innerBtn.png) no-repeat; display: block; width: 16px; height: 16px; font-size: 0px; margin: 0px 8px; background-position: -140px 50%; } tr.crossing { background: #EFEFEF; border-top: #b8b8b8 1px solid; border-bottom: #b8b8b8 1px solid; } .left { float: left; } .tools { background: url(css/tools.png) no-repeat; width: 16px; height: 16px; } .tools { background: url(css/tools.png) no-repeat; width: 16px; height: 16px; } .dropdown { position: relative; top: 18px; left: -150px; background: #DDDDDD; border: 1px solid #FFFFFF; width: 170px; height: 25px; left: -162px\9; } .share { background: url(css/share.png) no-repeat; display: inline-block; font-size: 0px; height: 18px; width: 18px; margin: 0px 3px; position: relative; top: 3px; } .share { background: url(images/share.png) no-repeat; display: inline-block; font-size: 0px; height: 18px; width: 18px; margin: 0px 3px; position: relative; top: 3px; } a div { cursor: pointer; } .ClearstrText { overflow: hidden; text-overflow: ellipsis; -o-text-overflow: ellipsis; white-space: nowrap; } th { color: #969696; text-align: left; } th span { cursor: pointer; display: inline-block; padding-right: 15px; text-decoration: underline; } .right { float: right; } .t, a:hover, .sh { color: #048abd; } .t, a:hover, .sh { color: #a70505; } .tab { background: #ECECEC; cursor: pointer; border: 1px solid #B8B8B8; width: 110px; height: 30px; margin-right: 5px; border-bottom: 0px; text-align: center; display: inline-block; left: -170px\9; } .tab.tab-cur { background: #B8B8B8; color: #ffffff; } .d, .detail, .gray { color: #aaaaaa; } .menu-bottom-line { height: 10px; line-height: 0px; } .menu-bottom-line { border-top: 1px solid #000000; background: #CFAF76; } .menu-bar { height: 40px; } .menu-bar { background: url(menu_bg.gif) repeat-x; } .main-menu { list-style: none; } .search { background: #EBEBEB; border: 0px; padding: 0px; margin: 0px; height: 20px; } .search { background: #ffffff; border: 1px solid #767676; } .search-btn { border: 0px; height: 20px; width: 20px; padding: 0px; } .search-btn { background: #767676; } .main-menu-item { float: left; } .main-menu-item { border-right: 1px solid #9A6143; } .main-nav { color: #ffffff; font-weight: bold; line-height: 40px; text-align: center; display: inline-block; width: 90px; } .main-menu-item .container { position: absolute; width: 90px; height: 0px; display: inline-block; margin-top: 40px; z-index: 1000; margin-left: -90px; } .main-menu-item .sub-menu { margin-top: -99999px; } .sub-nav { color: #ffffff; width: 90px; height: 30px; display: block; line-height: 30px; text-align: center; } .sub-menu-item a { background: #D59370; border-top: 1px solid #000000; } .logo { background: url(logo.jpg) no-repeat; width: 400px; height: 100px; display: inline-block; } .top-info { color: #ffddbd; } .top-info, .top-info a { color: #ffddbd; } .top-info { background: url(logo_bg.gif) repeat-x; width: 300px; height: 100px; } .login-txt { width: 130px; border: 0px; } .login-txt { background: #013B53; color: #78cadf; } .login-txt { background: #000000; color: #ffddbd; border: 1px solid #767676; } .btn { color: #480000; } .btn { background: url(login_button.gif) no-repeat; display: inline-block; border: 0px; width: 60px; height: 20px; }</style>
    </head>
    <% String user_name=session.getAttribute( "user_name").toString(); %>
      
      <body>
        <div class="clear">
        </div>
        <div class="center">
          <table>
            <tr>
              <td>欢迎您：
                <%=user_name %></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>
                <a href="index.html">[退出]</a>
              </td>
            </tr>
          </table>
        </div>
        <div class="center">
          <div class="menu-bottom-line">
          </div>
        </div>
        <div class="center" style="background: #ffffff;">
          <div style="padding: 10px;">
            <div class="i-container" style="margin-top: 0px;">
              <div class="i-body" id="ctl00_ContentPlaceHolder1_Div1" style="padding: 0px;">
                <table border="0" cellspacing="0" cellpadding="0">
                  <colgroup>
                    <col width="60">
                      <col width="320">
                        <col width="220">
                          <col width="200">
                            <col width="190">
                  </colgroup>
                  <tbody>
                    <tr>
                      <th style="text-indent: 12px;">序号</th>
                      <th>
                        <span id="ctl00_ContentPlaceHolder1_span3" onclick="order2(3)">课程</span>
                      </th>
                      <th>
                        <span id="ctl00_ContentPlaceHolder1_span6" onclick="order2(6)">教师</span>
                      </th>
                      <th>
                        <span id="ctl00_ContentPlaceHolder1_span2" onclick="order2(2)">发布日期</span>
                      </th>
                      <th>
                        <span id="ctl00_ContentPlaceHolder1_span1" style="background:url(images/down.gif) right no-repeat ;" onclick="order2(1)">点击学习</span>
                      </th>
                    </tr>
                    <tr class="crossing">
                      <td align="center">1</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/8dbb91bc-851b-4065-a502-702cc09e13b5.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="html" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>html</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="HTML">
                        <div class="ClearstrText" style="height:25px;width:85px">郑十</div>
                      </td>
                      <td title="2016/4/18" 20:35:23="">2016/4/18</td>
                      <td>
                        <a href="course_html.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td align="center">2</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/b95f0fc0-8d24-4490-a92b-4d65ac5f0e3a.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="javascript" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>javascript</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="javascript">
                        <div class="ClearstrText" style="height:25px;width:85px">吴九</div>
                      </td>
                      <td title="2019/10/26" 19:16:48="">2019/10/26</td>
                      <td>
                        <a href="course_javascript.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr class="crossing">
                      <td align="center">3</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/52c4cbdb-f0bb-4629-8d25-1b218a9b2de8.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="css" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>css</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="css">
                        <div class="ClearstrText" style="height:25px;width:85px">周八</div>
                      </td>
                      <td title="2016/5/19" 12:47:36="">2016/5/19</td>
                      <td>
                        <a href="course_css.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td align="center">4</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/4855a3d9-f9af-496b-8f50-00100aa45294.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="html" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>html</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="html">
                        <div class="ClearstrText" style="height:25px;width:85px">孙七</div>
                      </td>
                      <td title="2020/11/13" 12:58:28="">2020/11/13</td>
                      <td>
                        <a href="course_html.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr class="crossing">
                      <td align="center">5</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/6e0229c0-ad5a-4762-8148-fdf40fa7a274.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="servlet" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>servlet</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="servlet">
                        <div class="ClearstrText" style="height:25px;width:85px">钱六</div>
                      </td>
                      <td title="2012/12/21" 9:50:46="">2012/12/21</td>
                      <td>
                        <a href="course_servlet.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td align="center">6</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/9479e967-bcfa-4060-a705-9afb25c09b3e.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="vue" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>vue</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="Vue">
                        <div class="ClearstrText" style="height:25px;width:85px">王五</div>
                      </td>
                      <td title="2013/8/10" 20:41:16="">2013/8/10</td>
                      <td>
                        <a href="course_vue.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr class="crossing">
                      <td align="center">7</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/091b15bc-54eb-43fe-90ee-12fb97f316c9.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="Ajax" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>Ajax</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="Ajax">
                        <div class="ClearstrText" style="height:25px;width:85px">李四</div>
                      </td>
                      <td title="2012/4/6" 16:25:55="">2012/4/6</td>
                      <td>
                        <a href="course_Ajax.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td align="center">8</td>
                      <td>
                        <span style="background:url(images/frame.jpg);width:69px;height:69px;float:left;margin:8px 0px;">
                          <span style="background:url(http://course.sdu.edu.cn:80/Download2/438bc571-053e-43c3-8324-588bf6872ae2.jpg) no-repeat;width:61px;height:61px;margin:4px;display:inline-block;">
                          </span>
                        </span>
                        <a title="jQuery" class="left" style="position:relative;top:30px;left:6px;" target="_blank">
                          <div class="ClearstrText" style="height:25px;width:140px;font-size:large;">
                            <b>jQuery</b>
                          </div>
                        </a>
                        <div class="clear">
                        </div>
                      </td>
                      <td title="jQuery">
                        <div class="ClearstrText" style="height:25px;width:85px">张三</div>
                      </td>
                      <td title="2019/5/30" 11:33:20="">2019/5/30</td>
                      <td>
                        <a href="course_jQuery.html">开始学习</a>
                      </td>
                      <td>
                        <span class="tools left" style="position:relative;left:5px;top:1px" onmouseover="show2(this.nextSibling)" onmouseout="hidden2(this.nextSibling);">
                        </span>
                      </td>
                    </tr>
                  </tbody>
                </table>
      </body>
  
  </html>