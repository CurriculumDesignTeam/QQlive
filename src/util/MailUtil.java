// 需要用户名密码邮件发送实例
//文件名 SendEmail2.java
//本实例以QQ邮箱为例，你需要在qq后台设置
package util;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil
{
   public static void send_email(String recvemail,String msg)
   {
      // 收件人电子邮箱
      String to = recvemail;

      // 发件人电子邮箱
      String from = "1522426323@qq.com";

      // 指定发送邮件的主机为 smtp.qq.com
      String host = "smtp.qq.com";  //QQ 邮件服务器

      // 获取系统属性
      Properties properties = System.getProperties();

      // 设置邮件服务器
      properties.setProperty("mail.smtp.host", host);

      properties.put("mail.smtp.auth", "true");
      // 获取默认session对象
      Session session = Session.getDefaultInstance(properties,new Authenticator(){
         public PasswordAuthentication getPasswordAuthentication()
         {
            return new PasswordAuthentication("1522426323@qq.com", "xyhuistrmwfphghi"); //发件人邮件用户名、授权码
         }
      });

      try{
         // 创建默认的 MimeMessage 对象
         MimeMessage message = new MimeMessage(session);

         // Set From: 头部头字段
         message.setFrom(new InternetAddress(from));

         // Set To: 头部头字段
         message.addRecipient(Message.RecipientType.TO,
                 new InternetAddress(to));

         // Set Subject: 头部头字段
         message.setSubject("欢迎使用在线影视");

         // 设置消息体
         message.setContent("<h1 style=\"font-size:50px;text-align: center;\">您的验证码为:"+msg+"</h1>","text/html;charset=gb2312");

         //String content="<h1>验证码：565code</h1>";
         //message.setContent(content,"text/html");

         // 发送消息
         Transport.send(message);
         System.out.println("Sent message successfully....");
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
   }
   public static String randomVC(int length){
      String text = "QAZXSWEDCVFRTGBNHYUJMKLOIP7896541203";
      StringBuilder VC = new StringBuilder();
      Random r = new Random();
      int pos;
      for(int i=0;i<length;i++){
         pos = r.nextInt(36);
         VC.append(text.charAt(pos));
      }
      return VC.toString();
   }


}