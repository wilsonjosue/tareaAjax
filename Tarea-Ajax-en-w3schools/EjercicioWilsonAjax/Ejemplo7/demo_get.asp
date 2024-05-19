<%
' Obtener los parámetros enviados por la solicitud GET
Dim fname, lname
fname = Request.QueryString("fname")
lname = Request.QueryString("lname")

' Imprimir el saludo con los nombres proporcionados
Response.Write "Hello " & fname & " " & lname
%>
