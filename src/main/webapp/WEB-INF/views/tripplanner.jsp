<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tourist Places</title>
</head>
<style>
body{
box-sizing: border-box;
}

.header {
 
width:100%;
height:80px;
margin:0;
padding:0px;
 position:relative;
display:block;
  position: -webkit-sticky;
text-align:center;
border-bottom:1px solid;
font-size: 30px;
color:white;
background-color:#eb4b4b ; 
}
.header h4{
padding-top:10px;
}
table,th,td {
        padding: 10px;
        border: 1px solid black;
        border-collapse: collapse;
       border-spacing:15px 40px;
            
      }
      .table{
      display:inline-block;
      }
table{
margin-top:60px;
margin-left:250px;
 width:500px;
 height:200px;
 position:absolute;
}
h4{
margin-top:30px;
margin-left:100px;
display:inline-block;
position:relative;
}
#savings a{
margin-top:40px;
float:right;
margin-right:90px;
display:block;
position:relative;
font-size:30px;
color: red;
text-decoration: none;
}
#custdetails a{
margin-top:40px;
float:left;
text-align:left;
margin-left:90px;
display:block;
position:relative;
font-size:30px;
color: red;
text-decoration: none;
}
</style>
<body>
<div class="header">
<h4 >Tourist Places of India</h4>
</div>
<c:url var="details" value="/showDetails">
<c:param name="custId" value="${custId}"/>
</c:url>
<c:url var="savings" value="/showSavings">
<c:param name="custId" value="${custId}"/>
</c:url>

<div id="custdetails"><a href="${details}">Profile</a></div>
<div id="savings"><a href="${savings}">Calculate Savings</a></div>
<table>
<tr>
<td><img src="/static/images/AGRA.jpg" width="180" height="120" alt="description here" /></td>
<td><h3>Agra</h3></td>
<td><h3>Weather:  24° C  Best Time: Oct-Mar </h3></td>
<td><h3> Known For : Taj Mahal , Fatehpur Sikri  , Agra Fort</h3></td>
<td><h4>Rs.5000</h4></td>
</tr>
<tr>
<td><img src="/static/images/GOA.jpg" width="180" height="120" alt="description here" /></td>
<td><h3>Goa</h3></td>
<td><h3>Weather:  32° C  Best Time: November - February </h3></td>
<td><h3> Known For : Calangute Beach  Basilica of Bom Jesus  Water Sports in Goa</h3></td>
<td><h4>Rs.10000</h4></td>
</tr>
<tr>
<td><img src="/static/images/MANALI.jpg" width="180" height="120" alt="description here" /></td>
<td><h3>Manali</h3></td>
<td><h3>Weather:  1° C Best Time: October - June </h3></td>
<td><h3> Known For : Solang Valley  Rohtang Pass  Adventure Activities in Manali</h3></td>
<td><h4>Rs.15000</h4></td>
</tr>
<tr>
<td><img src="/static/images/MUNNAR.jpg" width="180" height="120" alt="description here" /></td>
<td><h3>Munnar</h3></td>
<td><h3>Weather:  32° C  Best Time: November - February </h3></td>
<td><h3>Known For : Echo Point, Munnar  Photo Point  Atukkad Waterfalls</h3></td>
<td><h4>Rs.6000</h4></td>
</tr>
<tr>
<td><img src="/static/images/OOTY.jpg" width="180" height="120" alt="description here" /></td>
<td><h3>OOTY</h3></td>
<td><h3>Weather:  18° C Best Time: October - June </h3></td>
<td><h3>Known For : Nilgiri Mountain Railway  Ooty Lake  Emerald Lake, Ooty</h3></td>
<td><h4>Rs.4000</h4></td>
</tr>

</table>




 

</body>
</html>