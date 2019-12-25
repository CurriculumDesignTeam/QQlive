package servlet;

import bean.Gk;
import bean.Gly;
import bean.Sc;
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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GlyInfo_Servlet extends HttpServlet {
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


        Gly logingly=(Gly) session.getAttribute("logingly");

        String sql="select * from f2(?)";
        ArrayList<Sc> test=new ArrayList<Sc>();

        PreparedStatement ps= DBUtil.executePreparedStatment(sql);
        try {
            ps.setString(1,logingly.getGlyzh());
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                Sc scjl= new Sc();
                String glyzh=rs.getString("GLYZH");
                String ypmc=rs.getString("YPMC");
                scjl.setGlyzh(glyzh);
                scjl.setYpmc(ypmc);
                test.add(scjl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        session.setAttribute("scjl",test);
        resp.sendRedirect("glyinfo.jsp");
    }
}
