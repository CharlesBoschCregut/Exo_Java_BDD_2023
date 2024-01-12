<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
<% } %>   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeura">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeurb">
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="valeurc">
    <p><input type="submit" value="Afficher">
</form>
<% String valeura = request.getParameter("valeura"); %>
<% String valeurb = request.getParameter("valeurb"); %>
<% String valeurc = request.getParameter("valeurc"); %>

<%-- Vérification de la condition entre les deux valeurs --%>
<% if (valeura != null && valeurb != null && valuerc != null) { %>
    <% int A = Integer.parseInt(valeura); %>
    <% int B = Integer.parseInt(valeurb); %>
    <% int C = Integer.parseInt(valeurc); %>
<%
    boolean res = false;

    if(C > A){
       if(C < B){
          res = true;
       }
    }

    if(C > B){
       if(C < A){
          res = true;
       }
    }

    if(res){
       out.print("Oui, la valeur C est entre la valeur A et la valeur B");
    } else {
       out.print("Non, la valeur C n'est pas entre la valeur A et la valeur B");
    }
%>
<% } %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>
<form action="#" method="post">
    <p>Saisir la valeur : <input type="text" id="inputValeur" name="valeurp">
    <p><input type="submit" value="Afficher">
</form>
<% String valeurp = request.getParameter("valeurp"); %>
<% if (valeurp) { %>
    <% int P = Integer.parseInt(valeurp); %>
<%
    if(P%2 != 0){
      out.print("IMPAIR");
    } else {
      out.print("PAIR");
    }
%>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
