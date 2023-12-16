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
</head>
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
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
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
    <!-- product -->
<div class="container">
    <c:forEach items="${listCategory}" var="category">
        <section class="category">
            <header>
                <h3>${category.name}</h3>
            </header>

            <div class="row">
                <c:forEach items="${listProduct}" var="product">
                    <c:if test="${category.id == product.id_category}">
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 mb-4">
                            <div class="product__item">
                                <div class="product__item__pic">
                                    <img src="./assets/images/${product.image}" alt="${product.name}" />
                                            <li><a href="#">Mua<i class="fa fa-retweet"></i></a></li>
                                </div>
                                <div class="product__item__text">
                                    <h6>${product.name}</h6>
                                    <h5>${product.price}00 VNĐ</h5>
                                    <div class="product__item__heart"><i class="fa fa-heart"></i></div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </section>
    </c:forEach>
    <!-- product -->
    
    
    <!-- footer -->
    <footer class="footer spad" style="background-color: #F3F6FA; color: black;">
        <div class="container-fluid"style="margin: 0 auto">
            <div class="row justify-content-between" style="">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Địa chỉ: 109 Nguyễn Sinh Cung, Huế</li>
                            <li>Điện thoại: 0363228612</li>
                            <li>Email: tiemanvat19@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>Các Liên kết</h6>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Về Cửa hàng của chúng tôi</a></li>
                            <!-- Thêm nhiều liên kết nếu cần -->
                        </ul>
                        <ul>
                            <li><a href="#">Dịch vụ của chúng tôi</a></li>
                            <!-- Thêm nhiều liên kết nếu cần -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Đăng ký Nhận bản tin của chúng tôi Ngay bây giờ</h6>
                        <p>Nhận cập nhật qua E-mail về cửa hàng mới nhất và các ưu đãi đặc biệt của chúng tôi.</p>
                        <form action="#">
                            <input type="text" placeholder="Nhập địa chỉ email của bạn">
                            <button type="submit" class="site-btn">Đăng ký</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text">
                            <p>
                                <!-- Liên kết quay lại Colorlib không thể bị xóa. Bản mẫu được cấp phép theo CC BY 3.0. -->
                                Bản quyền ©<script>document.write(new Date().getFullYear());</script>
                                Đã đăng ký Bản quyền | Bản mẫu này được tạo ra với <i class="fa fa-heart" aria-hidden="true"></i>
                                bởi <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Liên kết quay lại Colorlib không thể bị xóa. Bản mẫu được cấp phép theo CC BY 3.0. -->
                            </p>
                        </div>
                        <div class="footer__copyright__payment"><img src="./assets/icon/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>   
    <!-- footer -->
    
    
</div>

</body>
</html>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="./inc/header.jsp"/>
<c:import url="./inc/navbar.jsp"/>
<c:import url="./inc/body.jsp"/>
<c:import url="./inc/footer.jsp"/>--%>