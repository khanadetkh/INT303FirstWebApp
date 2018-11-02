<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:52:40 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src = "https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src = "https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src = "https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>

        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
        <link rel="stylesheet" href= https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css>

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
                font-size: 14pt;
                color: #223322;
                background-color: palevioletred;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 8px 16px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                transition-duration: 1s;
                cursor: pointer;
                border-radius: 5px;
            }

            .button:hover {
                background-color: #FF3333;
                color: whitesmoke;
            }

        </style>

    </head>
    <body>
        <div class = "container">
            <jsp:include page="include/Header.jsp?title=Select Your Background::"/>
            <form action="ChooseBackground" method="post">

                <input type="radio" name="bgColor" value="black" ${cookie.bgColor.value=='black'?'checked' :''}/> Dark 
                <input type="text" size="3" disabled style ="background-color: black"/><br>
                <input type="radio" name="bgColor" value="navy" ${cookie.bgColor.value=='navy'?'checked' :''}/> Navy Blue
                <input type="text" size="3" disabled style ="background-color: navy"/><br>
                <input type="radio" name="bgColor" value="silver" ${cookie.bgColor.value=='silver'?'checked' :''}/> Silver 
                <input type="text" size="3" disabled style ="background-color: silver"/><br>
                <input type="submit"/>

            </form>
        </div>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>
