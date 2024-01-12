<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <% int x = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= x; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = 0; i < x; i++){
       for(int j = 0; j < x; j++){
          out.print("*");
       }
       %></br><%
    }
%>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = 0; i < x; i++){
       for(int j = 0; j < i + 1 ; j++){
          out.print("*");
       }
       %></br><%
    }
%>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = x; i > 0; i--){
        for(int j = 0; j < i; j++){
            out.print("*");
        }
        %></br><%
    }
%>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = x; i > 0; i--){
       for(int j = 1; j < i; j++){
          %>&nbsp;&nbsp;<%
       }
       for (int k = i; k<=x; k++){
          out.print("*");
       }
       %></br><%
    }
%>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = 1; i <= x; i++){
        for(int j = x-i; j > 0; j--){
           %>&nbsp;<%
        }
        for (int k = 1; k<=i; k++){
           out.print("*");
           %>&nbsp;<%
        }
        %></br><%
    }
%>    

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = x; i > 0; i--){
           for(int j = 1; j < i; j++){
              %>&nbsp;&nbsp;<%
           }
           for (int k = i; k<=x; k++){
              out.print("*");
           }
           %></br><%
        }

        %></br><%


        for(int a = 0; a < x; a++){
           for (int z = 1; z < a + 1; z++){
              %>&nbsp;&nbsp;<%
           }
           for(int b = x; b > a; b--){
              out.print("*");
           }
           %></br><%
        }
%>
<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p> La valeur est <% out.print(x); %> </p>
<%
    for(int i = 1; i <= x; i++){
       out.print(x + "*" + i + " =" ); 
       out.print(x*i); 

       %></br><%
    }
%>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
