<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book My show</title>
<style >
h1{color:black;
text-align:center;}

body {
    text-align: center;
    background-color: white;
    background-image:p.jpeg;
    background-size: cover;
  }
  input[type="text"],
  input[type="password"],
  input[type="submit"] {
    margin: 5px;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    width: 200px;
  }
  input[type="submit"] {
    background-color:red;
    color: white;
    border: none;
    cursor: pointer;
  }
</style>
</head>
<body>


<h1>BOOK MY SHOW</h1><br>
<form action="./servlet1">

<input type="text" name="un" placeholder="username"><br>
<input type="password" name="pass" placeholder="password"><br>
<input type="submit" name="login" value="login"><br>

</form>
<a href="registration.jsp">
<input type="submit" name="reg" value="registration">
</a>







</body>
</html>