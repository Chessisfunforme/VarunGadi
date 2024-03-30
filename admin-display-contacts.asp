<!--#include file="datacom.asp"-->

<%
If session("Login") <> "Verified" Then
	response.redirect("login.asp")
End If

If request("FirstName") <> "" Then
	strSQL= "SELECT * FROM contacts WHERE FirstName='"&request("FirstName")&"'"
Else If request("LastName") <> "" Then
	strSQL= "SELECT * FROM contacts WHERE LastName='"&request("LastName")&"'"
Else If request("Email") <> "" Then
	strSQL= "SELECT * FROM contacts WHERE Email='"&request("Email")&"'"
Else If request("Message") <> "" Then
	strSQL= "SELECT * FROM contacts WHERE Message LIKE '%"&request("Message")&"%'"
Else
	strSQL= "SELECT * FROM contacts"
End If
End If
End If
End If
         
set rsContactSave = server.Createobject("ADODB.Recordset")
rsContactSave.open strSQL,CON,3,3
%>

<html>
	
	<head>
	
		<link rel="stylesheet" href="style.css">
	
		<title>
			Varunmaths.com - Life without math is impossible.
		</title>
		
	<head>

	<body>
		
		<!--#include file="header.asp"-->
		
		<h1>
			Please see contact messages below.
		</h1>
		
		<h1>
			Search
		</h1>
		
		<form name="ContactForm" id="ContactForm" method="post" action="admin-display-contacts.asp" >	
				
			<p>
				Search By First Name: <br /> <input size="50" type="text" name="FirstName" id="FirstName" />
			</p>
			
			<p>
				Search By Last Name: <br /> <input size="50" type="text" name="LastName" id="LastName" />
			</p>
			
			<p>
				Search By Email: <br /> <input size="50" type="text" name="Email" id="Email" />
			</p>
			
			<p>
				Search In Message: <br /> <textArea name="Message" id="Message" rows="5" cols="100" > </textArea>
			</p>
			
			<p>
				<input type="Submit" name="Submit" id="Submit" />
			</p>
				
		</form>
		
		<table border="1" cellspacing="2" cellpadding="3" >
				
			<tr>
			
			
				<td>ID</td>
				
				<td>FirstName</td>
				
				<td>LastName</td>
				
				<td>Email</td>
				
				<td>PhoneNumber</td>
				
				<td>Message</td>
				
				<td>DateEntered</td>
				
				<td>IPAddress</td>
				
				<td>HTTPAll</td>
				
				<td>Delete</td>
				
			</tr>
			
				<%
				while not rsContactSave.eof
					ID=rsContactSave("ID")
					FirstName=rsContactSave("FirstName")
					LastName=rsContactSave("LastName")
					Email=rsContactSave("Email")
					PhoneNumber=rsContactSave("PhoneNumber")
					Message=rsContactSave("Message")
					DateEntered=rsContactSave("DateEntered")
					IPAddress=rsContactSave("IPAddress")
					HTTPAll=rsContactSave("HTTPAll")
				%>
			
			<tr>
			
				<td><%=ID%></td>
				
				<td><%=FirstName%></td>
				
				<td><%=LastName%></td>
				
				<td><%=Email%></td>
				
				<td><%=PhoneNumber%></td>
				
				<td><%=Message%></td>
				
				<td><%=DateEntered%></td>
				
				<td><%=IPAddress%></td>
				
				<td><%=HTTPAll%></td>
				
				<td> <a href="admin-confirm-delete-contacts.asp?ID=<%=ID%>">Delete Contact</a> </td>
			
			</tr>
			
			<%
			rsContactSave.movenext
			wend
			%>
				
		</table>
		
	</body>
	
</html>