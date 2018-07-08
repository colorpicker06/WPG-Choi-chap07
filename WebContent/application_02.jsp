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

<%
	String key = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(key!=null && value!=null){	
		application.setAttribute(key, value);
	}
%>




<b>application 기본 객체의 속성 보기</b><br>
<%
	Enumeration para =  application.getAttributeNames();
	while(para.hasMoreElements()){
		String key2 = (String)para.nextElement();
		Object value2 = application.getAttribute(key2); //이건 String으로 다운케스팅 하면 안된다. 어트리부트 값들 중에 String이 아닌것도 있어서.%>
		
		<font color = red><b><%=key2 %></b></font>:<%= value2 %><br>
	<%}

%>

<pre>
	* 웹 어플리케이션은 네 개의 영역(Score)을 갖는다.
	- PAGE 여역 : 하나의 JSP 페이지를 처리할 때 사용되는 영역
	- REQUEST 영역 : 하나의 HTTP 요청을 처리할 때 사용되는 영역
	- SESSIOM 영역 : 하나의 웹 브라우저와 관련 영역
	- APPLICATION 영역 : 하나의 웹 어플리케이션과 관련된 영역
	
	*기본 객체별로 속성의 활용
	- pageContext : PAGE 영역을 담당. 하나의 JSP 페이지 내에서 공유될 것을 저장. 주로 커스텀 태그에서 새로운 변수를 추가할 때 사용
	- request : REQUEST 영역을 담당. 한 번의 요청을 처리하는 데 사용되는 모든 JSP 페이지에서 공유될 값을 저장한다. 주로 하나의 요청을 처리하는데 사용되는 JSP 페이지 사이에서 정보를 전달하기 위해 사용된다.
	- session : session 여역을 담당. 한 사용자(브라우저)와 관련된 정보를 JSP페이지들이 공유하기 위해서 사용된다. 주로 사용자의 로그인 정보과 같은 것들을 저장한다.
	- application : application 영역을 담당. 모든 사용자와 관련해서 공유할 정보를 저장한다. 임시 디렉터리 경ㄹ와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다.
	유인물 시험범위 여기까지
</pre>

</body>
</html>