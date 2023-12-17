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
                                    <div class="product__item__pic__hover">
                                        <a href="
                                           <c:if test="${user==null}">
                                               login
                                           </c:if>
                                            <c:if test="${user!=null}">
                                               home?id_product=${product.id} & id_category=${category.id}
                                           </c:if>
                                           "><i class="fa fa-shopping-cart"></i></a>
                                        <a href="#"><i class="fa fa-retweet"></i></a>
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product__item__text">
                                    <h6>${product.name}</h6>
                                    <h5>${product.price}00 VND</h5>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </section>
    </c:forEach>