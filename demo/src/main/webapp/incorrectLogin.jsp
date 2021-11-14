<%@ page import="com.example.main.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Incorrect Login</title>
    <style>
        Body {
            font-family: Calibri, Helvetica, sans-serif;
            background-color: navajowhite;
        }

        input[type=text]{
            position:  absolute;
            top : 68px;
            left: 870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid red;
            box-sizing: border-box;

        }
        input[type=password] {
            position:  absolute;
            top : 110px;
            left: 870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid red;
            box-sizing: border-box;

        }
        .img-container {
            position:  absolute;
            top : 245px;
            left: 500px;
        }

        button {
            background-color: dodgerblue;
            position:  absolute;
            top : 150px;
            left: 910px;
            color: white;
            padding: 4px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 6%;
        }
        button:hover {
            opacity: 0.7;
        }

    </style>
</head>
<body>
<h3 style="text-align:center;"> Either username or password was incorrect, please try again. </h3>
<form action="login-servlet">
    <input type="text" id="username" name="username" required="true" placeholder="Username"><br><br>
    <input type="password" id="password" name="password" required="true" placeholder="Password"><br><br>
    <button type="submit">Log in</button>
</form>
<div class="img-container">
    <img src="error.jpg" alt="Photo">
</div>

<div style="text-align:center">
    <a href="register.jsp" style="position:absolute; top:205px; left:940px">Register</a>
</div>

</body>
</html>