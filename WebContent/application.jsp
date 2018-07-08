<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

getServer Info():<% application.getServerInfo(); %><br>
getMimeType(fileName) : <% application.getMimeType("test_1.html"); %><br>
getRealPath(path) : <% application.getRealPath("b.jsp"); %>
log(message) : <% application.log("지향아 미안해 치킨사줄께"); %>

</body>
</html>