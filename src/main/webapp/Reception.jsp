<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Candidat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="ListeCandidat.jsp"> La Liste des Candidats</a> <br>

<%
Candidat candidat =  new Candidat();
candidat.setNom(request.getParameter("nom"));
candidat.setPrenom(request.getParameter("prenom"));
candidat.setNiveau(request.getParameter("niveau"));
candidat.setFiliere(request.getParameter("filiere"));
candidat.setNationalite(request.getParameter("nationalite"));

%>

Le nom du Candidat est : <%= candidat.getNom() %> <br>
Le prenom du Candidat est : <%= candidat.getPrenom() %> <br>
Le niveau du Candidat est : <%= candidat.getNiveau() %> <br>
Le filiere du Candidat est <%= candidat.getFiliere() %> <br>
La nationalite du Candidat est : <%= candidat.getNationalite() %>


<%
	try {
		String strClassName="com.mysql.jdbc.Driver";
		Class.forName(strClassName);
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/bd_candidat?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		Statement state = connect.createStatement();
		String res = "INSERT INTO bd_candidat.candidat(nom,Prenom,niveau,filiere,nationalite)VALUES('"+candidat.getNom()+"','"+candidat.getPrenom()+"','"+candidat.getNiveau()+"', '"+candidat.getFiliere()+"','"+candidat.getNationalite()+"')";
		state.executeUpdate(res);
	}

	catch (Exception e) {
		
		e.getMessage();
		
	}
%>

 

</body>
</html>