package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    \n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"./cs/cs.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("    body {\n");
      out.write("      padding-top:4.2rem;\n");
      out.write("      padding-bottom:4.2rem;\n");
      out.write("      background:rgba(0, 0, 0, 0.76);\n");
      out.write("    }\n");
      out.write("    a {\n");
      out.write("      text-decoration: none !important;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .formulario {\n");
      out.write("      position: relative;\n");
      out.write("      display: -ms-flexbox;\n");
      out.write("      display: flex;\n");
      out.write("      padding: 1rem;\n");
      out.write("      -ms-flex-direction: column;\n");
      out.write("      flex-direction: column;\n");
      out.write("      width: 100%;\n");
      out.write("      pointer-events: auto;\n");
      out.write("      background-color: #fff;\n");
      out.write("      background-clip: padding-box;\n");
      out.write("      border: 1px solid rgba(0,0,0,.2);\n");
      out.write("      border-radius: 1.1rem;\n");
      out.write("      outline: 0;\n");
      out.write("      max-width: 500px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("  </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <title>Acceso / OPTIMANAGER</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-md-5 mx-auto\">\n");
      out.write("      <div id=\"primera\">\n");
      out.write("        <div class=\"formulario form\">\n");
      out.write("          <div class=\"logo mb-3\">\n");
      out.write("            <div class=\"col-md-12 text-center\">\n");
      out.write("              <h1>OptiManager</h1>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <form action=\"login.jsp\" method=\"post\" name=\"login\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <label for=\"inlineFormInputGroup\">Usuario</label>\n");
      out.write("              <input type=\"text\" class=\"form-control\" name=\"usuario\" placeholder=\"Introduzca Usuario\" required>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <label for=\"exampleInputEmail1\">Contraseña</label>\n");
      out.write("              <input type=\"password\" name=\"contrasena\" class=\"form-control\" placeholder=\"Introduzca Contraseña\" required>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-12 text-center \">\n");
      out.write("              <button type=\"submit\" class=\" btn btn-block mybtn btn-info tx-tfm\">Acceder</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <p class=\"text-center\">No tengo cuenta. <a href=\"crearusuario.jsp\">Crear Usuario</a></p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("          </form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
