<%@ page import="lk.ijse.ecommerce.dto.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ayesha Ushani
  Date: 1/20/2025
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .hero {
            background: url('https://via.placeholder.com/1920x600') no-repeat center center/cover; /* Replace with your image */
            height: 20vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            padding: 0 20px;
            box-shadow: inset 0 0 100px rgba(0, 0, 0, 0.6); /* Adds a dark overlay effect */
            position: relative;
        }

        /* Overlay for better text visibility */
        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background:url("images/sweet-hamper-banner.jpg"); /* Adds a semi-transparent overlay */
            z-index: 1;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
            margin: 0;
            color: #121111;
            z-index: 2;
            position: relative;
        }

        .hero p {
            font-size: 1.25rem;
            font-weight: 300;
            margin-top: 10px;
            color: black;
            z-index: 2;
            position: relative;
        }
        .hero-carousel img {
            height: 400px;
            object-fit: cover;
        }
        .category-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .category-card img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            object-fit: cover;
            height: 150px;
        }
        .footer {
            background-color: #dd63a1;
            padding: 20px 0;
        }
        .carousel-item{
            background: url("images/sweet-hamper-banner.jpg");
        }
        .d-block{
            height: 100%;
            width: 100%;
        }
        .footer .fa {
            margin-right: 10px;
        }
        .container{
            background: #f470b3;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar bg-info">
    <div class="container">
        <a class="navbar-brand" href="#"><b>Joy-Parcel</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="new-product-list">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signin.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="update-product.jsp">Cart <span class="badge bg-primary"></span></a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="admin.jsp"><i class="fa-solid fa-gear" style="color: #121212; font-size: 1.5rem;"></i>
                </a>
            </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->

<!-- Hero Carousel -->
<div class="hero">
    <h1>Welcome to JOY-PARCEL</h1>
    <p>"Unwrap happiness with Joy-Parcel – Your one-stop online gift shop for personalized surprises and amazing deals!</p>
</div>
<div id="heroCarousel" class="carousel slide hero-carousel" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/gift.gif" class="d-block" alt="Slide 1">
            <div class="carousel-caption d-md-block">
                <div class="search-container">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products...">
                        <button class="btn btn-warning">Search</button>
                    </div>
                    <h1 style="color: white">Hamper world</h1>
                    <p>For the moments that matter, give the gift of a thoughtfully curated hamper.</p>
                </div>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/animate.gif" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption d-md-block">
                <div class="search-container">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products...">
                        <button class="btn btn-warning">Search</button>
                    </div>
                    <h1 style="color: black">Sweet moments are made of chocolate – share the love</h1>
                    <p>Choco Collection</p>
                </div>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/tenor.gif" class="d-block " alt="Slide 3">
            <div class="carousel-caption d-md-block">
                <div class="search-container">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products...">
                        <button class="btn btn-warning">Search</button>
                    </div>
                    <h1 style="color: white">Luxury Deal</h1>
                    <p>A gift of elegance, a touch of luxury – unwrap perfection.</p>
                </div>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
    </button>
</div>
<%--<!-- Categories Section -->--%>
<div class="container mt-5">
    <h1 class="text-center mb-4">Make your Choice</h1>

    <%
        // Fetch the product list passed from the servlet
        List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList");
        if (productList != null && !productList.isEmpty()) {
    %>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <%
            for (ProductDTO product : productList) {
        %>
        <div class="col">
            <div class="card h-100">
                <!-- Product Image -->
                <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>" style="height: 200px; object-fit: cover;">

                <div class="card-body">
                    <!-- Product Name -->
                    <h5 class="card-title"><%= product.getProductName() %></h5>

                    <!-- Product Description -->
                    <p class="card-text text-muted"><%= product.getProductDescription() %></p>

                    <!-- Product Price -->
                    <p class="fw-bold">Price: $<%= product.getProductPrice() %></p>

                    <!-- Product Quantity -->
                    <p>Available: <%= product.getProductQuantity() %> units</p>

                    <!-- Action Button -->
                    <form action="cart" method="post">
                        <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                        <input type="hidden" name="product_name" value="<%= product.getProductName() %>">
                        <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">
                        <input type="hidden" name="product_quantity" value="1">
                        <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">
                        <button type="submit" class="btn btn-danger">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <% } else { %>
    <div class="alert alert-warning text-center" role="alert">
        No products available at the moment.
    </div>
    <% } %>
</div>

<!-- Footer -->
<footer class="footer text-center">
    <div class="container">
        <p>"Unwrap happiness with Joy-Parcel – Your one-stop online gift shop for personalized surprises and amazing deals!</p>

        <p class="mt-3">© 2025 Joy-Parcel. All Rights Reserved.</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
