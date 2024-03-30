<%
strConnection = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};" & _
"Dbq=" & Server.MapPath("data/DB.accdb") & ";Uid=admin;Pwd=;"

Set CON= Server.CreateObject("ADODB.Connection")
CON.Open strConnection
%>