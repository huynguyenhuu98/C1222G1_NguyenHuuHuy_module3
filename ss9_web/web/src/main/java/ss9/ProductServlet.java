package ss9;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "productServlet", value = "/product-servlet")
public class ProductServlet extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String productDescription = request.getParameter("productDescription");
      int listPrice = Integer.parseInt(request.getParameter("listPrice"));
      float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));
      double discountAmount = listPrice*discountPercent*0.01;
      double discountPrice = listPrice-discountAmount;
      request.setAttribute("discountAmount", discountAmount);
      request.setAttribute("discountPrice", discountPrice);
      request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    public void destroy() {
    }
}