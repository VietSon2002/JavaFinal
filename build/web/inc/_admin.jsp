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

        /* Hiển thị form mặc định khi trang được tải */
        #addProductForm {
            display: block;
        }
    </style>
</head>
<body>

<h2>Admin Page</h2>

<%-- Mẫu form thêm sản phẩm --%>
<div id="addProductForm">
    <h3>Thêm Sản Phẩm</h3>
    <form action="admin" value="add" method="post">
        <label for="name">Tên sản phẩm:</label>
        <input type="text" name="name" required><br>

        <label for="image">Đường dẫn ảnh:</label>
        <input type="text" name="image" required><br>

        <label for="price">Giá:</label>
        <input type="text" name="price" required><br>

        <label for="id_category">ID Category:</label>
        <input type="text" name="id_category" required><br>

        <button type="submit">Thêm Sản Phẩm</button>
    </form>
</div>

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
                <a href="admin?action=delete&id=${product.id}" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này không?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
