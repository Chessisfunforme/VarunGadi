<!--#include file="datacom.asp" -->

<%
strSQL= "SELECT * FROM content WHERE URLSlug='"&request("URL")&"'"         
set rsContent= server.Createobject("ADODB.Recordset")
rsContent.open strSQL,CON,3,3

strSQL= "SELECT * FROM content ORDER BY ID ASC"         
set rsContentDisplay = server.Createobject("ADODB.Recordset")
rsContentDisplay.open strSQL,CON,3,3
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">

		<title>Varunmaths.com - Life without math is impossible. Learn Math!</title>

		<meta name="description" content="<%=rsContent("MetaDescription")%>">

	</head>

	<body>

		<!--#include file="header.asp" -->

		<div id="Content" >

			<p align="Center" >
				<h1>
					<%=rsContent("Title")%> <%if session("Login") = "Verified" Then%> - <a href="admin-content-edit.asp?ID=<%=rsContent("ID")%>">Edit Page</a> <%End If%>
				</h1>
				<%=rsContent("Body")%>
			</p>
			
			<p>
				Last Updated: <%=rsContent("DateEntered")%>
			</p>
			
			<!--#include file="footer.asp": -->
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>