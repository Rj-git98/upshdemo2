<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
.login{
height: 200px;
  background-color: #cccccc;
  background-image: radial-gradient(#ccffff,#3385ff); 
  
  }
  .container{
  width:100%;
  heighth:100%;
  position:relative;
  box-sizing: border-box;
  display:block;
  }
  .form{
  padding-top:10%;
  padding-left:50%:
  }
  .submit{
  margin-top:30px;
  top:30px;
  height:20px;
  width:70px;
  
  }
  .input,.label{
  font-size:20px;
  }
.btn{
font-size: 15px;
 background-color:#2e2eb8;
  padding: 15px 32px;
  text-align: center;
  cursor:pointer;
  border-radius: 4px;
  color:white;
}
p{
color:red;
margin-top:60px;
font-family:serif;
font-size: 20px;
padding-left:30px;
}
.url{
margin-top:90px;
padding-left:30px;
}

</style>
</head>
<body class="login">
<div class="container" align="center">
<h1 align="center">Login</h1>

<form class="form" action="/welcome" method="post">
   
<table>
<tr>
<td> <label  class="label" ><b>UserName:  </b></label></td>
<td><input type="text" class="input" placeholder="Enter Username" name="userName" value="${Customer.username}" size="30"  required>
</td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td><label  class="label" ><b>Password:  </b></label></td>
<td><input type="password" class="input" placeholder="Enter password" name="password" value="${Customer.password}" size="30"  required></td>
</tr>
</table>
<div class="submit">
 <input type="submit" class="btn"  value="Login">
</div>
     <p>${message}</p>
    <div class="url">
    <h4>Don't have an account <a href="/register">Sign up</a></h4>
    </div>
    
   </form> 
  
</div>


</body>
</html>