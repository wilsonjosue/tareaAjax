<%
' Obtener la hora actual
Dim currentTime
currentTime = Now()

' Formatear la hora actual en el formato deseado
Dim formattedTime
formattedTime = FormatDateTime(currentTime, 2) ' Utiliza el formato 2 para mostrar solo la hora

' Imprimir el mensaje requerido con la hora actual
Response.Write "This content was requested using the GET method.<br>"
Response.Write "Requested at: " & formattedTime
%>
