<%@ page import="com.example.main.Constants" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Page</title>
    <style>
        Body {

            font-family: Calibri, Helvetica, sans-serif;
            background-color: navajowhite;
        }ge
        .img-container {
            text-align: center;
        }
    </style>
</head>
<body>
<h1 style="text-align: center"> Welcome, <%= request.getAttribute(Constants.USERNAME) %> ! </h1>
<div class="img-container">
    <img src="regphoto1.png" alt="Photo">
</div>
<h3 style="text-align: left"> Username: <%= request.getAttribute(Constants.USERNAME) %> </h3>
<h3 style="text-align: left"> First Name: <%= request.getAttribute(Constants.FIRSTNAME) %> </h3>
<h3 style="text-align: left"> Last Name: <%= request.getAttribute(Constants.LASTNAME) %> </h3>
<h3 style="text-align: left"> Profession: <%= request.getAttribute(Constants.PROFESSION) %> </h3>

<div style="text-align:left">
    <a href="index.jsp" style="display:inline-block">Log Out</a>
</div>ge

</body>
</html>
