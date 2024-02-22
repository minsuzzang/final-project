package kr.co.green.scriptUtil;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class scriptUtil {

   public static void alert(HttpServletResponse response, String alertText) throws IOException {
      PrintWriter out = response.getWriter();
      out.println("<script>alert('" + alertText + "');</script>");
      out.flush();
   }

   public static void alertAndMovePage(HttpServletResponse response, String alertText, String nextPage)
         throws IOException {
      PrintWriter out = response.getWriter();
      out.println("<script>alert('" + alertText + "');location.href='" + nextPage + "';</script>");
      out.flush();

   }
}