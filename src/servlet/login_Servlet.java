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
import java.sql.ResultSet;

public class login_Servlet extends HttpServlet {
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

        String un=req.getParameter("username");
        String pw=req.getParameter("password");
        if(un==null||pw==null||un.trim().equals("")||pw.trim().equals("")){
            out.print("<script>alert(\"账号密码不能为空\");window.location.href=\"login.jsp\";</script>");
            return;
        }
        //System.out.println(un+"$"+pw);

        Yh loginuser=new Yh();
        String sql="select * from yh where DZXX="+" ? " +"and YHMM="+" ? ";
        //System.out.println(sql);
        int result=0;
        try {
            PreparedStatement ps= DBUtil.executePreparedStatment(sql);

            ps.setString(1,un);
            ps.setString(2,pw);
            //System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                loginuser.setDzxx(rs.getString("DZXX"));
                loginuser.setYhnc(rs.getString("YHNC"));
                loginuser.setYhvip(rs.getBoolean("YHVIP"));
                result=1;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        if(result==1){//登录成功
            session.setAttribute("loginstatus","1");
            session.setAttribute("loginuser",loginuser);
            out.print("<script>alert(\"登录成功！！！\");window.location.href=\"index.jsp\";</script>");
        }else{//登录失败
            session.setAttribute("loginstatus","0");
            out.print("<script>alert(\"账号密码不匹配，请检查后重新登录！！！\");window.history.back(-1);</script>");
        }
    }
}
