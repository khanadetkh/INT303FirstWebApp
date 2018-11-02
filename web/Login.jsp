<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:53:01 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
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
            thead {
                text-align: center;
            }
            table {
                text-align: right
            }

        </style>
        <title>Login Page</title>
    </head>
    <body>        
        <div class = "container">
            <jsp:include page="include/Header.jsp?title=Product List::"/>
            <h1>Login Pls! ::</h1>
            <table class="table"> 
                <form action="Login" method="post">
                    <tr>
                        <td> Username ::</td>
                        <td> <input type="number" name="userName" required/> </td>
                    </tr>
                    <tr>
                        <td> Password :: </td>             
                        <td> <input type="password" name="password" required/> </td> 
                    </tr>
                    <tr>
                        <td> <input type = "submit" value = "Login"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <p style="color: red"> ${message} </p> </td>
                    </tr>
                </form>
            </table>
        </div>
    </body>
</html>
