package servlet;

import util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

public class findpw_Servlet extends HttpServlet {
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

        //判断验证码是否正确
        String ecode=(String)session.getAttribute("ecode");//邮箱验证码
        String icode=req.getParameter("email_code");//输入验证码
        System.out.println(ecode+"$"+icode);
        if(ecode!=null&&icode!=null&&!ecode.equals(icode)){
            out.print("<script>alert(\"验证码不正确！！！\");window.location.href=\"register.jsp\";</script>");
            return;
        }else if(ecode==null||icode==null){
            out.print("<script>alert(\"验证码不能为空！！！\");window.location.href=\"register.jsp\";</script>");

        }
        req.setAttribute("ecode",null);


        String un=req.getParameter("username");
        String pw=req.getParameter("newpassword");

        String SQL = "UPDATE yh SET YHMM=? where DZXX=?";

        int result=0;
        try {
            PreparedStatement ps= DBUtil.executePreparedStatment(SQL);
            ps.setString(1,pw);
            ps.setString(2,un);
            result=ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("findpw result:"+result);

        if(result>0){//密码重置成功
            //session.setAttribute("loginstatus","1");
            out.print("<script>alert(\"密码重置成功！！！\");window.location.href=\"index.jsp\";</script>");
        }else{//注册失败
            //session.setAttribute("loginstatus","0");
            out.print("<script>alert(\"密码重置失败！！！\");window.history.back(-1);</script>");
        }
    }
}
