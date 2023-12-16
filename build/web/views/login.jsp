<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-6e5g2F9HiqheHUHf3LIxXuBb6juzeMVSxTJcAXPyRrQZ8jWMb5PaPDoF3xyWUOV2n5X5hK5CPL1cEAzG0yOO5w==" crossorigin="anonymous" />
    <script src="./assets/js/bootstrap.bundle.min.js"></script>

    <style>
        .container {
            margin-top: 50px;
        }

        .category {
            margin-bottom: 30px;
        }

        .product__item {
            overflow: hidden;
            border: 2px solid LightSkyBlue;
            border-radius: 5px;
            margin-bottom: 10px;
            display: flex;
            flex-direction: column;
            height: 300px; /* Kích thước cố định của mỗi sản phẩm */
        }

        .product__item__pic {
            position: relative;
            flex: 1;
        }

        .product__item__pic img {
            width: 100%;
            height: auto;
            display: block;
            z-index: 2;
            border: 2px solid white;
            border-radius: 5px;
            object-fit: cover;
        }

        .product__item__pic__hover {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .product__item:hover .product__item__pic__hover {
            opacity: 1;
        }

        .product__item__text {
            padding: 10px;
            text-align: center;
        }
    </style>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <a class="navbar-brand" href="#">
        <img src="./assets/icon/logo.png" width="100" height="100" alt="Logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto" style="margin: 0 auto">
            <li class="nav-item active">
                <a class="nav-link" href="/FoodShop/home">Home <span class="sr-only"></span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Danh Mục
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <c:forEach items="${listCategory}" var="category">
                        <a class="dropdown-item" href="/FoodShop/category?categoryId=${category.id}">
                            ${category.name}
                        </a><br>
                    </c:forEach>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login">Đăng nhập</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Đăng ký</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="./assets/icon/cart.png" width="25" height="25" alt="Giỏ hàng"/>
                    <i>Giỏ hàng</i>
                </a>
            </li>
        </ul>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Tìm món" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Tìm</button>
        </form>
    </div>
</nav>
</body>
<c:import url="./inc/_login.jsp"/>