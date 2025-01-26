<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #045047;
        }
        h3{
            font-weight: bold;
        }
        .sidebar {
            min-height: 100vh;
            background-color: #117391;
            color: #fff;
        }
        .sidebar a {
            color: #ffffff;
            line-height: 3rem;
            text-decoration: none;
            font-family: 'Arial', sans-serif;
            font-weight: bold;
            font-size: 1.3rem;
        }
        .sidebar a:hover {
            color: #121111;
            background-color: #63d5d5;
        }
        .sidebar .nav-link.active {
            background-color: #16ead0;
            color: #fff;
        }
        .main-content {
            padding: 20px;
        }
        .card img {
            height: 150px;
            object-fit: cover;
        }
        .dashboard-title{
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .card-body{
            background: #95eae0;
        }
        .card-body>a{
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar">
            <div class="position-sticky">
                <h3 class="text-center py-4">Menu</h3>
                <ul class="nav flex-column px-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin.jsp">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product-list">
                            <i class="bi bi-box"></i> Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user-list">
                            <i class="bi bi-people"></i> Users
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">
                            <i class="bi bi-clipboard"></i> Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="add-cart.jsp">
                            <i class="bi bi-bar-chart"></i> Reports
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">
                            <i class="bi bi-gear"></i> Home
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 main-content">
            <div class="dashboard-title"><b>Admin Dashboard</b></div>
            <div class="row">
                <!-- Products Card -->
                <div class="col-md-4 ">
                    <div class="card shadow-sm mb-4">
                        <img src="images/product-logo-600-5614.png" class="card-img-top" alt="Products">
                        <div class="card-body">
                            <h5 class="card-title"><b>Manage Products</b></h5>
                            <p class="card-text">View and manage all the products available in the store.</p>
                            <a href="product.jsp" class="btn btn-success">Add Products</a>
                            <a href="update-product.jsp" class="btn btn-warning">Update Products</a><br>
                            <a href="product-list" class="btn btn-primary">View Products</a>
                        </div>
                    </div>
                </div>
                <!-- Users Card -->
                <div class="col-md-4">
                    <div class="card shadow-sm mb-4">
                        <img src="images/user.png" class="card-img-top" alt="Users">
                        <div class="card-body">
                            <h5 class="card-title"><b>Manage Users</b></h5>
                            <p class="card-text">Manage and oversee all registered users.</p>
                            <a href="admin-login.jsp" class="btn btn-success">Register Users</a>
                            <a href="user-list" class="btn btn-success">View Users</a>
                        </div>
                    </div>
                </div>


            <div class="row">

                <!-- Reports Card -->
                <div class="col-md-6">
                    <div class="card shadow-sm mb-4">
                        <img src="images/category.webp" class="card-img-top" alt="Category">
                        <div class="card-body">
                            <h5 class="card-title"><b>Manage Category</b></h5>
                            <p class="card-text">View and manage all the category available in the store.</p>
                            <a href="category.jsp" class="btn btn-info">Add Categories</a>
                            <a href="category-list" class="btn btn-info">View Categories</a>
                        </div>
                    </div>
                </div>

                <!-- Orders Card -->
                <div class="col-md-4">
                    <div class="card shadow-sm mb-4">
                        <img src="images/easy-ordering.webp" class="card-img-top" alt="Orders">
                        <div class="card-body">
                            <h5 class="card-title"><b>Manage Orders</b></h5>
                            <p class="card-text">Track and process pending and completed orders.</p>
                            <a href="#" class="btn btn-warning">View Orders</a>
                        </div>
                    </div>
                </div>
            </div>
                <!-- Settings Card -->
                <%--<div class="col-md-6">
                    <div class="card shadow-sm mb-4">
                        <img src="images/setting.jpg" class="card-img-top" alt="Settings">
                        <div class="card-body">
                            <h5 class="card-title">Settings</h5>
                            <p class="card-text">Update configurations and manage admin settings.</p>
                            <a href="#" class="btn btn-dark">Go to Settings</a>
                        </div>
                    </div>
                </div>--%>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap JS and Icons -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>
</html>


