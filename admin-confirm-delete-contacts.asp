<!--#include file="datacom.asp"-->

<%
If session("Login") = "" Then
response.redirect("login.asp")
End If

strSQL= "SELECT * FROM contacts WHERE ID="&request("ID")&""

set rsContactSave = server.Createobject("ADODB.Recordset")
rsContactSave.open strSQL,CON,3,3
%>
<html>
 
	<head>
		
		<link rel="stylesheet" href="style.css">
	
		<title>
			Confirmation
		</title>
		
		<!--#include file="header.asp"-->
			
	</head>
	
	<body>
		<div id="Content">
		
			Press Submit if you want to delete this contact.
			
			<form name="Delete" id="Delete" method="post" action="admin-delete-contacts.asp" >
					
					<p>
						ID: <br /> <input type="hidden" name="ID" id="ID" value="<%=request("ID")%>" />
					</p>
					
					<p>
						<input type="Submit" name="Submit" id="Submit" />
					</p>
					
			</form>	
		
		If you want to cancel, click <a href="admin.asp">here</a>.
		
		</div>
		
		<!--#include file="navigation.asp"-->
		
	</body>
	
</html>

