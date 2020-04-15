
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  int codigo;
  String referencia;
  String tipo;
 
  referencia = request.getParameter("referencia");
  tipo = request.getParameter("tipo");

  Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");
  
  
  Statement st = connection.createStatement();
  
   ResultSet rs = st.executeQuery("SELECT CodOptica FROM optica WHERE UsuOptica = '" + session.getAttribute("usuario") + "'");
      
      int CodOptica = 0;
      if (rs.next()) {
          CodOptica = rs.getInt(1);
        }
  
   st.execute("INSERT INTO `producto`(RefProducto, TipProducto, optica_CodOptica) VALUE ('" + referencia + "','" + tipo + "', " + CodOptica + ")");
     response.sendRedirect("tablaproductos.jsp");
%>
