<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
request.setCharacterEncoding("UTF-8");
String mywords=request.getParameter("message");
Object o=application.getAttribute("msg");
String str1=(String)o;
application.log(mywords);
if(mywords!=null)
{
int len_mywords=mywords.length();
int flag=1;
application.log(" " +len_mywords);
for(int i=0;i<len_mywords;i++)
{
if(mywords.charAt(i)=='<')
{
flag=0;
}
}
if(flag==1)
{
mywords=str1+": "+mywords+str_date1;
Object obj=application.getAttribute("words");
if(obj==null)
{
application.setAttribute("words",mywords+"<br>");
}
else
{
application.setAttribute("words",obj.toString()+mywords+"<br>");
}
}
}
%>
<html>
<head>
</head>
<body>
<FORM method=post action="talk.jsp">
<input name="message"type=text size=50>
<input type=submit value=send>
</form>
</body>
</html>