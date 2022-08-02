<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function checkUser() {
		if (document.login.inputname.value == "") {
			alert("用户名不能为空.");
			return false;
		}
		if (document.login.inputpass.value == "") {
			alert("密码不能为空.");
			return false;
		}
		return true;
	}
</script>
<title>登录</title>
<link rel="stylesheet" href="assets/css/login2.css">
<body>
	<div class="login-container">
		<h1>Welcome To LiaoYunPan,请登录</h1>
		<form action="LoginServlet" method="post" id="loginForm" name="login"
			onsubmit="return checkUser()">
			<div>
				<input type="text" id="inputname" name="username" class="username"
					placeholder="用户名" autocomplete="off" />
			</div>
			<div>
				<input type="password" id="inputpass" name="password"
					class="password" placeholder="密码" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<button id="submit" type="submit">登 录</button><br>
			<a href="register.jsp">
				<button type="button" class="register-tis">账号注册</button>
			</a>
		</form>
		
		
	</div>

</body>
</html>
