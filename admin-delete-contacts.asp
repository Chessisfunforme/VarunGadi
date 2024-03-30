<!--#include file="datacom.asp"-->

<%
If session("Login") = "" Then
response.redirect("login.asp")
End If

strSQL= "DELETE * FROM contacts WHERE ID="&request("ID")&""

set rsContactSave = server.Createobject("ADODB.Recordset")
rsContactSave.open strSQL,CON,3,3
%>
<html>
 
	<head>
	
		<title>
			Message Sucessfully Deleted
		</title>
		
		<link rel="stylesheet" link="style.css">
			
	</head>
	
	<body>
	
		<!--#include file="header.asp"-->
	
		<div id="Content">
		
			<p>
			Message Sucessfully Deleted
			</p>
			
			<p>
			To go back to the admin page, click <a href="admin.asp" >here</a>.
			</p>
			
		</div>

		<!--#include file="navigation.asp"-->
		
	</body>
	
</html>

