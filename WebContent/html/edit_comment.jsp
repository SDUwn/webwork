<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>
    
    <head>
      <meta charset="utf-8">
      <title>发表留言</title>
      <meta name="renderer" content="webkit">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    </head>
    
    <body>
      <br>
      <br>
      <form class='layui-form' action='commit_comment.jsp'>
        <div class='layui-form-item'>
          <label class='layui-form-label'>标题</label>
          <div class='layui-input-inline'>
            <input name='title' class='layui-input' type='text' placeholder='请输入标题' style="width:800px">
          </div>
        </div>
        <div class="layui-form-item layui-form-text">
          <label class="layui-form-label">内容</label>
          <div class="layui-input-block">
            <textarea name="content" class="layui-textarea" placeholder="请输入内容" style="width:800px;height:300px">
            </textarea>
          </div>
        </div>
        <div class="layui-form-item">
          <div class="layui-input-block">
            <button class="layui-btn" type="submit">立即提交</button>
            <button class="layui-btn layui-btn-primary" type="reset">重置</button>
          </div>
        </div>
      </form>
    </body>
  
  </html>