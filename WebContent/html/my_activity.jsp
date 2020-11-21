<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Db.Dbutil" %>
<!DOCTYPE html>
<html>
   <head>
    <title>
    </title>
    <style>* { box-sizing: content-box; } body { margin: 0; } html { -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; } input { line-height: normal; } html, body, div, p, ul, li, ol, dl, dt, dd, pre, code, table, tr, td, form, fieldset, legend, button, input, textarea, h1, h2, h3, h4, h5, h6, hr, blockquote { margin: 0; padding: 0; } .clearfix { zoom: 1; } .l_post_bright { border: 0; border-left: 1px solid #E5E5E5; border-bottom: 1px solid #E1E4E6; background: url(//tb2.bdstatic.com/tb/static-pb/widget/post_list/img/bg_ba2195f.jpg) repeat-y; width: 739px; } .p_postlist { clear: both; } .left_section { width: 740px; float: left; background: #FAFBFC; } .pb_content { width: 980px; background: #F5F7FA; border-right: 1px solid #e5e5e5; } .pb_content { background: url(//tb2.bdstatic.com/tb/static-pb/img/pb_bright_background_7d89132.png) repeat-y; } .content { width: 980px; margin: 0 auto; background: #F5F7FA; } .l_container { width: 980px; margin: 0 auto; _overflow: hidden; } .wrap2 { zoom: 1; } .wrap1 { position: relative; } body { font-size: 12px; font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; color: #333; line-height: 22px; } .special_conf_skin { background: ; } html { _background: url(about:blank) fixed; } html { _background: url(about:blank) fixed; } html { font-size: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); } .d_author, .d_author_anonym { width: 130px; float: left; text-align: center; padding: 15px 0; } .d_post_content_main { position: relative; float: left; width: 588px; padding: 0 0 8px 20px; background: #fff; } .p_content { position: relative; min-height: 145px; height: auto !important; height: 170px; padding: 20px 20px 0 0; } .l_post_bright .d_post_content_main .p_content { height: auto !important; height: 170px; min-height: 170px; } .share_btn_wrapper { line-height: 18px; height: 30px; text-align: center; } .post-foot-send-gift-container { margin-bottom: 20px; } .core_reply { margin-right: 13px; } .forbid-speech-banner { color: #999; text-align: right; border-top: 1px solid #f6f6f6; padding: 8px 2px; margin-right: 12px; } .forbid-speech-banner .forbid-speech-icon { width: 19px; height: 19px; display: inline-block; vertical-align: middle; margin-right: 4px; background-repeat: no-repeat; } .forbid-speech-banner .forbid-speech-icon { background-position: 0px 0px; } .forbid-speech-banner .forbid-speech-icon { background-image: url("//tb2.bdstatic.com/tb/static-encourage/widget/forbid_speech_banner/forbid_speech_banner_z_c3792c3.png"); } .core_reply_tail { line-height: 28px; } .core_reply_wrapper { background: #f7f8fa; width: 573px; border: 1px solid #f0f1f2; margin-top: -1px; min-height: 0px; } .core_reply_content { padding: 4px 15px 14px; } ul, ol, li { list-style: none; } ul, li { margin: 0; padding: 0; } .lzl_editor_container_s { padding-top: 13px; } button, input, optgroup, select, textarea { color: inherit; font: inherit; margin: 0; } textarea, input { outline: 0; } input, button, select, textarea { outline: 0; } .lzl_li_pager_s { text-align: left; overflow: hidden; } .core_reply_content li { padding-top: 10px; } a { background-color: transparent; } a { color: #2d64b3; text-decoration: none; } .btn, .btn_default, .btn_sub, .btn_attention, .btn-default, .btn-sub, .btn-sub-b, .btn-attention, .btn-encourage, .btn-link, button { cursor: pointer; } .btn, .btn_default, .btn_sub, .btn_disable, .btn_attention, .btn-default, .btn-sub, .btn-sub-b, .btn-disable, .btn-disabled, .btn-attention, .btn-encourage, .btn-link, button { display: inline-block; border-radius: 2px; border: 1px solid transparent; text-decoration: none; } .btn_sub, .btn-sub, .btn-sub-b { background-color: #fff; color: #333; border-color: #ccc; } .btn_small, .btn_middle, .btn_larger, .btn-small, .btn-middle, .btn-larger { line-height: normal !important; } .btn_small, .btn-small { padding: 4px 8px; font-size: 12px; } .pull_right, .pull-right { float: right !important; } .btn:link, .btn_default:link, .btn_sub:link, .btn_disable:link, .btn_attention:link, .btn-default:link, .btn-sub:link, .btn-sub-b:link, .btn-disable:link, .btn-disabled:link, .btn-attention:link, .btn-encourage:link, .btn-link:link, .btn:visited, .btn_default:visited, .btn_sub:visited, .btn_disable:visited, .btn_attention:visited, .btn-default:visited, .btn-sub:visited, .btn-sub-b:visited, .btn-disable:visited, .btn-disabled:visited, .btn-attention:visited, .btn-encourage:visited, .btn-link:visited, .btn:hover, .btn_default:hover, .btn_sub:hover, .btn_disable:hover, .btn_attention:hover, .btn-default:hover, .btn-sub:hover, .btn-sub-b:hover, .btn-disable:hover, .btn-disabled:hover, .btn-attention:hover, .btn-encourage:hover, .btn-link:hover, :disabled.btn, :disabled.btn_default, :disabled.btn_sub, :disabled.btn_disable, :disabled.btn_attention, :disabled.btn-default, :disabled.btn-sub, :disabled.btn-sub-b, :disabled.btn-disable, :disabled.btn-disabled, :disabled.btn-attention, :disabled.btn-encourage, :disabled.btn-link, .btn-disabled, .btn_default-disabled, .btn_sub-disabled, .btn_disable-disabled, .btn_attention-disabled, .btn-default-disabled, .btn-sub-disabled, .btn-sub-b-disabled, .btn-disable-disabled, .btn-disabled-disabled, .btn-attention-disabled, .btn-encourage-disabled, .btn-link-disabled, .btn:active, .btn_default:active, .btn_sub:active, .btn_disable:active, .btn_attention:active, .btn-default:active, .btn-sub:active, .btn-sub-b:active, .btn-disable:active, .btn-disabled:active, .btn-attention:active, .btn-encourage:active, .btn-link:active, button:link, button:visited, button:hover, button:disabled, button-disabled, button:active { text-decoration: none; } .p_reply { float: right; margin-left: 4px; } .post-tail-wrap { float: right; color: #999; position: relative; } .core_reply_tail .p_props_tail { float: right; margin-top: 8px; margin-right: 7px; } .post-tail-wrap .tail-info { display: inline-block; margin: 0 4px; color: #999; } img { border: 0; } .post-tail-wrap .icon-jubao { height: 13px; width: 40px; margin-left: 7px; vertical-align: middle; margin-top: -0.2em; } .post-foot-send-gift-btn { border-radius: 2px; display: inline-block; width: 68px; height: 25px; line-height: 26px; text-align: center; background-color: #fa7d3e; color: #fff; } .share_thread { margin: 17px auto 13px; height: 40px; text-align: center; border: 0 solid #dcdcdc; } .share_btn_wrapper .share_thread { padding-top: 2px; margin: 0; height: 30px; vertical-align: middle; display: inline-block; zoom: 1; *display:inline: ; } .tbshare_popup_wrapper { position: relative; } .tbshare_popup_wrapper .tbshare_popup_enter { width: 70px; height: 27px; background-image: url("//tb2.bdstatic.com/tb/static-common/widget/tbshare/img/share_btn_a81e0da.png"); } .tbshare_popup_wrapper .tbshare_popup_main { position: absolute; left: -95px; top: -44px; width: 262px; display: none; } #pb_tbshare_container .tbshare_popup_wrapper .tbshare_popup_main { left: -95px; } .tbshare_wrapper_theme_coco { float: left; border: 1px solid #ddd; background: #fff; box-shadow:
      1px 1px 0px rgba(221,221,221,0.2); } .tbshare_wrapper_theme_coco li { float: left; } .tbshare_wrapper_theme_coco .tbshare_icon { display: block; font-family: SimSun,Arial; cursor: pointer; width: 32px; height: 32px; padding: 0; background: url(//tb2.bdstatic.com/tb/static-common/widget/tbshare/img/tbshare_popup_1e8ecc2.png); margin: 5px 10px; } .tbshare_wrapper_theme_coco .tbshare_copy { background-position: -167px 0; } .tbshare_icon .tbshare_title_box { display: none; } .tbshare_wrapper_theme_coco .tbshare_title_box { width: 69px; height: 42px; position: absolute; background-image: url("//tb2.bdstatic.com/tb/static-common/widget/tbshare/img/cross_title_box_f042f59.png?__sprite"); margin-left: -17px; top: -36px; text-align: center; line-height: 32px; color: #666; display: none; } .tbshare_wrapper_theme_coco .tbshare_qqzone { background-position: -126px 0; } .tbshare_wrapper_theme_coco .tbshare_tsina { background-position: -84px 0; } .tbshare_wrapper_theme_coco .tbshare_weixin { background-position: -42px 0; } .save_face_bg { position: absolute; width: 110px; height: 32px; top: -8px; right: -2px; z-index: 10; } .save_face_bg_2 { background: url(//tb2.bdstatic.com/tb/static-pb/img/save_face/save_btn_bg_2_8bc0121.png) no-repeat; } .user-hide-post-down, .user-hide-post-up { position: absolute; width: 17px; height: 17px; right: -4px; top: 20px; z-index: 2; } .user-hide-post-down { background: url(//tb2.bdstatic.com/tb/static-pb/img/user_hide_post_5d63e7a.png) no-repeat -6px -6px; } .p_forbidden_tip { color: #999; } .d_post_content { line-height: 24px; font-size: 14px; word-wrap: break-word; overflow: hidden; } .post_bubble_top { width: 550px; } .post_bubble_middle { padding: 25px; width: 500px; overflow: hidden; _overflow-x: hidden; } .post_bubble_bottom { width: 550px; } .post_bubble_middle .post_bubble_middle_inner { overflow: hidden; } .BDE_Image { margin-top: 8px; max-width: 570px; cursor: url(//tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; } .post_bubble_middle .BDE_Image { max-width: 490px; } #voteFlashPanel { font-family: Arial,simsun; } .save_face_card { position: absolute; width: 47px; height: 20px; top: 4px; right: 6px; cursor: pointer; background: url(//tb2.bdstatic.com/tb/static-pb/img/save_face/save_face_btn_e65920b.png) no-repeat; } .louzhubiaoshi_wrap { position: relative; border: 0 solid red; *z-index:201: ; zoom: 1; height: 0px; } .p_author { position: relative; text-align: center; *z-index:200: ; } .p_author .d_nameplate { margin-top: -2px; } .l_post_bright .d_nameplate { margin-bottom: 8px; } .d_name { padding: 4px 0 7px; letter-spacing: -3px; } .l_post_bright .d_name { padding: 0; } .l_post_bright .d_icons { margin-top: 8px; } .l_badge { display: none; position: relative; top: 0px; left: 0px; margin-top: 9px; } .d_badge_bright { display: block; background: #fff; border: solid 1px #e6e6e6; width: 98px; height: 28px; line-height: 24px; cursor: pointer; position: relative; margin: 0 auto; } .d_badge_title { color: #4c4c4c; position: absolute; text-align: center; width: 60px; height: 25px; line-height: 25px; left: 0px; font-family: arial,SimSun; } .d_badge_title_bawu { letter-spacing: 5px; } .d_badge_bright .d_badge_title { height: 28px; line-height: 28px; } .d_badge_lv { left: 60px; color: #b65e00; font-size: 11px; font-weight: 700; position: absolute; text-align: left; padding-left: 8px; width: 25px; height: 25px; line-height: 18px; font-family: arial; } .d_badge_bawu2 .d_badge_lv { background: url(//tb2.bdstatic.com/tb/static-user/widget/pb_author/images/grade_groups_a0f2ce3.png) 0 -760px no-repeat; text-indent: -999px; } .d_badge_bright .d_badge_lv { left: 67px; margin-top: 2px; } .icon_wrap_theme1 { float: left; } .d_author .d_pb_icons { overflow: hidden; width: 80px; margin: 0 auto 5px; float: none; padding: 0 0 3px 3px; background-color: #fff; border: 1px solid #e6e6e6; border-radius: 1px; display: block; } .icon_wrap_theme1 a, .icon_wrap_theme1 span, .icon_wrap_theme2 a, .icon_wrap_theme2 span { float: left; margin-right: 5px; } .icon_wrap_theme1 a, .icon_wrap_theme1 span { width: 14px; height: 14px; } .icon_wrap_theme1 .icon_saparater, .icon_wrap_theme2 .icon_saparater { background: url(//tb2.bdstatic.com/tb/static-user/widget/pb_author/images/icon_saparater_eef95e3.png) no-repeat 0 3px; float: left; width: 1px; margin: 0 6px; } .d_author .d_pb_icons span, .d_author .d_pb_icons a { margin-right: 0px; margin-top: 3px; _background-color: #fff; } .d_author .d_pb_icons .icon_saparater { margin: 0 3px; } .pre_icon_wrap { float: left; margin: 3px 0 0; } .d_name .d_name_icon { display: inline-block; float: none; margin: 0; vertical-align: -3px; *display:inline: ; *zoom:1: ; *vertical-align:middle: ; } .red_text, .red-text, .vip_red, .vip-red, .vip_red:hover, .vip-red:hover, .vip_red:visited, .vip-red:visited { color: #f74d4a !important; } .sign_highlight { color: #ffa640; } .pre_icon_wrap_theme1 a, .pre_icon_wrap_theme1 span { width: 16px; height: 16px; } .d_name a { text-decoration: none; } .d_name .p_author_name { letter-spacing: normal; } .icon-crown-year-v5 { display: inline-block; width: 16px; height: 16px; background: url(//tb2.bdstatic.com/tb/static-common/external_lib/tbui/images/crown-year-v5_1d52863.png?__sprite); } .pre_icon_wrap a, .pre_icon_wrap span { float: left; margin-right: 5px; } .icon_relative { position: relative; display: inline-block; *display:inline: ; zoom: 1; top: 0px; left: 0px; padding: 4px; margin-top: 2px; } .p_author .icon .icon_relative { margin-top: 0px; } .p_author_face { background: none repeat scroll 0 0 #FFF; border: 1px solid #CCC; display: block; height: 80px; padding: 3px; width: 80px; cursor: pointer; } .icon_relative img { float: left; width: 80px; height: 80px; } .louzhubiaoshi { position: absolute; width: 36px; height: 36px; top: -15px; right: 0px; background: url(//tb2.bdstatic.com/tb/static-user/widget/pb_author/images/louzhu_b77db49.png) no-repeat -44px 0; border: 0 solid red; } .louzhubiaoshi_wrap .beMember_fl { position: absolute; width: 36px; height: 36px; top: -15px; right: 0px; background: url(//tb2.bdstatic.com/tb/static-user/widget/pb_author/images/louzhu_b77db49.png) no-repeat 0 0; border: 0; } .louzhubiaoshi a { display: block; width: 36px; height: 36px; }</style>
  </head>
  <%
  String user_id=session.getAttribute("user_id").toString();
  Dbutil util=new Dbutil();
  String sql="",sql1="";
  sql="select * from comment,user where author_id='"+user_id+"' and author_id=user_id ";
  ResultSet rs=null,rs1=null;
  rs=util.query(sql);
  while(rs.next()){
  %>
  <body class="special_conf_skin">
    <div class="wrap1">
      <div class="wrap2">
        <div class="l_container  " id="container">
          <div class="content clearfix">
            <div class="pb_content clearfix" id="pb_content">
              <div class="left_section">
                <div class="p_postlist" id="j_p_postlist">
				  <div class="l_post l_post_bright j_l_post clearfix  ">
                    <div class="d_author">
                      <div class="louzhubiaoshi_wrap">
                        <div class="louzhubiaoshi beMember_fl j_louzhubiaoshi"  >
                         </div>
                      </div>
                      <ul class="p_author">
                        <li class="icon">
						  <div class="icon_relative j_user_card">
                            <a class="p_author_face j_frame_guide" style="width:80px;height:80px;padding:10px;background:url(//tb2.bdstatic.com/tb/static-common/img/props/80/1100104.png) no-repeat;border:none" href="/home/main?un=%E5%95%8A%E5%92%BF%E5%8F%A4%E4%B8%BD00&amp;ie=utf-8&amp;id=tb.1.88480ff5.YvFmQofpJAxIskCx6suU-A?t=1569129182&amp;fr=pb" target="_blank">
                              <img class="j_dynamic_photo" src="https://imgsa.baidu.com/forum/eWH=150,150;bp=1090101,0,0,200/sign=490db748c395d143c81c992e42c5b22e/37d12f2eb9389b504468bb198e35e5dde6116ee1.jpg">
                            </a>
                          </div>
                        </li>
                        
                        <li class="d_name" >
                        <h2><%=rs.getString("user_name") %> </h2>  
                        </li>
						<li class="d_name" >
                        <h3><%=rs.getString("sex") %> &nbsp;&nbsp;&nbsp;<%=rs.getString("age") %>岁 </h3>  
                        </li>                         
                      </ul>
                    </div>
                    <div class="d_post_content_main  d_post_content_firstfloor">
                      <div class="p_content  "> 
                             <div class="post_bubble_top" style="background:url(//tb1.bdstatic.com/tb/cms/post/bubble/lufei_01.png);height:19px;">
                            </div>
                            <div class="post_bubble_middle" style="background:url(//tb1.bdstatic.com/tb/cms/post/bubble/lufei_02.png)">
                              <div class="post_bubble_middle_inner"> 
                                <h1><%=rs.getString("title") %></h1>
                                <br>
                                <h3><%=rs.getString("content") %></h3>
                                <br>
                                <br>
                             </div>
                           </div>
                          <br>
                         <br>
                         <%=rs.getString("commit_time") %>
                        <div class="user-hide-post-down" style="display: none;">
                        </div>
                      </div> 
                         <div class="core_reply_tail clearfix">
                             <ul class="p_props_tail props_appraise_wrap">
                          </ul>
                        </div>
                         </div>
                    </div>
<%
sql1="select * from reply,user where comment_id='"+rs.getString("comment_id")+"' and reply.user_id=user.user_id ";
rs1=util.query(sql1);
int i=1;
while(rs1.next()){
%>
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   
  <div class="l_post j_l_post l_post_bright  ">
   <div class="d_author">
    <ul class="p_author">
      <li class="icon">
        <div class="icon_relative j_user_card" >
          <a class="p_author_face " style="" href="/home/main?un=%E5%86%88%E6%9C%AC%E4%B8%8E%E7%B3%96&amp;ie=utf-8&amp;id=tb.1.9d39514a.H6Q7-qARpPqrIZHkes7Hlw&amp;fr=pb&amp;ie=utf-8" target="_blank">
            <img src="//himg.bdimg.com/sys/portrait/item/tb.1.9d39514a.H6Q7-qARpPqrIZHkes7Hlw">
          </a>
        </div>
      </li>
       <li class="d_name" >
		<h2><%=rs1.getString("user_name") %></h2>
      </li>
      <li class="d_icons">
         <h3><%=rs1.getString("sex")%> &nbsp;&nbsp;&nbsp;<%=rs1.getString("age") %>岁 </h3>  
      </li>
     </ul>
  </div>
  <div class="d_post_content_main">
    <div class="p_content  p_content p_content_icon_row1 p_content_nameplate">
         <div class="d_post_content j_d_post_content  clearfix" id="post_content_136437347937" style="display:;">
  			<h3><%=rs1.getString("reply_content") %></h3>
         </div>
        <br>
       <br>
      <div class="user-hide-post-down" style="display: none;">
      </div>
      <div class="achievement_medal_section">
      </div>
    </div>
    <div class="core_reply j_lzl_wrapper">
      <div class="core_reply_tail ">
         <ul class="p_tail">
          <li>
            <span><%=i %>楼</span>
          </li>
          <li>
            <span><%=rs1.getString("reply_time") %></span>
          </li>
        </ul> 
      </div>
       
    </div>
  </div>
  <div class="clear">
  </div>
</div>              
<%
i++;
}
%>
               </div>
              </div>
             </div>
          </div>
        </div>
       </div>
    </div>
<% 
}
util.close();
%>
   </body>

</html>