<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
    String url = "jdbc:mariadb://localhost:3306/films";
    String user = "mysql";
    String password = "mysql";

        // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("année");
            // Faites ce que vous voulez avec les données...
            //Exemple d'affichage de 2 colonnes
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
        }

        // Fermer les ressources 
        rs.close();
        pstmt.close();
        conn.close();
    %>

<h2>Exercice 1 : Les films entre 2000 et 2015</h2>
<p>Extraire les films dont l'année est supérieur à l'année 2000 et inférieur à 2015.</p>
<%
    // Établir la connexion
    Connection conn1 = DriverManager.getConnection(url, user, password);
    // Exemple de requête SQL
    String sql1 = "SELECT idFilm, titre, année FROM Film WHERE année > 2000 AND année < 2015";
    PreparedStatement pstmt1 = conn1.prepareStatement(sql1);
    ResultSet rs1 = pstmt.executeQuery();

    // Afficher les résultats (à adapter selon vos besoins)
    while (rs1.next()) {
        String colonne1 = rs1.getString("idFilm");
        String colonne2 = rs1.getString("titre");
        String colonne3 = rs1.getString("année");
        // Faites ce que vous voulez avec les données...
        //Exemple d'affichage de 2 colonnes
        out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
    }

    // Fermer les ressources 
    rs1.close();
    pstmt1.close();
    conn1.close();
%>

<h2>Exercice 2 : Année de recherche</h2>
<p>Créer un champ de saisie permettant à l'utilisateur de choisir l'année de sa recherche.</p>
<form action="#" method="post">
    <p>Année du film : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Chercher">
</form>
<% 
    String chaine = request.getParameter("chaine");
    if (chaine != null) { 
        // Établir la connexion
        Connection conn2 = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql2 = "SELECT idFilm, titre, année FROM Film WHERE année = " + chaine;
        PreparedStatement pstmt2 = conn2.prepareStatement(sql2);
        ResultSet rs2 = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs2.next()) {
            String colonne1 = rs2.getString("idFilm");
            String colonne2 = rs2.getString("titre");
            String colonne3 = rs2.getString("année");
            // Faites ce que vous voulez avec les données...
            //Exemple d'affichage de 2 colonnes
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
        }

        // Fermer les ressources 
        rs2.close();
        pstmt2.close();
        conn2.close();
    }
%>
    
<h2>Exercice 3 : Modification du titre du film</h2>
<p>Créer un fichier permettant de modifier le titre d'un film sur la base de son ID (ID choisi par l'utilisateur)</p>
<form action="#" method="post">
    <p>ID : <input type="text" id="inputValeur" name="id">
    <p>Titre : <input type="text" id="inputValeur" name="titre">
    <p><input type="submit" value="Modifier le film">
</form>
<% 
    String id = request.getParameter("id");
    String titre = request.getParameter("titre");

    if (id != null && titre != null) { 
        // Établir la connexion
        Connection conn3 = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql3 = "UPDATE Film SET titre = " + titre + " WHERE  idFilm = " + id + ")"; 
        PreparedStatement pstmt3 = conn3.prepareStatement(sql3);
        ResultSet rs3 = pstmt.executeQuery();
        // Fermer les ressources 

    }
%>


<h2>Exercice 4 : Ajout d'un film dans la BDD</h2>
<p>Créer un formulaire pour saisir un nouveau film dans la base de données</p>
<p>Ajout d'un film dans la BDD</p>
<form action="#" method="post">
    <p>ID : <input type="text" id="inputValeur" name="id">
    <p>Titre : <input type="text" id="inputValeur" name="titre">
    <p>Année : <input type="text" id="inputValeur" name="annee">
    <p><input type="submit" value="Ajouter le film">
</form>
<% 
    String id4 = request.getParameter("id");
    String titre4 = request.getParameter("titre");
    String annee = request.getParameter("annee");

    if (id != null && titre != null && annee != null) { 
        // Établir la connexion
        Connection conn4 = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql4 = "INSERT INTO Film(idFilm, titre, année) VALUES(" + id4 + ", " + titre4 + ", " + annee + ")"; 
        PreparedStatement pstmt4 = conn4.prepareStatement(sql4);
        ResultSet rs4 = pstmt4.executeQuery();
        // Fermer les ressources 
        rs4.close();
        pstmt4.close();
        conn4.close();
    }
%>

</body>
</html>
