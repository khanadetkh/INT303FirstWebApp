<%-- 
    Document   : Showcart
    Created on : Aug 8, 2018, 3:22:21 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
        <link rel="stylesheet" href= https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css>

        <title>Product List</title>
        <script src = "https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src = "https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src = "https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>

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
            <jsp:include page="include/Header.jsp?title=Your Shopping Cart ::"/>
            <h1><img src="shopping-bag.png" class="animated flash"> Product List::</h1> <hr>
            <table class="table">
                <thead>
                <th>No</th>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>total Price</th>
                </thead>
                <c:forEach items="${cart.lineItem}" var="p" varStatus="vs">
                    <td >${vs.count} </td>
                    <td>${p.product.productCode} </td>
                    <td>${p.product.productName} </td>
                    <td>${p.quantity} </td>
                    <td>${p.salePrice} </td>
                    <td><fmt:formatNumber value="${p.totalPrice}" pattern="#,###.00"/></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="4"></td>
                    <td>${cart.totalQuantity} </td>
                    <td><fmt:formatNumber value="${cart.totalPrice}" pattern="#,###.00"/></td>
                </tr>    
            </table>
        </div>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>
