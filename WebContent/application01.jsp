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

�ʱ�ȭ �Ķ���� ���:<br>
	<%
		Enumeration en = application.getInitParameterNames();

		while(en.hasMoreElements()){
			String key = (String)en.nextElement();
			String value = application.getInitParameter(key);
			
			out.println(key+":"+value+"<br>");
		}
	%>

�������� : <%= application.getServerInfo() %> <br>
���� �Ծ� ������ ���� : <%= application.getMajorVersion() %><br>
���� �Ծ� ���̳� ���� : <%= application.getMinorVersion() %><br>

</body>
</html>