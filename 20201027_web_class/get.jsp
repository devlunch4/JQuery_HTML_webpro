<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color: red;
}

span {
	font-size: 1.5em;
	color: green;
}
</style>
</head>
<body>
	<h1>JSP : Java Sever Page</h1>
	html 태그와 java소스 를 동시에 기술할수 있다.
	<br> java 소스를 기술할떄느 &lt;% %&gt; 사이에 기술한다.
	<br> 클라이언트에서 전송하는 데이터를 받아서 처리한다
	<br> request라는 내장 객체를 이용해서 데이터를 받는다
	<br> 처리후 결과를 출력할떄는 out내장객체를 이용한다
	<br>또는 &lt;%= %&gt; 사이에 자바로 처리된 결과를 출력한다.
	<br>

	<%
		String userName = request.getParameter("name");
		String userId = request.getParameter("id");
		String userPas = request.getParameter("password");
		out.print("<span>" + userId + "</span>님 환영합니다.");
	%>
	<p><%= userName %> 님 즐거운 하루 되세요.</p> 
</body>
</html>