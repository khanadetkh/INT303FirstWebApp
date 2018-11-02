<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:12:28 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style> 
    table {
        text-align: right;
        font-size: 18pt;
    }
</style>
<table class = "table" style="background-color: ${cookie.bgColor.value}"> 
    <tr>
        <td><h1> ${parem.title}</h1> </td>
        <td>
            <c:if test = "${cart!=null}"> 
                <a href="ShowCart">  Your Cart : (${cart.totalQuantity})</a>
            </c:if>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <c:choose>
                <c:when test = "${sessionScope.user!=null}">
                    Hello <a href="Logout"> ${sessionScope.user.contactfirstname},</a>
                </c:when>
                <c:otherwise>
                    <img src="hellooo.png" class="animated flash"> Hello <a href="Login">Guest</a>
                </c:otherwise>
            </c:choose>
        </td>
    </tr>
    <hr>
    SESSION ID : ${cookie.JSESSIONID.value}
    <hr>
</table>
