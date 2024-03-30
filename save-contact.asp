<!--#include file="datacom.asp"-->

<%
strSQL= "SELECT * FROM contacts"         
set rsContactSave = server.Createobject("ADODB.Recordset")
rsContactSave.open strSQL,CON,3,3

FirstName=request("FirstName")
LastName=request("LastName")
Email=request("Email")
PhoneNumber=request("PhoneNumber")
Message=request("Message")

rsContactSave.Addnew
rsContactSave("FirstName")=FirstName
rsContactSave("LastName")=LastName
rsContactSave("Email")=Email
rsContactSave("PhoneNumber")=PhoneNumber
rsContactSave("Message")=Message
rsContactSave("DateEntered")=Now
rsContactSave("IPAddress")=Request.ServerVariables("remote_addr")
rsContactSave("HTTPAll")=Request.ServerVariables("ALL_HTTP")
rsContactSave.Update
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmath.com</title>
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
		
			<p>
				Your information has been sucessfuly saved! Please click <a href="default.asp">here</a> to go back to the home page.
			</p>
			
		</div>
		
		<div id="Navigation" >
		
			<a href="default.asp" >Home Page</a>
			
			<br />
			
			<a href="content.asp" >Content</a>
			
			<br />
			
			<a href="contact.asp" >Contact Me</a>
		
		</div>
		
		<div id="Footer" >
		
			<p align="center" >
				Copyright
			</p>
			
		</div>
		
	</body>
	
</html>