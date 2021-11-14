<html>
<head>
    <title>Registration Page</title>
    <h1 style="text-align: center" >Those passwords didn't match. Try again.</h1>
    <style>
        Body {

            font-family: Calibri, Helvetica, sans-serif;
            background-color: navajowhite;
        }
        button {
            background-color: dodgerblue;
            position:absolute;
            top:260px;
            right:870px;
            width: 10%;
            color: white;
            padding: 6px;
            margin: 10px 0px;
            border: none;
            cursor: pointer;
        }
        .img-container {
            position:  absolute;
            top : 400px;
            left: 600px;
        }
        input[type=username]{
            text-align:center;
            position:absolute;
            top:50px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }
        input[type=password]{
            text-align:center;
            position:absolute;
            top:84.8px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }

        input[type=repeatpassword]{
            text-align:center;
            position:absolute;
            top:119.6px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }
        input[type=firstname]{
            text-align:center;
            position:absolute;
            top:154.4px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }
        input[type=lastname]{
            text-align:center;
            position:absolute;
            top:189.2px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }
        input[type=profession]{
            text-align:center;
            position:absolute;
            top:224px;
            right:870px;
            width: 10%;
            margin: 8px 0;
            padding: 6px 20px;
            display: inline-block;
            border: 2px solid dodgerblue;
            box-sizing: border-box;
        }

        button:hover {
            opacity: 0.7;
        }

    </style>
</head>
<body>

<form action="register-servlet">
    <input type="username" id="username" name="username" required="true" placeholder="Username"><br><br>
    <input type="password" id="password" name="password" required="true" placeholder="Password"><br><br>
    <input type="repeatpassword" id="repeat-password" name="repeat-password" required="true" placeholder="Confirm Password"><br><br>
    <input type="firstname" id="first-name" name="first-name" required="true" placeholder="First Name"><br><br>
    <input type="lastname" id="last-name" name="last-name" required="true" placeholder="Last Name"><br><br>
    <input type="profession" id="profession" name="profession" required="true" placeholder="Profession"><br><br>
    <button type="submit">Sign Up</button>
</form>
<div class="img-container">
    <img src="reggg.jpg" alt="Photo">
</div>
</body>
</html>