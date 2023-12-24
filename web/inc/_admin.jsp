<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        button {
            margin: 10px;
        }

        form {
            margin: 10px;
        }
    </style>
</head>
<body>

<h2>Admin Page</h2>

<%-- Nút thêm sản phẩm và mẫu form thêm sản phẩm --%>
<button onclick="location.href='admin?action=addProductForm'">Thêm Sản Phẩm</button>

<%-- Danh sách sản phẩm và nút sửa, xóa --%>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Đường dẫn ảnh</th>
        <th>Giá</th>
        <th>ID Category</th>
        <th>Thao tác</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${listProduct}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.image}</td>
            <td>${product.price}</td>
            <td>${product.id_category}</td>
            <td>
                <a href="admin?action=editProduct&id=${product.id}">Sửa</a>
                <a href="admin?action=deleteProduct&id=${product.id}" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này không?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
