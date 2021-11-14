<!DOCTYPE html>
<html>
<head>
    <title>Log in</title>
    <style>
        Body {
            font-family: Calibri, Helvetica, sans-serif;
            background-color: navajowhite;
        }

        input[type=text]{
            position:  absolute;
            top : 108px;
            left: 870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid green;
            box-sizing: border-box;

        }
        input[type=password] {
            position:  absolute;
            top : 150px;
            left: 870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid green;
            box-sizing: border-box;

        }
        .img-container {
            position: absolute;
            top: 245px;
            left: 400px;
        }

        button {
            background-color: #04AA6D;
            position:  absolute;
            top : 200px;
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
<h1 style="text-align:center;">You are successfully registered!</h1> <h3 style="text-align:center;">Enter your username and password!</h3>

<form action="login-servlet">
    <input type="text" id="username" name="username" required="true" placeholder="Username"><br><br>
    <input type="password" id="password" name="password" required="true" placeholder="Password"><br><br>
    <button type="submit">Log in</button>
</form>

<div style="text-align:center">
    <a href="register.jsp" style="position:absolute; top:240px; left:940px">Register</a>
</div>

<div class="img-container">
    <img src="HELLO.jpg" alt="Photo">
</div>

</body>
</html>
