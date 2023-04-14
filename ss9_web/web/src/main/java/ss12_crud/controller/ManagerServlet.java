package ss12_crud.controller;

import ss12_crud.model.Manager;
import ss12_crud.service.IManagerService;
import ss12_crud.service.impl.ManagerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ManagerServlet", value = "/manager")
public class ManagerServlet extends HttpServlet {
    private IManagerService iManagerService = new ManagerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("view/list_manager.jsp").forward(request,response);
                break;
            default:
                try {
                    request.setAttribute("managerList",iManagerService.display());
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                request.getRequestDispatcher("/view/list_manager.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
