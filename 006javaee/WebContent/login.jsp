<%@page language="java"  contentType="text/html;charset=UTF-8"%>
<%
 String name=request.getParameter("name");
 String pwd=request.getParameter("pwd");
 if(application.getAttribute("msg").equals(name)&&application.getAttribute("msg1").equals(pwd))
 {
  session.setAttribute("login","ok");
  session.setMaxInactiveInterval(-1);
  response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
  response.setHeader("Location","main.jsp");
  }
  else
  {
  out.println("用户名或者密码输入错误！");
  }
  %>
<a href="index.html">返回登陆界面</a>