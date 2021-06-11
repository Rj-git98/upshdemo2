<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trip Planner</title>
</head>
<style>


body{

  background-image: url('/static/images/map.jpg'); 
   background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  box-sizing: border-box;
 height: 100%;
  margin:0px;
  width:100%;
  overflow-x: hidden;
  }
  .header{
  color:red;
  font-family: cursive;
  font-size: 40px;
  margin-left:200px;
  margin-top:30px;
  position:relative;
  font-style: italic;
  display: inline;
  
  
  }
  .center{
margin-top:40px;
  position: relative;
  top: 80%;
  left:35%;
  margin-right:0px;
  }
  .login{
 margin-right:30px;
 font-size: 25px;
background-color:#2e2eb8;
color:white;
  padding: 15px 32px;
  text-align: center;
  cursor:pointer;
  border-radius: 4px;
  }
  .register{
   margin-left:70px;
   cursor:pointer;
   color:white;
   border-radius: 4px;
   font-size: 25px;
   background-color:#2e2eb8;
    padding: 15px 32px;
  text-align: center;
  }
  
  
</style>

<body>
<div class="header"><h1  align="center">Trip Planner</h1></div>

<form action="#">
<div class="center">
<input type="button" class="login" onclick="location.href='/login'" value="Login">
<input type="button" class="register" onclick="location.href='/register'" value="Register"></div>
</form>

</body>
</html>