package servlet;

import bean.Yh;
import bean.Yp;
import util.DBUtil;
import util.MyUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JudgeVip_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        HttpSession session=req.getSession();
        PrintWriter out=resp.getWriter();

        Yh loginuser=(Yh) session.getAttribute("loginuser");
        String selectmovieid=(String) req.getParameter("selectmovieid");


        String sql="select * from py where YPBH="+selectmovieid;

        ResultSet rs=DBUtil.executeQuery(sql);
        Yp movie=new Yp();
        try {
            while (rs.next()){
                int ypid=rs.getInt(1);
                String ypmc=rs.getString(2);
                String ypdz=rs.getString(3);
                String fmdz=rs.getString(4);
                String ypzy=rs.getString(5);
                boolean ypvip=rs.getBoolean(6);
                movie.setYpid(ypid);
                movie.setYpmc(ypmc);
                movie.setYpdz(ypdz);
                movie.setFmdz(fmdz);
                movie.setYpzy(ypzy);
                movie.setYpvip(ypvip);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }


        if(!movie.isYpvip() || loginuser.isYhvip()){//有权限，播放，添加播放记录
            sql="{call p1(?,?,?)}";

            CallableStatement cs=DBUtil.executeCall(sql);
            try {
                cs.setString(1,loginuser.getDzxx());
                cs.setInt(2,movie.getYpid());
                cs.setString(3, MyUtil.getcurrenttime(1));
                cs.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }


            session.setAttribute("selectmovie",movie);
            resp.sendRedirect("play.jsp");
        }else {//没有权限，提示开通vip
            session.setAttribute("selectmovie",null);
            out.print("<script>alert(\"没有权限查看该影片！！！\");window.location.href=\"index.jsp\";</script>");
        }

    }
}
