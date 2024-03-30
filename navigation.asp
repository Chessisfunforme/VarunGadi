<%
strSQL = "SELECT * FROM content WHERE Published='Yes' ORDER BY OrderID ASC"
set rsContentDisplay = server.Createobject("ADODB.Recordset")
rsContentDisplay.open strSQL,CON,3,3
%>

<div id="Navigation" >
		
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
				if session("Login") = "Verified" then
			%>

				<h4>
					Unpublished Posts
				</h4>

				<%
					strSQLUnpublished= "SELECT * FROM content WHERE Published='No' ORDER BY OrderID ASC"
					set rsContentDisplayUnpublished = server.Createobject("ADODB.Recordset")
					rsContentDisplayUnpublished.open strSQLUnpublished,CON,3,3
					while not rsContentDisplayUnpublished.eof and not rsContentDisplayUnpublished.bof
				%>
				
				-<a href="content.asp?URL=<%=rsContentDisplayUnpublished("URLSlug")%>" ><%=rsContentDisplayUnpublished("Title")%></a>
				
				<br />
				
			<%
					rsContentDisplayUnpublished.Movenext
					wend
				end If
			%>			
	
		</div>

