<!--#include file="datacom.asp"-->

<%
strSQL= "SELECT * FROM content WHERE ID="&request("ID")&""         
set rsContentSave = server.Createobject("ADODB.Recordset")
rsContentSave.open strSQL,CON,3,3

OrderID=request("OrderID")
Title=request("Title")
URLSlug=request("URLSlug")
Body=request("Body")
Tags=request("Tags")
User=request("User")
Category=request("Category")
Published=request("Published")
MetaDescription=request("MetaDescription")

rsContentSave("OrderID")=OrderID
rsContentSave("Title")=Title
rsContentSave("URLSlug")=URLSlug
rsContentSave("Body")=Body
rsContentSave("Tags")=Tags
rsContentSave("User")=User
rsContentSave("Category")=Category
rsContentSave("Published")=Published
rsContentSave("MetaDescription")=MetaDescription
rsContentSave("DateEntered")=Now
rsContentSave.Update

response.redirect("admin-content-edit.asp?ID="&request("ID")&"&M=Changes have been saved sucessfully.")
%>