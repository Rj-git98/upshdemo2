<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style type="text/css">


.label{
font-size:20px;
font-style: italic;
font-family: sans-serif;
font-weight: bold;
}

.error {
    color: red;
    font-style: italic;
}
.required
{
    color: red;
}
.input{
text-align:center;
font-size:20px;}

.column
{
display:table-cell;
}
.container{
display:table;
margin: auto;
padding-left:100px;
}
.row{
display:table-row;
}
p{
color:red;
margin-left:120px;
font-size: 20px;
}
.register{
height: 200px;
  background-color: #cccccc;
  background-image: radial-gradient(#ccffff,#3385ff); 
  margin-left:10px;
  margin-right:50px;
  margin-top:50px;
  
  }
  #submit{
  text-align: center;
  cursor:pointer;
  border-radius: 4px;
  color:white;
  font-size: 15px;
 background-color:#2e2eb8;
 margin-left:150px;
 margin-top:20px;
 font-size: 20px;
  }
  .label{
  font-size:20px;
  }
</style>


</head>
<body class="register">


<div class="container" >
<h1 align="center">Registration</h1>
<form:form action="/saveCustomer" modelAttribute="customer" autocomplete="off" method="post">
<form:input type="hidden"  path="custId"/>
<div class="row">
<div class="column"></div><form:label class="label" path="userName">User Name :</form:label><span class="required">*</span>
<div class="column"></div><form:input class="input" type="text"  path="userName"/>
<div class="column"></div><form:errors path="userName" cssClass="error"/><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="password">Password :</form:label><span class="required">*</span>
<div class="column"></div><form:input class="input" type="password"   path="password"/>
<div class="column"></div><form:errors path="password" cssClass="error"/><br><br>
</div>

<div class="row">
<div class="column"></div><form:label class="label" path="custName">Name :</form:label><span class="required">*</span> 
<div class="column"></div><form:input  class="input" type="text" path="custName"/>
<div class="column"></div><form:errors path="custName" cssClass="error"/><br><br>

</div>
<div class="row">
<div class="column"></div><form:label class="label" path="city">City :</form:label><span class="required">*</span> 
<div class="column"></div><form:input  class="input" type="text" path="city"/>
<div class="column"></div><form:errors path="city" cssClass="error"/><br><br>

</div>
<div class="row">
<div class="column"></div><form:label class="label" path="mobileNo">Mobile Number :</form:label><span class="required">*</span>
<div class="column"></div><form:input class="input" type="text" path="mobileNo"/>
<div class="column"></div><form:errors path="mobileNo" cssClass="error"/><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="occupation">Occupation</form:label><span class="required">*</span>
<div class="column"></div><form:input class="input" type="text" path="occupation"/>
<div class="column"></div><form:errors path="occupation" cssClass="error"/><br><br>
</div>


<div class="row">
<div class="column"></div><form:label class="label" path="age">Age :</form:label> <span class="required">*</span>
<div class="column"></div><form:input class="input" type="text" path="age"/>
<div class="column"></div><form:errors path="age" cssClass="error"/><br><br>
</div>



<input type="submit"id="submit" value="Register">
<br>
    <br>
    <p>${message}</p>

</form:form>
</div>

</body>
</html>