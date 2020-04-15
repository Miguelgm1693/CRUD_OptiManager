
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String graduacion = request.getParameter("graduacion");
    
  
      Class.forName("com.mysql.jdbc.Driver");
      Connection connection = DriverManager
              .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");

      Statement st = connection.createStatement();
      
      ResultSet rs = st.executeQuery("SELECT CodOptica FROM optica WHERE UsuOptica = '" + session.getAttribute("usuario") + "'");
      
      int CodOptica = 0;
      if (rs.next()) {
          CodOptica = rs.getInt(1);
        }

      st.execute("INSERT INTO cliente (NomCliente, TelfCliente, Graduacion, optica_CodOptica) VALUE('" + nombre + "' , '" + telefono + "', '" + graduacion + "', " + CodOptica + ")");
      response.sendRedirect("tablaclientes.jsp");
    %>	