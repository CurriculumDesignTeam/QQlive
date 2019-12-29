package servlet;

import bean.Gk;
import bean.Yh;
import util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MyInfo_Servlet extends HttpServlet {
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


        Yh loginuser=(Yh)session.getAttribute("loginuser");

        String sql="select * from f1(?) order by GKSJ desc";
        ArrayList<Gk> test=new ArrayList<Gk>();

        PreparedStatement ps=DBUtil.executePreparedStatment(sql);
        try {
            ps.setString(1,loginuser.getDzxx());
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                Gk gkjl= new Gk();
                String ypmc=rs.getString("YPMC");
                String gksj=rs.getString("GKSJ");
                gkjl.setYpmc(ypmc);
                gkjl.setGksj(gksj);
                test.add(gkjl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        session.setAttribute("gkjl",test);
        resp.sendRedirect("myinfo.jsp");
    }
}
