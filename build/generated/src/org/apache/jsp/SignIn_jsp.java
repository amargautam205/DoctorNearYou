package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignIn_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("   <html lang=\"en\">\n");
      out.write("     <head>\n");
      out.write("      <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("          <!-- Bootstrap CSS -->\n");
      out.write("              <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("              <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("              <link href=\"https://fonts.googleapis.com/css2?family=Shantell+Sans&display=swap\" rel=\"stylesheet\">\n");
      out.write("              <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\" integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\n");
      out.write("              <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("              <link href=\"css/SignIn.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("              <title>SignIn</title>\n");
      out.write("             </head>\n");
      out.write("       <body>\n");
      out.write("           <!--Coding Area Started-->\n");
      out.write("           <!--Start Of Login Page Coding-->\n");
      out.write("         <section class=\"LoginPage\">\n");
      out.write("           <div class=\"container text-center py-5\"> \n");
      out.write("               <h2>Welcome to Login-Page</h2>\n");
      out.write("               <br><br>\n");
      out.write("               \n");
      out.write("               <div class=\"row\">\n");
      out.write("                        <!--first block of Login-->\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                           <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                               <img src=\"css/image/LoginPageImage/PatientLoginImage.jpg\" class=\"card-img-top\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <button class=\"btn btn-primary\" onclick=\"document.location='PatientLoginPage.jsp'\">Patient</button>\n");
      out.write("                                </div>\n");
      out.write("                           </div>   \n");
      out.write("                        </div>\n");
      out.write("                        <!--second block of login-->\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                           <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                               <img src=\"css/image/LoginPageImage/DoctorLoginImage.jpg\" class=\"card-img-top\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <button class=\"btn btn-primary\" onclick=\"document.location='DoctorLoginPage.jsp'\">Doctor</button>\n");
      out.write("                                </div>\n");
      out.write("                           </div>   \n");
      out.write("                        </div>\n");
      out.write("                         <!--Third block of Login-->\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                           <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                               <img src=\"css/image/LoginPageImage/AdminLoginImage.jpg\" class=\"card-img-top\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <button class=\"btn btn-primary\" onclick=\"document.location='AdminLoginPage.jsp'\">Admin</button>\n");
      out.write("                                </div>\n");
      out.write("                           </div>   \n");
      out.write("                        </div>\n");
      out.write("               </div>\n");
      out.write("               <br>\n");
      out.write("               <h3>Wherever the art of medicine is loved, there is also a love of humanity.</h3>\n");
      out.write("           </div>\n");
      out.write("        </section>\n");
      out.write("           <!--End Of Login Page Coding-->\n");
      out.write("           <!--coding Area Ended-->\n");
      out.write("            <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx\" crossorigin=\"anonymous\"></script>\n");
      out.write("       </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
