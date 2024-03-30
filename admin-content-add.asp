<!--#include file="datacom.asp"-->

<%
if session("Login") <> "Verified" Then
	response.redirect("login.asp")
End If

strSQL= "SELECT * FROM contacts"         
set rsContentSave = server.Createobject("ADODB.Recordset")
rsContentSave.open strSQL,CON,3,3
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmaths.com - Life without math is impossible. Learn Math!</title>
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
		
			<form name="AddContent" id="AddContent" method="post" action="admin-content-add-save.asp" >
				
				<h1>
					Add New Content:
				</h1>	
					
					<p>
						OrderID: <br /> <input size="50" type="text" name="OrderID" id="OrderID" />
					</p>
					
					<p>
						Title: <br /> <input size="50" type="text" name="Title" id="Title" />
					</p>
					
					<p>
						URLSlug: <br /> <input size="50" type="text" name="URLSlug" id="URLSlug" />
					</p>
					
					<p>
						Tags: <br /> <input size="50" type="text" name="Tags" id="Tags" />
					</p>
					
					<p>
						User: <br /> <input size="50" type="text" name="User" id="User" />
					</p>
					
					<p>
						Category: <br /> <input size="50" type="text" name="Category" id="Category" />
					</p>
					
					<p>
						Published: <Select name="Published" id="Published">
							<Option selected="selected" value="Yes">Yes</Option>
							<Option value="No">No</Option>
						</Select>
					</p>
					
					<p>
						MetaDescription: <br/> <textArea name="MetaDescription" id="MetaDescription" rows="2" cols="80"></TextArea>
					</p>	
					
					<p>
						Body: <br /> <textArea name="Body" id="Body" rows="10" cols="80" ></textArea>
					</p>
					
					<p>
						<input type="Submit" name="Submit" id="Submit" />
					</p>
					
			</form>
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>