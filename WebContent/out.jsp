<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

isAutoFlush() : <%= out.isAutoFlush() %> <br>
getBufferSize() : <%= out.getBufferSize()%> <br>
<!-- 8192 �⺻ ���� 8kbyte ����  -->

getRemaining() : <%= out.getRemaining() %><br>

<% out.flush(); %>
<!-- �� �����. -->

�ȳ� ����� �ƺ��� ���� ����Ҳ� ..�Ф�

</body>
</html>