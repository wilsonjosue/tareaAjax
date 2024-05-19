<%
Dim nombres(5)
nombres(0)="Ana"
nombres(1)="Amanda"
nombres(2)="Brittany"
nombres(3)="Cinderella"
nombres(4)="Cindy"
Dim consulta
consulta=UCase(Request.QueryString("q"))
Dim sugerencias
sugerencias = ""
For i=0 To UBound(nombres)
	If InStr(UCase(nombres(i)),consulta)>0 Then
		If sugerencias= "" Then
			sugerencias=nombres(i)
		Else
			sugerencias=sugerencias & ", " & nombres(i)
		End If
	End If
Next
	
	If sugerencias = "" Then
		Response.Write "No hay sugerencias"
	Else
		Response.Write sugerencias
	End If
%>
