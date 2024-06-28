<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book My Show - Your Entertainment Hub</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  header {
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
    text-align: center;
  }
  nav {
    background-color: #444;
    padding: 10px;
    text-align: center;
  }
  nav a {
    color: #fff;
    text-decoration: none;
    padding: 10px 20px;
  }
  nav a:hover {
    background-color: #555;
  }
  .hero {
    background-image: url('background-image.jpg');
    background-size: cover;
    background-position: center;
    height: 400px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: #fff;
  }
  .hero h1 {
    font-size: 3em;
    margin-bottom: 20px;
  }
  .hero p {
    font-size: 1.2em;
    margin-bottom: 20px;
  }
  .cta-button {
    background-color: #f00;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    font-size: 1.2em;
    text-transform: uppercase;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  .cta-button:hover {
    background-color: #d00;
  }
  footer {
    background-color: #333;
    color: #fff;
    padding: 20px;
    text-align: center;
  }
</style>
</head>
<body>
  <header>
    <h1>Welcome to Book My Show</h1>
  </header>
  <nav>
    <a href="#">Home</a>
    <a href="movies.jsp">Movies</a>
    <a href="#">concert</a>
    <a href="#">Plays</a>
    <a href="#">Sports</a>
  </nav>
  <div class="hero">
    <div>
      <h1>Discover the Best Entertainment</h1>
      <p>Book tickets for movies, events, plays, and sports</p>
      
    </div>
  </div>
  <footer>
    <p>&copy; 2024 Book My Show. All rights reserved.</p>
  </footer>
</body>
</html>
    