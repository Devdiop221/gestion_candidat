<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription Candidat</title>
</head>
<body>
<form method="post" action="Reception.jsp">
		<table>
			<tr>
				<td>Nom:</td>
				<td><input type="text" name="nom"  required/></td>
			</tr>
			<tr>
				<td>Prenom</td>
				<td><input type="text" name="prenom"  required/></td>
			</tr>
			<tr>
				<td>Niveau</td>
				<td><input type="text" name="niveau" required/></td>
			</tr>
			<tr>
				<td>Filiere:</td>
				<td><input type="text" name="filiere"  required/></td>
			</tr>
			<tr>
				<td>Nationalite:</td>
				<td><input type="text" name="nationalite"  required/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Valider"/></td>
		
				<td><input type="reset" value="Annuler"/></td>
			</tr>
		</table>
	</form>

</body>
</html>