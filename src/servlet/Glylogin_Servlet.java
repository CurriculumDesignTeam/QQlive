package servlet;

import bean.Gly;
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

public class Glylogin_Servlet extends HttpServlet {
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

        String un=req.getParameter("username");
        String pw=req.getParameter("password");
        if(un==null||pw==null||un.trim().equals("")||pw.trim().equals("")){
            out.print("<script>alert(\"账号密码不能为空\");window.location.href=\"login.jsp\";</script>");
            return;
        }
        //System.out.println(un+"$"+pw);

        Gly logingly=new Gly();
        String sql="select * from gly where GLYZH="+" ? " +"and GLYMM="+" ? ";
        //System.out.println(sql);
        int result=0;
        try {
            PreparedStatement ps= DBUtil.executePreparedStatment(sql);

            ps.setString(1,un);
            ps.setString(2,pw);
            //System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                logingly.setGlyzh(rs.getString("GLYZH"));
                result=1;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        if(result==1){//登录成功
            session.setAttribute("logingly",logingly);
            out.print("<script>window.location.href=\"addmovie.jsp\";</script>");
        }else{//登录失败
            out.print("<script>alert(\"账号密码不匹配，请检查后重新登录！！！\");window.history.back(-1);</script>");
        }
    }
}
