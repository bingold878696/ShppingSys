package main.java.com.example.controller;

import main.java.com.example.dao.ProductDao;
import main.java.com.example.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddToCartServlet", urlPatterns = {"/add-to-cart"})
public class AddToCartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取商品ID
        String productId = request.getParameter("id");

        // 从数据库或其他地方获取该商品信息
        Product product = ProductDao.getProductById(productId);

        // 假设购买成功，库存减1
        if (product != null && product.getQuantity() > 0) {
            product.setQuantity(product.getQuantity() - 1);
            ProductDao.updateProductQuantity(product.getId(), product.getQuantity()); // 更新库存数量
            // 重定向回商品列表页面
            ProductDao productDao = new ProductDao();
            List<Product> products = productDao.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("products.jsp").forward(request, response);
        } else {
            // 处理库存不足的情况，可以重定向到错误页面或者给出提示
            response.getWriter().println("库存不足！");
        }
    }
}
