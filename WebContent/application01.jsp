<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

초기화 파라미터 목록:<br>
	<%
		Enumeration en = application.getInitParameterNames();

		while(en.hasMoreElements()){
			String key = (String)en.nextElement();
			String value = application.getInitParameter(key);
			
			out.println(key+":"+value+"<br>");
		}
	%>

서버정보 : <%= application.getServerInfo() %> <br>
서블릿 규약 메이저 버전 : <%= application.getMajorVersion() %><br>
서블릿 규약 마이너 버전 : <%= application.getMinorVersion() %><br>

</body>
</html>