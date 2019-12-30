package servlet;

import bean.Yh;
import util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JoinVip_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out=resp.getWriter();
        HttpSession session=req.getSession();


        String joinvip=req.getParameter("joinvip");
        Yh loginuser=(Yh)session.getAttribute("loginuser");
        if(joinvip==null||joinvip.trim().equals("")){
            out.print("<script>alert(\"激活码不能为空\");window.history.back(-1);</script>");
            return;
        }

        if(joinvip.equals("BHXN7-MQB36-MTHQ4-8MHKV-CYT97")){//激活vip
            String sql="update yh set YHVIP=1 WHERE DZXX=?";
            int result=0;
            try {
                PreparedStatement ps= DBUtil.executePreparedStatment(sql);
                ps.setString(1,loginuser.getDzxx());
                result=ps.executeUpdate();
            }catch (SQLException e){
                e.printStackTrace();
            }
            if(result>0){
                session.setAttribute("loginuser",null);
                out.print("<script>alert(\"激活成功,请重新登录\");window.location.href=\"login.jsp\";</script>");
            }else {
                out.print("<script>alert(\"激活失败，请重试\");window.history.back(-1);</script>");
            }
        }else {
            out.print("<script>alert(\"激活码已失效，请联系管理员\");window.history.back(-1);</script>");
        }
    }
}
