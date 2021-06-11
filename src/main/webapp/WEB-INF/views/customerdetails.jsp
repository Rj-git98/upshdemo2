<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<style type="text/css">
body{
height: 200px;
  font-family:sans-serif;
  font-weight:normal;
  font-size:30px;
  font-style:italic;
  background-image:radial-gradient(#ccffff,#3385ff); 
}
.viewtable{
margin-top:80px;
position:relative;
left:30px;
}

</style>
</head>
<body>
<h1 align="center">Your Profile</h1>
<div class="viewtable">
<table  align="center">

		<tr><td>Name:  </td>
		<td>${customer.custName}</td>
		</tr>
		<tr><td>City:  </td>
		<td>${customer.city}</td>
		</tr>
		<tr><td>MobileNumber:  </td>
		<td>${customer.mobileNo}</td>
		</tr>
		<tr><td>Occupation: </td>
		<td>${customer.occupation}</td>
		</tr>	
		<tr><td>Age:  </td>
		<td>${customer.age}</td>	
	    </tr>
	    <tr><td>Previous Savings:  </td>
		<td>${expenditure.savings}</td>	
	    </tr>
	
		
</table>
</div>
</body>
</html>