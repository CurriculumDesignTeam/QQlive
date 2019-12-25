package servlet;

import bean.Gly;
import bean.Yp;
import util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.SQLException;

public class Addmovie_Servlet extends HttpServlet {
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

        String ypmc=req.getParameter("ypmc");
        String ypdz=req.getParameter("ypdz");
        String fmdz=req.getParameter("fmdz");
        String ypzy=req.getParameter("ypzy");
        String ypvip=req.getParameter("ypvip");
        Gly logingly=(Gly)session.getAttribute("logingly");
        if(ypmc==null||ypmc.trim().equals("")||ypdz==null||ypdz.trim().equals("")||fmdz==null||fmdz.trim().equals("")||ypzy==null||ypzy.trim().equals("")||ypvip==null||ypvip.trim().equals("")){
            out.print("<script>alert(\"影片信息填写不完整，请检查！！！\");window.history.back(-1);</script>");
            return;
        }
        Yp movie=new Yp();
        movie.setYpmc(ypmc);
        movie.setYpdz(ypdz);
        movie.setFmdz(fmdz);
        movie.setYpzy(ypzy);
        if(ypvip.equals("1")){
            movie.setYpvip(true);
        }else {
            movie.setYpvip(false);
        }

        String sql="{call p2(?,?,?,?,?,?)}";
        int result=0;
        CallableStatement cs=DBUtil.executeCall(sql);
        try {
            cs.setString(1,logingly.getGlyzh());
            cs.setString(2,movie.getYpmc());
            cs.setString(3,movie.getYpdz());
            cs.setString(4,movie.getFmdz());
            cs.setString(5,movie.getYpzy());
            cs.setBoolean(6,movie.isYpvip());
            result=cs.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(result==1){//添加成功
            out.print("<script>alert(\"添加成功！！！\");window.location.href=\"addmovie.jsp\";</script>");
        }else{//添加失败
            out.print("<script>alert(\"添加失败！！！\");window.history.back(-1);</script>");
        }
    }
}
