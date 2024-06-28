<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form - Book My Show</title>
<style>
  body {
    font-family: Arial, sans-serif;
    text-align: center;
    background-color: #f4f4f4;
  }
  form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  h1 {
    color: #333;
  }
  input[type="text"], input[type="password"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
  <form action="./regservlet" method="get">
    <h1>Registration for Book My Show</h1>
    <label for="un">Username:</label><br>
    <input type="text" id="un" name="un" required><br>
    <label for="cn">Contact Number:</label><br>
    <input type="tel" id="cn" name="cn" required><br>
    <label for="pass">Password:</label><br>
    <input type="password" id="pass" name="pass" required><br>
    <input type="submit" name="reg" value="Register">
  </form>
</body>
</html>
    