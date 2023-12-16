<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light bg-info sticky-top">
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
                <a class="nav-link" href="/FoodShop/home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Danh M?c
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
                <a class="nav-link" href="#">??ng nh?p</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">??ng ký</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="./assets/icon/cart.png" width="25" height="25" alt="Gi? hàng"/>
                    <i>Gi? hàng</i>
                </a>
            </li>
        </ul>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Tìm món" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Tìm</button>
        </form>
    </div>
</nav>