package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyUtil {
    /**
     *
     * @param format 1: 2019-12-12 11:18::37 上午    2: 20191212112443
     * @return 当前时间对应的格式
     */
    public static String getcurrenttime(int format){//   1
        SimpleDateFormat sdf=new SimpleDateFormat();//格式化时间
        if(format==1){
            sdf.applyPattern("yyyy-MM-dd HH:mm:ss");//2019-12-12 11:18:37
        }else if(format==2){
            sdf.applyPattern("yyyyMMddHHmmss");//20191212112443
        }
        Date date =new Date();//获取当前时间
        System.out.println("myutil当前时间："+sdf.format(date));
        return sdf.format(date).toString();
    }

    public static void main(String[] args) {
        getcurrenttime(2);
    }
}
