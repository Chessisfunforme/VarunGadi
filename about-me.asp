<!--#include file="datacom.asp" -->

<%
strSQL= "SELECT * FROM content ORDER BY ID ASC"         
set rsContentDisplay = server.Createobject("ADODB.Recordset")
rsContentDisplay.open strSQL,CON,3,3
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmaths.com - Life without math is impossible. Learn Math!</title>
			
		<meta name="description" content="This is about math and I made it to help people who are struggling with math. Life without math is impossible. Learn Math!">
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
			
			<!--#include file="about-me-essay.asp"-->
			
			<!--#include file="footer.asp"-->
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>