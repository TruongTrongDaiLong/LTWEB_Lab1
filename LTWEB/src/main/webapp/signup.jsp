<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

form {
	width: 50%;
	height: 80%;
	background-color: white;
	padding: 30px 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2, p {
	color: #333;
	text-align: center;
	margin-top: 10px;
}

.alert {
	text-align: center;
	color: red;
}

.alertdanger {
	text-align: center;
	color: red;
}

.submit {
	margin: 10px auto;
	text-align: center;
	height: 10%;
}

input[type="text"], input[type="password"], input[type="number"], input[type="email"] {
	width: 100%;
	height: 50%;
	padding: 0.5em;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: blue;
	color: white;
	margin: 20px auto;
	padding: 0.5em 1em;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	height: 50%;
	width: 50%;
}

input[type="submit"]:hover {
	background-color: red;
}

a:hover {
	color: red;
}

img {
	margin-left:30px;
	width: 20%;
	height: 30%;
}

.in {
	height: 9%;
	margin: 20px;
}
</style>
</head>
<body>
<div id='container'>
		<div class='signup'>

			<form action="signupAction.jsp" method="post">
			    <input type="text" name="fullname" id="fullname" placeholder="Nhập Họ tên"required> 
				<input type="text" name="username" id="username" placeholder="Nhập tài Khoản"required> 
				<input type="email" name="email" id="email"placeholder="Nhập email" required> 
				<input type="password" name="password" id="password" placeholder="Nhập mật khẩu" required> <input
					type="submit" value="Đăng ký">
			</form>
			<br>
			<h2>
				<a href="login.jsp">Đăng Nhập</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("done".equals(msg)) {
			%>
			<h2>Đăng ký thành công</h2>
			<%
				}
			%>

			<%
			if ("invalid".equals(msg)) {
			%>
			<h2>Đăng ký thất bại</h2>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>