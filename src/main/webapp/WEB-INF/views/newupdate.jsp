<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Savings </title>
<script type="text/javascript">
function calculate_savings(){
	var income=parseInt(document.getElementById('total_income').value);
	 var  total_expenses= parseInt(document.getElementById('food').value)+parseInt(document.getElementById('clothes').value)+parseInt(document.getElementById('education').value)+
	 parseInt(document.getElementById('power').value)+parseInt(document.getElementById('transport').value)+parseInt(document.getElementById('medical').value);
	 var previous_savings=parseInt(document.getElementById('output').value)
 var result=(income-total_expenses)+previous_savings;
	 if(total_expenses>income){
		 document.getElementById('trip').textContent="enter amount within your income";
	 }
	 else{
	 document.getElementById('output').value=Math.abs(result);
	 document.getElementById("button").disabled = true;
	 
		
	if(result == 4000 ){
		document.getElementById('trip').textContent="you can go for a trip to Ooty";
	}
	else if(result >4000 && result<=5000 ){
		document.getElementById('trip').textContent="you can go for a trip to Ooty or Agra ";
	}
	else if(result>5000 && result<=6000){
		document.getElementById('trip').textContent="you can go for a trip to Ooty or Agra or Munnar ";

	}
	else if(result>6000 && result<10000){
		document.getElementById('trip').textContent="you can go for a trip to Ooty or Agra or Munnar or Goa ";

	}
	else if(result>10000 ){
		document.getElementById('trip').textContent="you can go for a trip to Ooty or Agra or Munnar or Goa or Manali";

	}
	else if(result<4000) {
		document.getElementById('trip').textContent="you have to try to spend less amount and increase ur savings";

	}
	
		alert("Click submit to save and logout");
}
}

</script>
<style type="text/css">
body{
box-sizing: border-box;
}
.button
{

}

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
padding-left:500px;
margin-left:100px;
position:absolute;
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
 position: relative;
 disply:block;
  }
  .label{
  font-size:20px;
  }
  #id{
  margin-top:20px;
  }
  
</style>


</head>
<body class="register">


<div class="container" >
<h1 align="center">Calculate Savings</h1>
<form:form  action="/updateExpenses" method="post" id="form1" modelAttribute="expenditure"  autocomplete="off">
<form:input type="hidden"  path="custId"/>
<div class="row">
<div class="column"></div><form:label class="label" path="income" >Monthly Income :</form:label>
<div class="column"></div><form:input class="input" type="text"   path="income" id="total_income" /><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="food" >Food :</form:label>
<div class="column"></div><form:input class="input" path="food" type="text" id="food" /><br><br>
</div>

<div class="row">
<div class="column"></div><form:label class="label" path="clothes" >Clothes :</form:label> 
<div class="column"></div><form:input  class="input" path="clothes" type="text" id="clothes" /><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="clothes" >Education :</form:label>
<div class="column"></div><form:input  class="input"  path="clothes" type="text" id="education"/><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="power" >Power :</form:label>
<div class="column"></div><form:input class="input" path="power" type="text" id="power" /><br><br>
</div>
<div class="row">
<div class="column"></div><form:label class="label" path="transport" >transport :</form:label>
<div class="column"></div><form:input class="input"  path="transport" type="text" id="transport" /><br><br>
</div>


<div class="row">
<div class="column"></div><form:label class="label" path="medical" >Medical :</form:label>
<div class="column"></div><form:input class="input"  path="medical" type="text" id="medical" /><br><br>
</div>



<input type="button" onclick="calculate_savings();" value="calculate" id="button" /><br><br>
Your Savings is: <form:input  type="text" id="output" path="savings" style="border:none" /><br><br>
<input type="submit"id="submit" value="Submit">


</form:form>
</div>
<p id="trip"></p>

</body>
</html>