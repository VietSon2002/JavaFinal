<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.title{
    margin-bottom: 5vh;
}
.card{
    margin: auto;
    max-width: 950px;
    width: 90%;
    box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 1rem;
    border: transparent;
}
@media(max-width:767px){
    .card{
        margin: 3vh auto;
    }
}
.cart{
    background-color: #fff;
    padding: 4vh 5vh;
    border-bottom-left-radius: 1rem;
    border-top-left-radius: 1rem;
}
@media(max-width:767px){
    .cart{
        padding: 4vh;
        border-bottom-left-radius: unset;
        border-top-right-radius: 1rem;
    }
}
.summary{
    background-color: #ddd;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;
    padding: 4vh;
    color: rgb(65, 65, 65);
}
@media(max-width:767px){
    .summary{
    border-top-right-radius: unset;
    border-bottom-left-radius: 1rem;
    }
}
.summary .col-2{
    padding: 0;
}
.summary .col-10
{
    padding: 0;
}.row{
    margin: 0;
}
.title b{
    font-size: 1.5rem;
}
.main{
    margin: 0;
    padding: 2vh 0;
    width: 100%;
}
.col-2, .col{
    padding: 0 1vh;
}
a{
    padding: 0 1vh;
}
.close{
    margin-left: auto;
    font-size: 0.7rem;
}
img{
    width: 3.5rem;
}
.back-to-shop{
    margin-top: 4.5rem;
}
h5{
    margin-top: 4vh;
}
hr{
    margin-top: 1.25rem;
}
form{
    padding: 2vh 0;
}
select{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1.5vh 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input:focus::-webkit-input-placeholder
{
      color:transparent;
}
.btn{
    background-color: #000;
    border-color: #000;
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin-top: 4vh;
    padding: 1vh;
    border-radius: 0;
}
.btn:focus{
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none; 
}
.btn:hover{
    color: white;
}
a{
    color: black; 
}
a:hover{
    color: black;
    text-decoration: none;
}
 #code{
    background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253) , rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
    background-repeat: no-repeat;
    background-position-x: 95%;
    background-position-y: center;
}
</style>
<div class="card">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            <div class="col align-self-center text-muted" style="padding-left: 118px;">${cart.size()} items</div>
                            <a href="cart?clean=OK" class="col align-self-center text-right text-muted">Empty cart</a>
                        </div>
                    </div>
                    <c:set var ="total" value="0"></c:set>      
                    <c:forEach items="${cart}" var="product">
                            <div class="row border-top border-bottom" style="width: 560px; margin-bottom: 10px;">
                                <form action="cart" method="post" class="w-100">
                                    <input type="hidden" name="id_product" value="${product.id}">
                                    <div class="card-body p-2">
                                        <div class="row main align-items-center">
                                            <div class="col-3 col-md-2">
                                                <img src="./assets/images/${product.image}" class="img-fluid rounded-3" alt="Shopping item">
                                            </div>
                                            <div class="col-auto col-md-3">
                                                <div class="row mb-1">${product.name}</div>
                                                <div class="row">
                                                    <input type="text" name="quantity" value="${product.quantity}" style="width: 38px; text-align: right;">
                                                    <button type="submit" class="text-left fa" name="action" value="update" style="color: black; background-color: white; font-size: 14px; border: none; padding: 0;">&#xf021;</button>
                                                </div>
                                            </div>
                                            <div class="col-auto col-md-3 mt-1 mt-md-0">
                                                ${product.price}00 VND
                                            </div>
                                            <div class="col-auto col-md-2 mt-1 mt-md-0">
                                                <span class="close">
                                                    <button type="submit" class="btn btn-link" name="action" value="delete" style="color: black; background-color: white; font-size: 14px; border: none; padding: 0;">&#10005;</button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                    <c:set var ="total" value="${total+ product.quantity*product.price}"></c:set> 
                    </c:forEach>
                    <div class="back-to-shop"><a href="home">&leftarrow;</a><span class="text-muted">Continue Shopping</span></div>
                </div>
                <div class="col-md-4 ssummary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">ITEMS ${cart.size()}</div>
                        <div class="col text-right">${total}00 VND</div>
                    </div>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Standard-Delivery - 5.000 VND</option></select>
                        <p>GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">${total+5}00 VND</div>
                    </div>
                    <button class="btn">CHECKOUT</button>
                </div>
            </div>
            
        </div>