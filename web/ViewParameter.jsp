<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:19 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <title>Favorite Subject</title>
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
        <h1><img src="languages.png" class="animated flash"> Favorite Subject ::</h1> <hr>
        <form action="TestRequestParam" medthod = "post"> 
        Your Student ID : 
        <input type="text" name = "id"/><br>
        Your Name : 
        <input type="text" name = "name"/><br>
        Favorite Subject : <br>
        <input name="subject" type = "checkbox" value="Web Programing"/> Web Programming <br>
        <input name="subject" type = "checkbox" value="Computer Network"/> Computer Network <br>
        <input name="subject" type = "checkbox" value="Network"/> Network <br>
        <input name="subject" type = "checkbox" value="Database"/> Database <br>
        <input name="subject" type = "checkbox" value="Computer Security"/> Computer Security <br>
        <input name="subject" type = "checkbox" value="Software Process"/> Software Process <br>
        <input type="submit" value="Send"/>
        </form>
        <hr>
        <table>
            <tr>
                <td> Student ID: </td>
                <td> ${param.id} </td>
            </tr>
            <tr>
                <td> Student Name: </td>
                <td> ${param.name} </td>
            </tr>
            <tr>
                <td> Your Favorite Subject: </td>
                <td> 
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>
                    </c:forEach>
                </td>
            </tr>
        </table>
    </body>
</html>
