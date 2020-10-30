<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
	border: 1px dotted GREEN;
	width: auto;
	height: auto;
}

td{
	border: 1px solid black;
}
</style>
</head>
<body>


	<%
		//코드 언어 변환
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("name");
		String useremail = request.getParameter("email");
		String usertext = request.getParameter("txt");
	%>



	<table>
		<tr>
			<td id="td1">이름 :</td>
			<td><%=username%></td>
		</tr>

		<tr>
			<td id="td1">이메일 :</td>
			<td><%=useremail%></td>
		</tr>

		<tr>
			<td id="td1">입력내용 :</td>
			<td><%=usertext%></td>
		</tr>


	</table>




</body>
</html>