<!--#include file="datacom.asp"-->

<%
strSQL= "SELECT * FROM content"         
set rsContentSave = server.Createobject("ADODB.Recordset")
rsContentSave.open strSQL,CON,3,3

OrderID=request("OrderID")
Title=request("Title")
URLSlug=request("URLSlug")
Body=request("Body")
Tags=request("Tags")
User=request("User")
Category=request("Category")
Published=request("Published")
MetaDescription=request("MetaDescription")

rsContentSave.Addnew
rsContentSave("OrderID")=OrderID
rsContentSave("Title")=Title
rsContentSave("URLSlug")=URLSlug
rsContentSave("Body")=Body
rsContentSave("Tags")=Tags
rsContentSave("User")=User
rsContentSave("Category")=Category
rsContentSave("Published")=Published
rsContentSave("MetaDescription")=MetaDescription
rsContentSave("DateEntered")=Now
rsContentSave.Update
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
				Your content has been sucessfuly saved! Please click <a href="default.asp">here</a> to go back to the home page.
			</p>
			
			<!--#include file="header.asp" -->
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>