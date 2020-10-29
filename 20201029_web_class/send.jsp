<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 1px solid blue;
}

td {
	width: 150px;
	height: 40px;
	padding: 5px;
	text-align: center;
}

#cont {
	width: 250px;
}
</style>

</head>
<body>

	<h1>회원정보</h1>
	<%
		//코드 언어 변환
		request.setCharacterEncoding("UTF-8");

		//자바코드 기술 - 전송시 입력한 값들을 가져온다.
		//id의 값은 HTML form 태그에서 가져오는 것.

		String userId = request.getParameter("id");
		String[] fr = request.getParameterValues("fruit");

		//배열을 저장할 string 설정
		String res = "";
		//입력된 배열을 하나씩 뽑아서 string에 입력
		for (int i = 0; i < fr.length; i++) {
			res += fr[i] + "&nbsp;&nbsp;";
		}

		//!!!!!!!!!!!!!!!
		String gend = request.getParameter("gender");
		String userName = request.getParameter("name");

		String file = request.getParameter("file");
	%>

	<table border="1">
		<tr>
			<td>아이디 :</td>
			<td><%=userId%></td>
		</tr>

		<tr>
			<td>이름 :</td>
			<td><%=userName%></td>
		</tr>

		<tr>
			<td>성별 :</td>
			<td><%=gend%></td>
		</tr>

		<tr>
			<td>좋아하는 과일 :</td>
			<td id="cont"><%=res%></td>
		</tr>

		<tr>
			<td>파일 :</td>
			<td><%=file%></td>
		</tr>

	</table>
</body>
</html>