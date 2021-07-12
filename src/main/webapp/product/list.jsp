<%--
  Created by IntelliJ IDEA.
  User: ACER PC
  Date: 7/1/2021
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Products List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/product?action=create">Create Product</a>
</p>
<p>
<form method="get">
    <input type="hidden" value="search" name="action">
    <input type="text" name="nameSearch">
    <button>Search</button>
</form>
<td><a href="/product">All List</a></td>
</p>
<table border="1px">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Quantity</td>
        <td>Color</td>
        <td>Description</td>
        <td>Category</td>
    </tr>
    <c:forEach var="i" begin="0" end="${products.size()-1}">
        <tr>
            <th scope="row">${products.get(i).getId()}</th>
            <td>${products.get(i).getName()}</td>
            <td>${products.get(i).getPrice()}</td>
            <td>${products.get(i).getQuantity()}</td>
            <td>${products.get(i).getColor()}</td>
            <td>${products.get(i).getCategory()}</td>
<%--            <td>${categories.get(i).getName()}</td>--%>
            <td>
                <a href="/product?action=edit&id=${products.get(i).getId()}">Edit</a>
                <a href="/product?action=delete&id=${products.get(i).getId()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
