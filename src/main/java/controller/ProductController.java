package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductDAOImpl;
import model.Product;
@WebServlet("/product")
public class ProductController extends HttpServlet {
	
	private ProductDAO productDAO = new ProductDAOImpl();

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	req.setAttribute("listProducts", productDAO.readAll());
	
	req.getRequestDispatcher("/product/list.jsp").forward(req, resp);
}
}
