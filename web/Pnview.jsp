<%-- 
    Document   : Pnview
    Created on : Aug 8, 2018, 9:51:04 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">

        <title>JSP Page</title>
        <style> 
            body {
                margin: 50px;
                background-color: AntiqueWhite;
                font-family: 'Kanit', sans-serif;
            }
            h1 {
                text-align: center;
                color: #191970;
            }
            form {
                font-size: 20pt;
                color: #223322;
            }

        </style>
    </head>
    <body>
        <h1><img src="cubes.png" class="animated flash"> Prime Number App. :: ${pn}</h1> <hr>
        <form action="PrimeNumber" method="post">
            Pls enter number : 
            <input type="number" name="number" required min="2"/>
            <input type = "submit" value = "OK!!"/>
        </form>
        <hr>

        <h3>${pn.number} is ${pn.primeNumber ?"":"not"} Prime Number</h3>
    </body>
</html>
