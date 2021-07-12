<%--
  Created by IntelliJ IDEA.
  User: ACER PC
  Date: 7/1/2021
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Create new Product</title>
    <style>
        .message{
            color:green;
        }
    </style>

</head>
<body>
<h1>Create new Product</h1>
<p>
    <c:if test="${requestScope['message']!=null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td><input type="text" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>Color</td>
                <td><input type="text" name="color" id="color"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="category" id="catygory"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
