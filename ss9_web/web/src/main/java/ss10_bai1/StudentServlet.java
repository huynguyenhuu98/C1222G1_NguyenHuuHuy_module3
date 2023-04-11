package ss10_bai1;

import ss10_bai1.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "/student")
public class StudentServlet extends HttpServlet {
    private final List<Customer> customerList = new ArrayList<>();

    public void init() {
        customerList.add(new Customer("Sơn Tùng M-TP", "1994/07/05", "Viêt Nam","https://kenh14cdn.com/203336854389633024/2020/12/31/photo-1-16094117624341764656274.jpg"));
        customerList.add(new Customer("Justin Bieber", "1994/03/01", "USA","https://hips.hearstapps.com/hmg-prod/images/justin-bieber-gettyimages-1202421980.jpg?resize=1200:*"));
        customerList.add(new Customer("Martin Garrix", "1996/05/14", "USA","https://dt7v1i9vyp3mf.cloudfront.net/styles/header/s3/imagelibrary/M/Martin_Garrix_01-CghHta.FGCgKJEBQDppftF8jZXaEBeQu.jpg"));
        customerList.add(new Customer("Cristiano Ronaldo", "1985/02/05", "Portugal","https://image.nhandan.vn/1200x630/Uploaded/2023/yqjwcqjlq/2022_11_24/ronaldo-portugal-copy-1844.jpg"));
        customerList.add(new Customer("Lionel Messi","1987/06/24", "Argentina","https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Lionel_Messi_WC2022.jpg/640px-Lionel_Messi_WC2022.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/ss10_bai1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
