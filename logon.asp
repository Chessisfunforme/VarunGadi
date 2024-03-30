<%
Email=request("Email")
Password=request("Password")

If Email="trickster" and Password="nice try, wrong file" Then
	session("Login")="Verified"
	response.redirect("admin.asp?M=Login Is Successful!")
Else
	response.redirect("login.asp?M=Login Is Incorrect. Please Try Again.")
End If
%>
