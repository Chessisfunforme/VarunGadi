<!--#include file="datacom.asp"-->

<%
If session("Login") <> "Verified" Then
	response.redirect("login.asp")
End If

strSQL = "SELECT * FROM content"
         
set rsContentSave = server.Createobject("ADODB.Recordset")
rsContentSave.open strSQL,CON,3,3

%>

<html>
	
	<head>
	
		<title>
			Varunmaths.com - Life without math is impossible.
		</title>
		
		<link rel="stylesheet" link="style.css">
		
	<head>

	<body>
	
		<!--#include file="header.asp"-->
		
		<h1>
			Please see content below.
		</h1>
		
		<table border="1" cellspacing="2" cellpadding="3" >
				
			<tr>
			
			
				<td>ID</td>
				
				<td>OrderID</td>
				
				<td>Title</td>
				
				<td>URLSlug</td>
				
				<td>Tags</td>
				
				<td>User</td>
				
				<td>Category</td>
				
				<td>Published</td>
				
				<td>MetaDescription</td>
				
				<td>DateEntered</td>
				
				<td>Edit</td>
				
				<td>View</td>
				
			</tr>
			
				<%
				while not rsContentSave.eof
					ID=rsContentSave("ID")
					OrderID=rsContentSave("OrderID")
					Title=rsContentSave("Title")
					URLSlug=rsContentSave("URLSlug")
					Tags=rsContentSave("Tags")
					User=rsContentSave("User")
					Category=rsContentSave("Category")
					Published=rsContentSave("Published")
					MetaDescription=rsContentSave("MetaDescription")
					DateEntered=rsContentSave("DateEntered")
				%>
			
			<tr>
			
				<td><%=ID%></td>
				
				<td><%=OrderID%></td>
				
				<td><%=Title%></td>
				
				<td><%=URLSlug%></td>
				
				<td><%=Tags%></td>
				
				<td><%=User%></td>
				
				<td><%=Category%></td>
				
				<td><%=Published%></td>
				
				<td><%=MetaDescription%></td>
				
				<td><%=DateEntered%></td>
				
				<td> <a href="admin-content-edit.asp?ID=<%=ID%>">Edit Content</a> </td>
				
				<td> <a href="content.asp?URL=<%=rsContentSave("URLSlug")%>">View</a>
			
			</tr>
			
			<%
			rsContentSave.movenext
			wend
			%>
				
		</table>
		
	</body>
	
</html>