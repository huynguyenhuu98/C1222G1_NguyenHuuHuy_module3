package ss11_mvc.controller;

import ss11_mvc.model.Product;
import ss11_mvc.service.IProductService;
import ss11_mvc.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private final IProductService iProductService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser==null) {
            actionUser ="";
        }
        switch (actionUser) {
            case "create":
                request.getRequestDispatcher("view/create.jsp").forward(request, response);
                break;
            case "findName":
                String name = request.getParameter("name");
                request.setAttribute("productList",iProductService.findName(name));
                request.getRequestDispatcher("view/view.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("productList",iProductService.display());
                request.getRequestDispatcher("view/view.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "create":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                int price = Integer.parseInt(request.getParameter("price"));
                String describe = request.getParameter("describe");
                String producer = request.getParameter("producer");
                Product product = new Product(id,name,price,describe,producer);
                iProductService.save(product);
                request.setAttribute("product",iProductService.display());
                request.getRequestDispatcher("/view/create.jsp").forward(request, response);
                break;

        }
    }
}
