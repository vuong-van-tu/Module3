<%--
  Created by IntelliJ IDEA.
  User: ACER PC
  Date: 7/1/2021
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/product">Back to customer list</a>
</p>
<table border="1px">
    <tr>
        <td>ID</td>
        <td>${requestScope["product"].id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${requestScope["product"].name}</td>
    </tr>
    <tr>
        <td>Price</td>
        <td>${requestScope["product"].price}</td>
    </tr>
    <tr>
        <td>Quantity</td>
        <td>${requestScope["product"].quantity}</td>
    </tr>
    <tr>
        <td>Color</td>
        <td>${requestScope["product"].color}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${requestScope["product"].description}</td>
    </tr>
    <tr>
        <td>Category</td>
        <td>${requestScope["product"].category}</td>
    </tr>
</table>
</body>
</html>
