<%
If session("Login") <> "" Then
	response.redirect("admin.asp")
End If
%>

<html>

	<head>
	
		<title>
			Login Page.
		</title>
			
	</head>
	
	<body>
		<form name="Login" id="Login" method="post" action="logon.asp" >

				<%
				If request("M") <> "" Then
					response.write(request("M"))
				End If
				%>
				
				<p>
					Email: <br /> <input size="50" type="password" name="Email" id="Email" />
				</p>
				
				<p>
					Password: <br /> <input size="50" type="password" name="Password" id="Password" />
				</p>
				
				<p>
					<input type="Submit" name="Submit" id="Submit" />
				</p>
				
		</form>
	</body>
	
</html>