<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: none;
}

.fst {
	text-align: center;
	font-size: 80px;
	margin-top: 5px;
	font-weight: bold;
	color: white;
	size: 55px;
	background-size: 19px;
	padding: 50px;
	background-image:
		url("https://chiefexecutive.net/wp-content/uploads/2019/07/AdobeStock_140495395.jpeg");
	background-size: 100%;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

.for {
	background-color: buttonshadow;
	margin-top: 80px;
}
</style>
<style>
/* form {
	
	margin-top:100px;
	margin-left:500px;
	align-content:center
	border-style: solid;
	 width: 2000px;
	height: 2000px; 
	background-color: skyblue;
} */
</style>
</head>
<body>
	<nav>

		<header class="fst"> LOGIN PAGE</header>

	</nav>
	<div class="for">
		<form action="login" method="post" modelattribute="user">

			<c:if test="${not empty error }">
				<div>
					<h5>${error}</h5>
				</div>
			</c:if>

			<c:if test="${not empty success }">
				<div>
					<h5 style="color: green;">${success}</h5>
				</div>
			</c:if>

			<c:if test="${not empty fail }">
				<div>
					<h5 style="color: red;">${fail}</h5>
				</div>
			</c:if>
			<div class="container">
				<label for="username"><strong>Username</strong></label> <input
					type="text" placeholder="Enter Username" name="userName" required><br>
				<label for="password"><strong>Password</strong></label> <input
					type="password" placeholder="Enter Password" name="password"
					required><br>
				<button type="submit">Login </button>
				<div>
					<button type="submit"  onclick="goToRegister()">Register
					<!-- <input type="button" value="Register" onclick="goToRegister()"> -->
					</button>	
				</div>
			</div>
		</form>
	</div>


	<%-- <form action="/login" method="post">

<div> UserName:<input type="text" name="userName" value=""></div><br>

<div>Password: <input type="password" name="password" value=""></div><br>
<c:if test="${not empty error }">
<div><h5>${error}</h5></div>
</c:if> 

<c:if test="${not empty success }">
<div><h5 style="color:green;">${success}</h5></div>
</c:if>

<c:if test="${not empty fail }">
<div><h5 style="color:red;">${fail}</h5></div>
</c:if>
<div> <input type="submit" value="login"></div>
<div> <input type="button" value="Register" onclick="goToRegister()"></div>
</form> --%>

	<script type="text/javascript">
		function goToRegister() {
			window.location.href = "/regiser";
		}
	</script>

</body>
</html>