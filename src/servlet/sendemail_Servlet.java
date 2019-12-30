package servlet;

import util.MailUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class sendemail_Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out=resp.getWriter();
        HttpSession session=req.getSession();

        String to = req.getParameter("email");
        if(to!=null) {//发送验证码
            String email_code = MailUtil.randomVC(6);
            session.setAttribute("ecode",email_code);
            MailUtil.sendHtml("在线影视",to,"验证码",email_code);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
