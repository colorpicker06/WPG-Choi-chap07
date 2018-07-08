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
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String job = request.getParameter("job");
%>

ID = <%= id %><br>
비밀번호 = <%= pw %><br>
이름 = <%= name %><br>
직업 = <%= job %><br>

<!-- forword하면 제어권을 넘겨서 이 페이지를 띄우지 않고, 포워드 한 부ㅜㅂ능ㄹ 보여준다. 값도 넘길 수 있다. 이 영역을 request 영역 템플릿(구조화, 모듈화) 를 하기 위해서 쓴다. 가운데에서 컨트롤 하기 위해. 나중에 유지보수가 편하다.-->

<hr>

<!-- request에서 기본적으로 주는 값 -->

ip=<%= request.getRemoteAddr() %><br>
브라우저= <%= request.getHeader("User-Agent") %><br>
전송방식 = <%= request.getMethod() %><br>
<p>
서버의 버퍼크기 : <%= response.getBufferSize() %><br>
문자셋:<%= response.getCharacterEncoding() %><br>


</body>
</html>