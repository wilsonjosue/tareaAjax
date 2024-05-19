<%
' Obtener los parámetros enviados por la solicitud POST
Dim fname, lname
fname = Request.Form("fname")
lname = Request.Form("lname")

' Comprobar si los parámetros no están vacíos
If fname <> "" And lname <> "" Then
    ' Imprimir un mensaje personalizado utilizando los nombres recibidos
    Response.Write "Hello " & fname & " " & lname
Else
    ' Si algún parámetro está vacío, imprimir un mensaje de error
    Response.Write "Error: Missing parameters."
End If
%>
