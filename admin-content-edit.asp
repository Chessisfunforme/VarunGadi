<!--#include file="datacom.asp"-->

<%
strSQL= "SELECT * FROM content WHERE ID="&request("ID")&""
set rsContentEdit = server.Createobject("ADODB.Recordset")
rsContentEdit.open strSQL,CON,3,3

Content_ID=rsContentEdit("ID")
Content_OrderID=rsContentEdit("OrderID")
Content_Title=rsContentEdit("Title")
Content_URLSlug=rsContentEdit("URLSlug")
Content_Body=rsContentEdit("Body")
Content_Tags=rsContentEdit("Tags")
Content_User=rsContentEdit("User")
Content_Category=rsContentEdit("Category")
Content_Published=rsContentEdit("Published")
Content_MetaDescription=rsContentEdit("MetaDescription")
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmaths.com - Life without math is impossible. Learn Math!</title>
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
		
			<form name="AddContent" id="AddContent" method="post" action="admin-content-edit-save.asp" >
				
				<h1>
					Edit Content:
				</h1>
				
					<%If request("M") <> "" Then%>
					
					<p>
						<%=request("M")%>
					</p>
					
					<%End If%>
				
					<p>
						ID: <%=Content_ID%> <br /> <input type="hidden" name="ID" id="ID" value="<%=Content_ID%>" />
					</p>
					
					<p>
						OrderID: <br /> <input size="50" type="text" name="OrderID" id="OrderID" value="<%=Content_OrderID%>" />
					</p>
					
					<p>
						Title: <br /> <input size="50" type="text" name="Title" id="Title" value="<%=Content_Title%>" />
					</p>
					
					<p>
						URLSlug: <br /> <input size="50" type="text" name="URLSlug" id="URLSlug" value="<%=Content_URLSlug%>" />
					</p>
					
					<p>
						Tags: <br /> <input size="50" type="text" name="Tags" id="Tags" value="<%=Content_Tags%>" />
					</p>
					
					<p>
						User: <br /> <input size="50" type="text" name="User" id="User" value="<%=Content_User%>" />
					</p>
					
					<p>
						Category: <br /> <input size="50" type="text" name="Category" id="Category" value="<%=Content_Category%>" />
					</p>
					
					<p>
						Published: <Select name="Published" id="Published" value="<%=Content_Published%>" >
							<Option <%if Content_Published="Yes" Then%> selected="selected" <%End if%> value="Yes">Yes</Option>
							<Option <%if Content_Published="No" Then%> selected="selected" <%End if%> value="No">No</Option>
						</Select>
					</p>
					
					<p>
						MetaDescription: <br /> <textArea name="MetaDescription" id="MetaDescription" rows="2" cols="80"><%=Content_MetaDescription%></textArea>
					</p>
					
					<p>
						Body: <br /> <textArea name="Body" id="Body" rows="10" cols="80" ><%=Content_Body%></textArea>
					</p>
					
					<p>
						<input type="Submit" name="Submit" id="Submit" />
					</p>
					
			</form>
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>