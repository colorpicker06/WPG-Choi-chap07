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
<!-- 8192 기본 값이 8kbyte 여서  -->

getRemaining() : <%= out.getRemaining() %><br>

<% out.flush(); %>
<!-- 다 지운다. -->

안녕 지향아 아빠가 내일 사과할께 ..ㅠㅠ

</body>
</html>