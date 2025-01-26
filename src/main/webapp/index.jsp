<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerce.dto.ProductDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Joy-Parcel | Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Navbar Styling */
        .navbar {
            padding: 1rem 2rem;
            background-color: #17a2b8;
        }

        .navbar-nav {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 2rem;
        }

        .nav-item .nav-link {
            font-size: 1.1rem;
            font-weight: 500;
            text-transform: uppercase;
            color: white;
            transition: color 0.3s, transform 0.3s ease;
        }

        .nav-item .nav-link:hover {
            color: #ffd700;
            transform: translateY(-3px);
        }

        .nav-item .nav-link.btn-warning {
            font-size: 1.2rem;
            font-weight: 700;
            border-radius: 25px;
        }

        /* Hero Section */
        .hero {
            background: url('images/gift.gif') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .hero-overlay {
            background-color: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .hero-text {
            position: relative;
            z-index: 1;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: 700;
            text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.5);
        }

        .hero p {
            font-size: 1.5rem;
            font-weight: 300;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        .hero .btn-warning {
            background-color: #ffd700;
            color: #212529;
            padding: 12px 30px;
            font-size: 1.2rem;
            font-weight: 600;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .hero .btn-warning:hover {
            background-color: #ffca28;
        }

        /* Category Card Styling */
        .category-card {
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        .category-card img {
            height: 250px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
        }

        .category-card .card-body {
            padding: 20px;
            text-align: center;
        }

        .category-card .card-title {
            font-size: 1.2rem;
            font-weight: 600;
        }

        .category-card .btn-warning {
            border-radius: 30px;
            padding: 10px 30px;
            background-color: #ffd700;
            color: #212529;
            font-size: 1rem;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .category-card .btn-warning:hover {
            background-color: #ffca28;
        }

        /* Footer */
        .footer {
            background-color: #dd63a1;
            padding: 20px 0;
        }

        .footer p {
            color: #fff;
            font-weight: 300;
            font-size: 1rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar-nav {
                flex-direction: column;
                gap: 1rem;
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .hero p {
                font-size: 1.25rem;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-info fixed-top shadow-sm">
    <div class="container">
        <a class="navbar-brand text-white fw-bold" href="admin-login.jsp">Joy-Parcel</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="new-product-list">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="signin.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="update-product.jsp">Cart <span class="badge bg-primary">0</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-warning text-dark px-4 py-2 rounded-3" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero position-relative text-center text-white">
    <div class="hero-overlay position-absolute top-0 start-0 w-100 h-100 d-flex justify-content-center align-items-center">
        <div class="hero-text">
            <h1 class="display-4">Welcome to Joy-Parcel</h1>
            <p class="lead">Unwrap happiness with our curated hampers and exclusive gifts.</p>
            <a href="new-product-list" class="btn btn-warning btn-lg mt-4">Shop Now</a>
        </div>
    </div>
</section>
<%--<!-- Categories Section -->--%>
<div class="container mt-5">
    <h1 class="text-center mb-4">Our Products</h1>

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
        <p>"Unwrap happiness with Joy-Parcel – Your one-stop online gift shop for personalized surprises and amazing deals!"</p>
        <p class="mt-3">© 2025 Joy-Parcel. All Rights Reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
