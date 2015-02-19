package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"exceptionHandler.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\r\n");
      out.write("        <title>Welcome</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body>   \r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <form action=\"ServletA10\" method=\"get\">\r\n");
      out.write("            Exception:\r\n");
      out.write("            <input type=\"submit\" value =\"Exception\"><br>           \r\n");
      out.write("        </form>\r\n");
      out.write("         ");
      out.write("       \r\n");
      out.write("        <form action=\"switch.jsp\" method=\"post\" name=\"myform\">           \r\n");
      out.write("            Apartment:<select name =\"top10\">\r\n");
      out.write("                <option value=\"default\"> \r\n");
      out.write("                    ");
 //get the value from the cookie
                        Cookie c[]= request.getCookies();
                        // display for the first time
                        if (c != null){
                            for(int x=0;x<c.length;x++){
                                if(c[x].getName().equals("top10")){                                                                           
                    
      out.write("\r\n");
      out.write("                ");
      out.print(c[x].getValue());
      out.write("\r\n");
      out.write("                    ");

                                }}}
                    
      out.write("                   \r\n");
      out.write("                </option>\r\n");
      out.write("                <option value =\"A1 Injection Flaws\"> A1 Injection Flaws </option>\r\n");
      out.write("                <option value =\"A2 Cross Site Scripting\"> A2 Cross Site Scripting </option>\r\n");
      out.write("                <option value =\"A3 Broken Authentication and Session Management\"> A3 Broken Authentication and Session Management </option> \r\n");
      out.write("                <option value =\"A4 Insecure Direct Object References\"> A4 Insecure Direct Object References </option>\r\n");
      out.write("                <option value =\"A5 Cross Site Request Forgery (CSRF)\"> A5 Cross Site Request Forgery (CSRF) </option>\r\n");
      out.write("                <option value =\"A6 Security MisconfiguraSon\"> A6 Security MisconfiguraSon </option>\r\n");
      out.write("                <option value =\"A7 Insecure Cryptographic Storage\"> A7 Insecure Cryptographic Storage </option>\r\n");
      out.write("                <option value =\"A8 Failure to Restrict URL Access\"> A8 Failure to Restrict URL Access </option>\r\n");
      out.write("                <option value =\"A9 Insufficient Transport Layer ProtecSon\"> A9 Insufficient Transport Layer ProtecSon </option>\r\n");
      out.write("                <option value =\"A10 Unvalidated Redirects and Forwards\">A10 Unvalidated Redirects and Forwards </option>\r\n");
      out.write("            </select>    \r\n");
      out.write("                \r\n");
      out.write("                <input type=\"submit\" value =\"display\"><br>\r\n");
      out.write("          \r\n");
      out.write("        </form>       \r\n");
      out.write("    \r\n");
      out.write("    <h2>\r\n");
      out.write("        1 \"GET servlet \" -------------------Servlet10.java<br>\r\n");
      out.write("        2 \"POST servlet\" ------------------Servlet9.java<br>\r\n");
      out.write("        3 \"JSP page\" -----------------------welcome.jsp<br>\r\n");
      out.write("        4 \"JSP error page\"----------------welcome.jsp, \r\n");
      out.write("             click the \"Exception\" Button can cause the Exception<br>\r\n");
      out.write("        5 \"JSP declaration element\"-----switch.jsp line 18 <br>\r\n");
      out.write("        6 \"JSP expression element\"------welcome.jsp line 38 <br>\r\n");
      out.write("        \r\n");
      out.write("    </h2>  \r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("    \r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
