<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER PC
  Date: 7/1/2021
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<hl>Edit Product</hl>
<p>
    <c:if test="${requestScope['message']!=null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to Product</a>
</p>
<form method="post">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" id="name" value="${requestScope['product'].name}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price" id="price" value="${requestScope['product'].price}"></td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td><input type="text" name="quantity" id="quantity" value="${requestScope['product'].quantity}"></td>
        </tr>
        <tr>
            <td>Color</td>
            <td><input type="text" name="color" id="color" value="${requestScope['product'].color}"></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description" id="description" value="${requestScope['product'].description}"></td>
        </tr>
        <tr>
            <td>Category</td>
            <td><input type="text" name="category" id="category" value="${requestScope['product'].category}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update Product"></td>
        </tr>
    </table>
</form>
</body>
</html>
