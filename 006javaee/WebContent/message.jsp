<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="REFRESH" content="3;URL=message.jsp" >
<script language="JavaScript1.1">
function scrollWindow()
{
this.scroll(0,65000);
setTimeout('scrollWindow()',200);
}
scrollWindow();
</script>
<title>聊天室</title>
</head>
<%=application.getAttribute("words")%>
</html>