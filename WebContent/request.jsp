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

<%
	String names[] = {"�������� �̸�","�����̸�","method ����","���ؽ�Ʈ ���","URI"};
	String values[] = {request.getProtocol(),request.getServerName(),request.getMethod(),request.getContextPath(),request.getRequestURI()};
%>


<%
for(int i =0; i<names.length; i++){
	out.println(names[i]+":"+values[i]+"<br>");
}
%>


<%
	Enumeration<String> en = request.getHeaderNames();

	while(en.hasMoreElements()){
		String key = en.nextElement();
		String value = request.getHeader(key);
		out.println("<font color=red>"+"�����̺񿣳�"+key+"</font>"+value+"<br>");
	}//while
%>


</body>
</html>