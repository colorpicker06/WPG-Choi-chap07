<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<font color=red>getProtocal() :</font> <%= request.getProtocol() %> <br>
<font color=red>getServerName() :</font> <%= request.getServerName() %> <br>
<font color=red>getMethod() :</font> <%= request.getMethod() %> <br>

<font color=red>getRequestURL() :</font> <%= request.getRequestURL() %> <br>
<font color=red>getRequestURI() :</font> <%= request.getRequestURI() %> <br>
<font color=red>getRemoteAddr() :</font> <%= request.getRemoteAddr() %> <br>

<font color = red>getServerPort():</font> <%= request.getServerPort() %> <br>


</body>
</html>