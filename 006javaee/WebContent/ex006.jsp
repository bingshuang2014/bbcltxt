<%@page language="java"  contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*" %>
<%!
	// 下面方法Trans的作用是将StringBuffer中的的回车符号换为<br>
	StringBuffer Trans(StringBuffer sour) {
		for(int i=0; i<sour.length(); i++) {
			if(sour.substring(i,i+1).equals("\n")) {
				sour.delete(i,i+1);
				sour.insert(i,"<br>");
			}
		}
		return sour;
	}
%>
<%
   request.setCharacterEncoding("UTF-8");
   //接收text和password类信息
     String name = request.getParameter("name"); 
     String pwd = request.getParameter("pwd");
     String number = request.getParameter("number");
	 application.setAttribute("msg",name);
	 application.setAttribute("msg1",pwd);
	 application.setAttribute("number",number);
     out.println("username: " + name + "<br>");
     out.println("password: " + pwd +"<br>");
     out.println("phonenumber: " + number +"<br>");
	//接收radio类信息
   out.print("性别是：");
   out.println(request.getParameter("sex"));
   out.println("<br>");
	//接收单选的select信息
   out.println("户口所在地: ");
   out.println(request.getParameter("City"));
   out.println("<br>");
	//接收多选的select信息
   out.println("曾经居住过的城市:");
   String juzhu[]=request.getParameterValues("juzhu");
  if(juzhu != null) {
	   for(int i=0; i<juzhu.length; i++) 
		   out.println(juzhu[i] + "&nbsp;&nbsp;");
   }
   //接收checkbox类信息
   out.print("爱好:");
   String job[] = request.getParameterValues("JOB");
   if(job != null) {
	   for(int i=0; i<job.length; i++) 
		   out.println(job[i] + "<br>");
   }
     String aihao = request.getParameter("aihao"); 
	 application.setAttribute("aihao",aihao);
     out.println("其他爱好: " + aihao + "<br>");
   
   out.println("<br>"); 
   out.println("<br>");
  //处理textbox中的信息
  String str=request.getParameter("liuyan");
  StringBuffer liuyan = new StringBuffer(str);
  liuyan = Trans(liuyan);
  out.println("用户备注信息是:<br>");
  out.println(liuyan);
%>
<br>
<a href="index.html">返回登陆界面</a>