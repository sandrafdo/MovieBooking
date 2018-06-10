package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Jurassic_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"details.css\" type=\"text/css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body background=\"back.jpg\" class=\"back\">\n");
      out.write("<h1 align=\"center\">Movie Ticket Booking</h1>\n");
      out.write("<h3 align=\"center\">Now it is easy to book Movie tickets..anytime anywhere!!</h3>\n");
      out.write("<form method=\"post\">\n");
      out.write("    <input type=\"text\" name=\"person\" placeholder=\"No of person\">\n");
      out.write("    <div class=\"center\" align=\"left\">\n");
      out.write("    <h4>AGS Villivakkam<h4>\n");
      out.write("            <input type=\"hidden\" name=\"but\" />\n");
      out.write("    <input type=\"button\" name=\"timing\"> 6.30am \n");
      out.write("        <input type=\"button\"  name=\"timing\"> 8am \n");
      out.write("            <input type=\"button\"  name=\"timing\"> 11am\n");
      out.write("                <input type=\"button\"  name=\"timing\" value=\"12.30pm\" onclick=\"{document.frm.but.value=this.value;document.frm.submit();}\"> 12.30pm\n");
      out.write("                    <input type=\"button\" name=\"timing\"> 1.15pm \n");
      out.write("                        <input type=\"button\" name=\"timing\"> 3pm \n");
      out.write("                        </div>\n");
      out.write("    <div class=\"center\" align=\"left\">\n");
      out.write("    <h4>PVR<h4>\n");
      out.write("    <button name=\"timing\" value=\"6.30am\" > 6.30am \n");
      out.write("        <button  name=\"timing\"> 8am \n");
      out.write("            <button  name=\"timing\"> 11am\n");
      out.write("                <button  name=\"timing\"> 12.30pm\n");
      out.write("                    <button name=\"timing\"> 1.15pm \n");
      out.write("                        <button name=\"timing\"> 3pm \n");
      out.write("                        </div>\n");
      out.write("     <button type=\"submit\" class=\"nextbtn\" value=\"submit\">Next</button>   \n");
      out.write("     \n");
      out.write("     \n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");

            String timing=request.getParameter("but");
            String person=request.getParameter("person");
            
            
            Connection con=null;
            PreparedStatement pst=null;
            ResultSet rs=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost/movie","root","root");
                pst=con.prepareStatement("select * from jurassic where timing=? and person=?");
                
                pst.setString(1, timing);
                pst.setString(2, person);
                rs = pst.executeQuery();                        
            if(rs.next())           
            {
                response.sendRedirect("hi");
            }       
            else
            {
               response.sendRedirect("welcome");
            }
            }
                catch(Exception e)
                {
                        out.println(e);
                }

      out.write('\n');
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
