<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-6e5g2F9HiqheHUHf3LIxXuBb6juzeMVSxTJcAXPyRrQZ8jWMb5PaPDoF3xyWUOV2n5X5hK5CPL1cEAzG0yOO5w==" crossorigin="anonymous" />
    <script src="./assets/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            height: 300px; /* Kích th??c c? ??nh c?a m?i s?n ph?m */
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
        .product__item__pic__hover {
            display: flex;
            padding: 10px;
            margin-top: 100px;
        }

        .product__item__pic__hover a {
            text-decoration: none;
            color: #0DCAF0;
            margin-right: 10px; /* T?ng kho?ng cách gi?a các bi?u t??ng */
        }
    </style>
<body>