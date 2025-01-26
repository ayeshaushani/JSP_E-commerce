<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerce.dto.CartItemDTO" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        .cart-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .table img {
            width: 100px;
            height: auto;
            object-fit: cover;
        }

        .checkout-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
        }

        .checkout-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="cart-container">
        <h1 class="text-center mb-4">Your Shopping Cart</h1>

        <form action="index.jsp" method="get">
            <button type="submit" class="btn btn-secondary">Back to Home</button>
        </form>

        <%
            List<CartItemDTO> cart = (List<CartItemDTO>) session.getAttribute("cart");
            if (cart != null && !cart.isEmpty()) {
        %>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Product</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Subtotal</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                for (CartItemDTO item : cart) {
            %>
            <tr>
                <td><img src="<%= item.getImage_path() %>" alt="Product Image"></td>
                <td><%= item.getProductName() %></td>
                <td>LKR <%= item.getProductPrice() %></td>
                <td>
                    <form action="cart" method="post" class="d-flex align-items-center">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                        <input type="number" name="quantity" value="<%= item.getQuantity() %>" min="1" class="form-control" style="max-width: 80px;">
                        <button type="submit" class="btn btn-primary btn-sm ms-2">Update</button>
                    </form>
                </td>
                <td>LKR <%= item.getSubtotal() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="action" value="remove">
                        <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                        <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>

        <div class="text-end">
            <h3>Subtotal: LKR <%= cart.stream().mapToDouble(CartItemDTO::getSubtotal).sum() %></h3>
            <a href="cart.jsp?action=checkout" class="checkout-btn">Proceed to Checkout</a>
        </div>

        <% } else { %>
        <div class="text-center">
            <p>Your cart is empty.</p>
        </div>
        <% } %>
    </div>
</div>
</body>
</html>
