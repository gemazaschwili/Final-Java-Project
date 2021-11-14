<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
    <h1>This username is unavailable.</h1>
    <style>
        Body {

            font-family: Calibri, Helvetica, sans-serif;
            background-color: navajowhite;
        }
        button {
            background-color: #4CAF50;
            width: 10%;
            color: white;
            padding: 6px;
            margin: 10px 0px;
            border: none;
            cursor: pointer;
        }
        input[type=text], input[type=password] {
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid green;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.7;
        }

    </style>
</head>
<body>
<%--    TODO: register-servlet--%>
<form action="login-servlet">
    <label for="username"> Enter your username: </label>
    <input type="text" id="username" name="username" required="true" placeholder="Username"><br><br>
    <label for="password"> Enter your password: </label>
    <input type="password" id="password" name="password" required="true" placeholder="Password"><br><br>
    <label for="repeat-password"> Please confirm password: </label>
    <input type="password" id="repeat-password" name="repeat-password" required="true" placeholder="Confirm Password"><br><br>
    <label for="first-name"> Enter your first name: </label>
    <input type="text" id="first-name" name="first-name" required="true" placeholder="First Name"><br><br>
    <label for="last-name"> Enter your last name: </label>
    <input type="text" id="last-name" name="last-name" required="true" placeholder="Last Name"><br><br>
    <label for="profession"> Enter your profession: </label>
    <input type="text" id="profession" name="profession" required="true" placeholder="Profession"><br><br>
    <button type="submit">Sign Up</button>
</form>
</body>
</html>
