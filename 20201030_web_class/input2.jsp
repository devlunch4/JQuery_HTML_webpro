<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
	border: 1px solid red;
	width: auto;
	height: auto;
}
</style>
</head>
<body>
	<%
		//코드 언어 변환
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("name");
		String useraddr = request.getParameter("addr");
		String useremail = request.getParameter("email");
		String usergend = request.getParameter("gend");
	%>




	<table border="1">
		<tr>
			<td>이름 :</td>
			<td><%=username%></td>
		</tr>

		<tr>
			<td>주소 :</td>
			<td><%=useraddr%></td>
		</tr>

		<tr>
			<td>이메일 :</td>
			<td><%=useremail%></td>
		</tr>

		<tr>
			<td>성별 :</td>
			<td><%=usergend%></td>
		</tr>
	</table>

</body>
</html>