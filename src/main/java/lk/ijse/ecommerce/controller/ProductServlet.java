package lk.ijse.ecommerce.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "ProductServlet", value = "/product-servlet")
public class ProductServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("save".equalsIgnoreCase(action)) {
            String name = req.getParameter("product_name");
            String description = req.getParameter("product_description");
            double price = Double.parseDouble(req.getParameter("product_price"));
            int quantity = Integer.parseInt(req.getParameter("product_quantity"));
            int categoryId = Integer.parseInt(req.getParameter("category_id"));
            System.out.println("name: " + name);
            System.out.println("description: " + description);
            System.out.println("price: " + price);
            System.out.println("quantity: " + quantity);
            System.out.println("categoryId: " + categoryId);

            // Handle file upload
            Part imagePart = req.getPart("image_path");
            String fileName = Paths.get(imagePart.getSubmittedFileName()).getFileName().toString();
            String imagePath = "uploads/" + fileName;
            File uploadsDir = new File(getServletContext().getRealPath("/uploads"));
            if (!uploadsDir.exists()) {
                uploadsDir.mkdirs();
            }
            File imageFile = new File(uploadsDir, fileName);
            try (InputStream input = imagePart.getInputStream()) {
                Files.copy(input, imageFile.toPath());
            }

            resp.sendRedirect("admin.jsp");
        }
    }
}
