<%--
  Created by IntelliJ IDEA.
  User: ACER PC
  Date: 7/1/2021
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>
<head>
    <title>Deleting product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Delete Product</h1>
<p>
    <a href="/product">Back to list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>ID:</td>
                <td>${requestScope["product"].id}</td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>${requestScope["product"].name}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${requestScope["product"].price}</td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td>${requestScope["product"].quantity}</td>
            </tr>
            <tr>
                <td>Color:</td>
                <td>${requestScope["product"].color}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${requestScope["product"].description}</td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>${requestScope["product"].category}</td>
            </tr>

        </table>
        <button type="submit" class="btn btn-primary" style="font-family: 'Times New Roman';width: 100px;">Yes</button>

        <a href="/product" class="btn btn-secondary"
           style="font-family: 'Times New Roman';width: 100px;">No</a>

    </fieldset>
</form>
</body>
</html>
