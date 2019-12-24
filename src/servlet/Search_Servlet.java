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


        StringBuilder sb=new StringBuilder();
        sb.append("<tr>");
        int i=0;

        try {
            ResultSet rs=DBUtil.executeQuery(sql);
            while (rs.next()){
                String ypmc=rs.getString(2);
                String ypdz=rs.getString(3);
                String fmdz=rs.getString(4);
                String ypzy=rs.getString(5);
                String ypvip=rs.getString(6);
                if(i%7==0)
                    sb.append("<tr>");
                i++;
                sb.append("<td>\n" +
                        "          <div style=\"margin: 10px\">\n" +
                        "            <a href=\"play.jsp?ypdz="+ypdz+"&ypmc="+ypmc+"\" target=\"_blank\">\n" +
                        "              <img width=\"100%\" src=\""+fmdz+"\" alt=\"图片加载失败\" style=\"border-radius: 6px\">\n" +
                        "              <p>"+ypmc+"</p>\n" +
                        "              <p class=\"wrap\" title=\""+ypzy+"\">\n" + ypzy +
                        "              </p>\n" +
                        "            </a>\n" +
                        "          </div>\n" +
                        "        </td>");
                if((i+1)%7==0&&i!=0)
                    sb.append("</tr>");
                i++;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        session.setAttribute("searchmovi",sb);
        resp.sendRedirect("search.jsp");

    }
}
