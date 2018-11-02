<%-- 
    Document   : MultipleTable
    Created on : Aug 10, 2018, 2:07:48 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>mu</h1>
        <table>
            <tr>
                <td colspan="5">Table of ${param.n}</td>
                <c:forEach begin="2" end="12" var="x">
                </tr>
                <td>${param.n}</td>
                <td>x</td>
                <td>${x}</td>
                <td>=</td>
                <td>${param.n*x}</td>

            </c:forEach>
        </table>
    </body>
</html>
