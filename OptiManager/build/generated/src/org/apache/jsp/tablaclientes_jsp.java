package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class tablaclientes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");

 Statement st= connection.createStatement();
 int codOptica = (int)(session.getAttribute("codOptica"));
 ResultSet rs = st.executeQuery("SELECT * FROM cliente WHERE optica_CodOptica = " + codOptica);
 


      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("      body {\n");
      out.write("        padding-top:4.2rem;\n");
      out.write("        padding-bottom:4.2rem;\n");
      out.write("        background:rgba(0, 0, 0, 0.76);\n");
      out.write("      }\n");
      out.write("      a {\n");
      out.write("        text-decoration: none !important;\n");
      out.write("      }\n");
      out.write("      .table-wrapper {\n");
      out.write("        position: relative;\n");
      out.write("        display: -ms-flexbox;\n");
      out.write("        display: flex;\n");
      out.write("        padding: 1rem;\n");
      out.write("        -ms-flex-direction: column;\n");
      out.write("        flex-direction: column;\n");
      out.write("        width: 100%;\n");
      out.write("        pointer-events: auto;\n");
      out.write("        background-color: #fff;\n");
      out.write("        background-clip: padding-box;\n");
      out.write("        border: 1px solid rgba(0,0,0,.2);\n");
      out.write("        border-radius: 1.1rem;\n");
      out.write("        outline: 0;\n");
      out.write("        max-width: 1080px;\n");
      out.write("        margin: 0 auto;\n");
      out.write("      }\n");
      out.write("      .table-title {\n");
      out.write("        padding-bottom: 10px;\n");
      out.write("        margin: 0 0 10px;\n");
      out.write("      }\n");
      out.write("      .table-title h2 {\n");
      out.write("        margin: 6px 0 0;\n");
      out.write("        font-size: 22px;\n");
      out.write("      }\n");
      out.write("      .table-title .add-new {\n");
      out.write("        float: right;\n");
      out.write("        height: 30px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        font-size: 12px;\n");
      out.write("        text-shadow: none;\n");
      out.write("        min-width: 100px;\n");
      out.write("        border-radius: 50px;\n");
      out.write("        line-height: 13px;\n");
      out.write("      }\n");
      out.write("      .table-title .add-new i {\n");
      out.write("        margin-right: 4px;\n");
      out.write("      }\n");
      out.write("      table.table {\n");
      out.write("        table-layout: fixed;\n");
      out.write("      }\n");
      out.write("      table.table tr th, table.table tr td {\n");
      out.write("        border-color: #e9e9e9;\n");
      out.write("      }\n");
      out.write("      table.table th i {\n");
      out.write("        font-size: 13px;\n");
      out.write("        margin: 0 5px;\n");
      out.write("        cursor: pointer;\n");
      out.write("      }\n");
      out.write("      table.table th:last-child {\n");
      out.write("        width: 100px;\n");
      out.write("      }\n");
      out.write("      table.table td a {\n");
      out.write("        cursor: pointer;\n");
      out.write("        display: inline-block;\n");
      out.write("        margin: 0 5px;\n");
      out.write("        min-width: 24px;\n");
      out.write("      }    \n");
      out.write("      table.table td a.add {\n");
      out.write("        color: #27C46B;\n");
      out.write("      }\n");
      out.write("      table.table td a.edit {\n");
      out.write("        color: #FFC107;\n");
      out.write("      }\n");
      out.write("      table.table td a.delete {\n");
      out.write("        color: #E34724;\n");
      out.write("      }\n");
      out.write("      table.table td i {\n");
      out.write("        font-size: 19px;\n");
      out.write("      }\n");
      out.write("      table.table td a.add i {\n");
      out.write("        font-size: 24px;\n");
      out.write("        margin-right: -1px;\n");
      out.write("        position: relative;\n");
      out.write("        top: 3px;\n");
      out.write("      }    \n");
      out.write("      table.table .form-control {\n");
      out.write("        height: 32px;\n");
      out.write("        line-height: 32px;\n");
      out.write("        box-shadow: none;\n");
      out.write("        border-radius: 2px;\n");
      out.write("      }\n");
      out.write("      table.table .form-control.error {\n");
      out.write("        border-color: #f50000;\n");
      out.write("      }\n");
      out.write("      table.table td .add {\n");
      out.write("        display: none;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("    <title>Clientes / OPTIMANAGER</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"table-wrapper\">\n");
      out.write("        <div class=\"table-title\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-8\"><h2>LISTADO CLIENTES</h2></div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("              <input type=\"button\" class=\"btn btn-danger add-new\" onclick=\"location.href = 'menu.jsp'\" value=\"Volver al menú\" name=\"volver\">\n");
      out.write("              <button type=\"button\" class=\"btn btn-info add-new\"><i class=\"fa fa-plus\"></i> Nuevo Cliente </button>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <table class=\"table table-bordered\">\n");
      out.write("          <thead>\n");
      out.write("            <tr>\n");
      out.write("              <th>Codigo Cliente</th>\n");
      out.write("              <th>Nombre</th>\n");
      out.write("              <th>Teléfono</th>\n");
      out.write("              <th>Graduación</th>\n");
      out.write("              <th>Acciones</th>\n");
      out.write("            </tr>\n");
      out.write("          </thead>\n");
      out.write("          <tbody>\n");
      out.write("              ");
 
                while (rs.next()) {
                  out.print("<tr>");
                  out.print("<td>" + rs.getInt("CodCliente") + "</td>");
                  out.print("<td>" + rs.getString("NomCliente") + "</td>");
                  out.print("<td>" + rs.getString("TelfCliente") + "</td>");
                  out.print("<td>" + rs.getString("Graduacion") + "</td>");
                  out.print("<td> <a class=\'add\' title=\'Add\' data-toggle=\'tooltip\'><i class=\'material-icons\'>&#xE03B;</i></a>");
                  out.print("<a class=\'edit\' title=\'Edit\' data-toggle=\'tooltip\'><i class=\'material-icons\'>&#xE254;</i></a>");
                  out.print("<a class=\'delete\' title=\'Delete\' data-toggle=\'tooltip\'><i class=\'material-icons\'>&#xE872;</i></a> </td>");
                  out.print("</tr>");
                }
                
              
      out.write("\n");
      out.write("             \n");
      out.write("\n");
      out.write("          </tbody>\n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("    </div>     \n");
      out.write("  </body>\n");
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
