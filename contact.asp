<!--#include file="datacom.asp" -->

<%
strSQL= "SELECT * FROM contacts"         
set rsContactSave = server.Createobject("ADODB.Recordset")
rsContactSave.open strSQL,CON,3,3
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmaths.com - Life without math is impossible. Learn Math!</title>
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
		
			<form name="ContactForm" id="ContactForm" method="post" action="view-contact.asp" >
				
				<h1>
					Contact Me:
				</h1>	
					
					<p>
						First Name: <br /> <input size="50" type="text" name="FirstName" id="FirstName" />
					</p>
					
					<p>
						Last Name: <br /> <input size="50" type="text" name="LastName" id="LastName" />
					</p>
					
					<p>
						Email: <br /> <input size="50" type="text" name="Email" id="Email" />
					</p>
					
					<p>
						Phone Number(Optional): <br /> <input size="20" type="text" name="PhoneNumber" id="PhoneNumber" />
					</p>
					
					<p>
						Message: <br /> <textArea name="Message" id="Message" rows="5" cols="100" > </textArea>
					</p>
					
					<p>
						<input type="Submit" name="Submit" id="Submit" />
					</p>
					
			</form>
			
			<!--#include file="footer.asp" -->
			
		</div>
		
		<!--#include file="navigation.asp" -->
		
	</body>
	
</html>