<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>request.getParameter() 메서드 사용</b>
name : <%= request.getParameter("name") %><br>
address : <%= request.getParameter("address") %><br>
<p>

<b>request.getParameterValues() 메서드 사용</b>
<%
	String value[] = request.getParameterValues("pet");


	for(int i=0; i<value.length; i++){
		out.println(value[i]+"<br>");
	}

%>

<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration en = request.getParameterNames();
	while(en.hasMoreElements()){
		String key = (String) en.nextElement();
		out.println(key+"<br>");
	}
%>
<b>request.getParameterMap() 메서드 사용</b><br>
<%
	Map map = request.getParameterMap();
	String name[] = (String[])map.get("name");
	out.println("name:"+name[0]+"<br>");
%>
<br>
<b>헤더 목록 출력</b>
<%
	Enumeration para = request.getHeaderNames();
	while(para.hasMoreElements()){
		String key = (String)para.nextElement();
		String value1 = request.getHeader(key);
		
		out.println("<font color=red>"+key+"</font>"+":"+value1+"<br>");
	}


%>

</body>
</html>