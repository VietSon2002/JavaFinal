<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                    <h5>${product.price}00 VN?</h5>
                                    <div class="product__item__heart"><i class="fa fa-heart"></i></div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </section>
    </c:forEach>