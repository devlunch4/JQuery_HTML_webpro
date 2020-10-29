<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

		String userName = request.getParameter("name");
		String content = request.getParameter("area");
		//입력시 엔터(\r\n)를 출력을 위해서 br태그로 바꾼다.
		content = content.replaceAll("\r\n", "<br>");
		//각각 하나로 나누어야한다.
		//content = content.replaceAll("\r", "").replaceAll("\n", "<br>");
		String sel[] = request.getParameterValues("fruit");

		String res = "";
		for (int i = 0; i < sel.length; i++) {
			res += sel[i] + ",";
		}

		int idx = res.lastIndexOf(",");
		res += res.substring(0, idx);
	%>

	이름 :
	<%=userName%>
	<br> 내용 :
	<%=content%>
	<br> 좋아하는 과일 :
	<%=res%>
	
</body>
</html>