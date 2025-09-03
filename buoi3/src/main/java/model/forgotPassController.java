package model;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/forgotPassword")
public class forgotPassController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String email = req.getParameter("email").trim();

        userService service = new userServiceImpl();
        if (!service.checkExistEmail(email)) {
            req.setAttribute("alert", "Email không tồn tại trong hệ thống!");
            req.getRequestDispatcher("forgotPass.jsp").forward(req, resp);
            return;
        }

        // TODO: Sinh mật khẩu tạm (hoặc token reset)
        String newPassword = "123456"; // tạm thời
        boolean updated = service.updatePassword(email, newPassword);

        if (updated) {
            req.setAttribute("successMsg", "Mật khẩu mới của bạn là: " + newPassword);
        } else {
            req.setAttribute("alert", "Có lỗi khi đặt lại mật khẩu, vui lòng thử lại.");
        }
        req.getRequestDispatcher("forgotPass.jsp").forward(req, resp);
    }
}

