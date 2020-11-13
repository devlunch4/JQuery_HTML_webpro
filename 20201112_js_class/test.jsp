<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1 {
	color: red;
}

p {
	font-size: 1.2em;
	color: red;
}
</style>
<script type="text/javascript">
	function gogo() {
		//바로전페이지 -1 // 이전페이지 +1
		history.go(-1);
	}
</script>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	클라이언트에서 페이지 요청시 데이터를 받아서 서버 내에서 실행하는 서버프로그램이다
	<br>
	<br>
	<br>

	<!-- 자바코드 시작을 위한 <%%>  -->

	<%
		String scode = request.getParameter("code");
		String sname = request.getParameter("name");
		System.out.println("code : " + scode + " name : " + sname);

		//if (scode != null && scode.equals("1")) {
		//경우에서 null 부분이 먼저 나와야한다. 바뀐다면 에러가 발생. nullexception
		if (scode != null && scode.equals("1")) {
			out.print("<p>이름 : " + sname + "</p>");
		} else if (scode != null && scode.equals("2")) {
			out.print("2번 goPage사용입니다.");
		}

		if (scode == null && sname == null) {
			out.print("1번 또는 4번 버튼 실행 되었습니다 <br>");
		}
	%>
	<br>
	<!-- 이전 페이지 갈수있는 버튼 생성. 히스토리 활용  -->
	<a href="#" onclick="gogo()">뒤로</a>
</body>
</html>
