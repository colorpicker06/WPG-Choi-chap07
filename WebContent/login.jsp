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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	if(id.equals("choi")){
		out.println("회원");
		response.sendRedirect("index.jsp?name"+id);
	}
	else{
		out.println("비회원");
		response.sendRedirect("insert.jsp");
	}
%>

ID=<%= id %><br>


</body>
</html>