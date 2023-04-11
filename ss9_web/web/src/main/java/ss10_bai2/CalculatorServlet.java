package ss10_bai2;

import ss10_bai2.model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Calculator", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstNumber = 0.0f;
        float secondNumber = 0.0f;
        float result = 0.0f;
        firstNumber = Float.parseFloat(request.getParameter("firstNumber"));
        secondNumber = Float.parseFloat(request.getParameter("secondNumber"));
        String operator = request.getParameter("operator");

        result = Calculator.calculator(firstNumber, secondNumber, operator);
        request.setAttribute("firstNumber", firstNumber);
        request.setAttribute("secondNumber", secondNumber);
        request.setAttribute("result", result);
        request.getRequestDispatcher("/ss10_bai2.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
