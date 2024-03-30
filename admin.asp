<!--#include file="datacom.asp"-->

<%
if session("Login") <> "Verified" Then
	response.redirect("login.asp")
End If


strSQL= "SELECT * FROM content WHERE Published='Yes' ORDER BY OrderID ASC"         
set rsContentDisplay = server.Createobject("ADODB.Recordset")
rsContentDisplay.open strSQL,CON,3,3
%>

<html>
 
	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<!--#include file="header.asp"-->
	
		<title>
			Admin Page.
		</title>
			
	</head>
	
	<body>
	
		<div id="Navigation">
	
			-<a href="admin-display-contacts.asp" >Display Contacts</a>
			
			<br />
			
			-<a href="admin-content-add.asp" >Add Content</a>
			
			<br />
			
			-<a href="admin-content-edit-home.asp" >Edit Content</a>
			
			<br />
		
			-<a href="default.asp" >Home Page</a>
			
			<br />
			
			-<a href="contact.asp" >Contact Me</a>
			
			<br />
			
			<%
				while not rsContentDisplay.eof or rsContentDisplay.bof
			%>
			
			-<a href="content.asp?URL=<%=rsContentDisplay("URLSlug")%>" ><%=rsContentDisplay("Title")%></a>
			
			<br />
			
			<%
				rsContentDisplay.Movenext
				wend
			%>
				
			<%
				if session("Login") = "Verified" Then
			%>

				<h4>
					Unpublished Posts
				</h4>

			<%
			strSQLUnpublished= "SELECT * FROM content WHERE Published='No' ORDER BY OrderID ASC"
			set rsContentDisplayUnpublished = server.Createobject("ADODB.Recordset")
			rsContentDisplayUnpublished.open strSQLUnpublished,CON,3,3
			%>

				
			<%
				while not rsContentDisplayUnpublished.eof and not rsContentDisplayUnpublished.bof
			%>
			
			-<a href="content.asp?URL=<%=rsContentDisplayUnpublished("URLSlug")%>" ><%=rsContentDisplayUnpublished("Title")%></a>
			
			<br />
			
			<%
				rsContentDisplayUnpublished.Movenext
				wend
			%>

			<%
				End If
			%>			
	
		</div>
		
	</body>
	
</html>