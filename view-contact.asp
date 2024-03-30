<%
FirstName=request("FirstName")
LastName=request("LastName")
Email=request("Email")
PhoneNumber=request("PhoneNumber")
Message=request("Message")
if FirstName=1 Then
response.redirect("contact.asp")
end if
%>

<html>

	<head>
	
		<link rel="stylesheet" href="style.css">
		
		<title>Varunmath.com</title>
		
	</head>
	
	<body>
		
		<!--#include file="header.asp" -->
		
		<div id="Content" >
		
			<form name="ContactForm" id="ContactForm" method="post" action="save-contact.asp">

				<h1>
					Contact Message Confirmation: <%=i%>
				</h1>

				<p>
					First Name: <%=FirstName%> <input type="hidden" name="FirstName" id="FirstName" value="<%=FirstName%>" />

					<br />

					Last Name: <%=LastName%> <input type="hidden" name="LastName" id="LastName" value="<%=LastName%>" />

					<br />

					Email: <%=Email%> <input type="hidden" name="Email" id="Email" value="<%=Email%>" />

					<br />

					Phone Number: <%=PhoneNumber%> <input type="hidden" name="PhoneNumber" id="PhoneNumber" value="<%=PhoneNumber%>" />

					<br />

					Message: <%=Message%> <input type="hidden" name="Message" id="Message"  value="<%=Message%>" />
				</p>

				<input type="Submit" name="Confirm" id="Submit" value="Confirm" />
				
				<p>
					If you would like to cancel, click <a href="index.html">here</a>.
				</p>

			</form>
			
		</div>
		
		<div id="Navigation" >
		
			<a href="default.asp" >Home Page</a>
			
			<br />
			
			<a href="content.asp" >Content</a>
			
			<br />
			
			<a href="contact.asp" >Contact Me</a>
		
		</div>
		
		<div id="Footer" >
		
			<p align="center" >
			Copyright
			</p>
			
		</div>
		
	</body>
	
</html>