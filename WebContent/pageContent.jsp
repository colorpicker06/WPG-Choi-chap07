<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isErrorPage="false"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

getRequest() : <% ServletRequest request2 = pageContext.getRequest(); %> <br>
getReponse() : <% ServletResponse response2 = pageContext.getResponse(); %> <br>
getOut() : <% JspWriter out2 = pageContext.getOut(); %><br>
getSession() : <% HttpSession session2 = pageContext.getSession(); %><br>
getException() : <% Exception exception = pageContext.getException(); %>
   
</body>
</html>