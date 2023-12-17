<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="son.utils.API" %>
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
                <a class="nav-link" href="/FoodShop/home">Home <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#"role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Danh Muc
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <c:forEach items="${listCategory}" var="category">
                        <a class="dropdown-item" href="/FoodShop/category?categoryId=${category.id}">
                            ${category.name}
                        </a><br>
                    </c:forEach>
                </div>
            </li>
            <c:if test="${user==null}">
            <li class="nav-item">
                <a class="nav-link" href="login">Dang Nhap</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register">Dang Ky</a>
            </li>
            </c:if>
            <c:if test="${user!=null}">
                <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                         Xin Chao <c:set var="s" value="${user.getName()}"></c:set>
                        <% String name = (String)pageContext.getAttribute("s");
                                        out.print(API.getName(name));
                                    %>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><a class="dropdown-item" href="./views/logout.jsp">Logout</a></li>
                    </ul>
                </li>
            </c:if>
            <li class="nav-item">
                <a class="nav-link" href="
                   <c:if test="${user==null}">
                        login
                    </c:if>
                    <c:if test="${user!=null}">
                        home?id_product=${product.id}
                    </c:if>
                   ">
                    <img src="./assets/icon/cart.png" width="25" height="25" alt="Gi? hàng"/>
                    <i>${cart.size()}</i>
                </a>
            </li>
        </ul>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Tìm món" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Tìm</button>
        </form>
    </div>
</nav>