package servlet;

import bean.Yp;
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

public class Search_Servlet extends HttpServlet {
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

        String searchword=req.getParameter("searchword");
        String sql;
        if(searchword==null||searchword.trim().equals("")){
            sql="select * from py";
        }else {
            sql="select * from py where YPMC LIKE '%"+searchword+"%' or YPZY LIKE '%"+searchword+"%'";
        }


        ArrayList<Yp> searchmovie=new ArrayList<Yp>();
        int i=0;

        try {
            ResultSet rs=DBUtil.executeQuery(sql);
            while (rs.next()){
                int ypid=rs.getInt(1);
                String ypmc=rs.getString(2);
                String ypdz=rs.getString(3);
                String fmdz=rs.getString(4);
                String ypzy=rs.getString(5);
                boolean ypvip=rs.getBoolean(6);
                Yp selectmovie=new Yp();
                selectmovie.setYpid(ypid);
                selectmovie.setYpmc(ypmc);
                selectmovie.setYpdz(ypdz);
                selectmovie.setFmdz(fmdz);
                selectmovie.setYpzy(ypzy);
                selectmovie.setYpvip(ypvip);
                searchmovie.add(selectmovie);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        session.setAttribute("searchmovie",searchmovie);
        resp.sendRedirect("search.jsp");

    }
}
