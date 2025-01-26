<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Custom Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f5f7fa;
            color: #555;
            overflow-x: hidden;
        }

        h3, .dashboard-title {
            font-weight: bold;
            color: #333;
            margin-left: 30vw;
        }

        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #006064, #004d40);
            color: #fff;
            padding-top: 30px;
            position: sticky;
            top: 0;
        }

        .sidebar a {
            color: #ffffff;
            line-height: 3rem;
            text-decoration: none;
            font-family: 'Arial', sans-serif;
            font-weight: bold;
            font-size: 1.2rem;
            transition: background-color 0.3s, color 0.3s;
            border-radius: 10px;
        }

        .sidebar a:hover {
            background-color: #ffffff;
            color: #004d40;
        }

        .sidebar .nav-link.active {
            background-color: #ffcc00;
            color: #004d40;
        }

        .main-content {
            padding: 30px;
            margin-left: 250px;
            transition: margin-left 0.3s ease-in-out;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            background: #ffffff;
            transition: transform 0.3s ease-in-out;
            margin-bottom: 30px; /* Add spacing between cards */
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }

        .card-body {
            padding: 30px;
        }

        .card img {
            border-radius: 10px;
            height: 160px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .card img:hover {
            transform: scale(1.1);
        }

        .dashboard-title {
            font-size: 2.5rem;
            margin-bottom: 40px;
            color: #333;
        }

        .card-body a {
            font-weight: bold;
            text-align: center;
            margin-top: 15px;
            padding: 12px;
            border-radius: 10px;
            font-size: 1.1rem;
            transition: background-color 0.3s, color 0.3s;
        }

        .card-body .btn-success:hover,
        .card-body .btn-warning:hover,
        .card-body .btn-primary:hover,
        .card-body .btn-info:hover {
            background-color: #004d40;
            color: white;
        }

        /* Neumorphism for the card */
        .card-body {
            background: #f0f0f3;
            box-shadow: inset 10px 10px 20px rgba(255, 255, 255, 0.2), inset -10px -10px 20px rgba(0, 0, 0, 0.1);
        }

        /* Border between cards */
        .card-border-bottom {
            border-bottom: 2px solid #eeeeee;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .main-content {
                margin-left: 0;
            }

            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 999;
                display: none;
            }

            .sidebar.active {
                display: block;
            }

            .navbar-toggler {
                display: block;
                background-color: #004d40;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar">
            <div class="position-sticky">
                <h3 class="text-center py-4">Admin Menu</h3>
                <ul class="nav flex-column px-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin.jsp">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product-list">
                            <i class="bi bi-box"></i> Manage Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user-list">
                            <i class="bi bi-people"></i> Manage Users
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order-list">
                            <i class="bi bi-clipboard"></i> Manage Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="category-list">
                            <i class="bi bi-tags"></i> Manage Categories
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reports.jsp">
                            <i class="bi bi-bar-chart"></i> View Reports
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
            <div class="dashboard-title">Admin Dashboard</div>
            <div class="row">
                <!-- Products Card -->
                <div class="col-md-4">
                    <div class="card shadow-sm mb-4 card-border-bottom">
                        <img src="images/product-logo-600-5614.png" class="card-img-top" alt="Products">
                        <div class="card-body">
                            <h5 class="card-title">Manage Products</h5>
                            <p class="card-text">View and manage all the products available in the store.</p>
                            <a href="product.jsp" class="btn btn-success">Add Products</a>
                            <a href="update-product.jsp" class="btn btn-warning">Update Products</a>
                            <a href="product-list" class="btn btn-primary">View Products</a>
                        </div>
                    </div>
                </div>

                <!-- Users Card -->
                <div class="col-md-4">
                    <div class="card shadow-sm mb-4 card-border-bottom">
                        <img src="images/user.png" class="card-img-top" alt="Users">
                        <div class="card-body">
                            <h5 class="card-title">Manage Users</h5>
                            <p class="card-text">Manage and oversee all registered users.</p>
                            <a href="admin-login.jsp" class="btn btn-success">Register Users</a>
                            <a href="user-list" class="btn btn-info">View Users</a>
                        </div>
                    </div>
                </div>

                <!-- Reports Card -->
                <div class="col-md-4">
                    <div class="card shadow-sm mb-4">
                        <img src="images/category.webp" class="card-img-top" alt="Category">
                        <div class="card-body">
                            <h5 class="card-title">Manage Categories</h5>
                            <p class="card-text">View and manage all the categories in the store.</p>
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
                            <h5 class="card-title">Manage Orders</h5>
                            <p class="card-text">Track and process pending and completed orders.</p>
                            <a href="order-list" class="btn btn-warning">View Orders</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap JS and Icons -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>
</html>
