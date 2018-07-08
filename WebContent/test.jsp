<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = (String)application.getAttribute("id");
	String age = (String)application.getAttribute("age");
	out.println(id+":"+age);
	
	//키와 벨류를 웹콘텐트 안에있는 제이에스피 모두에서 쓸 수 있다.
%>

</body>
</html>