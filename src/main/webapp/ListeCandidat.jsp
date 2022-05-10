<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="Formulaire.jsp">cliquer ici pour inserer des etudiants </a> <br>

<table border="2">
		<tr>
			<td>Nom</td>
			<td>Prenom</td>
			<td>Niveau</td>
			<td>Filiere</td>
			<td>Nationalite</td>
		</tr>



<%
	try {
		String strClassName="com.mysql.jdbc.Driver";
		Class.forName(strClassName);
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/bd_candidat?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		Statement state = connect.createStatement();
		String res = "select * from bd_candidat.candidat";
		ResultSet rs1 = state.executeQuery(res);
		
		while(rs1.next()){
			%>
			<tr>
				<td> <%= rs1.getString("nom") %></td>
				<td> <%= rs1.getString("Prenom") %></td>
				<td> <%= rs1.getString("niveau") %></td>
				<td> <%= rs1.getString("filiere") %></td>
				<td> <%= rs1.getString("nationalite") %></td>
				
				
			</tr>
			
			  
			<% 
		}
		rs1.close();
		connect.close();
		state.close();
	}

	catch (Exception e) {
		
	out.print(e.getMessage());	
	
	}
%>

</table>
</body>
</html>