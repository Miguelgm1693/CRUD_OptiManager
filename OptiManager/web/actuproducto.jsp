<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");
  
  Statement st = connection.createStatement();
  
  String referencia = request.getParameter("referencia");
  String tipo = request.getParameter("tipo");
  
  Integer CodProducto = Integer.parseInt(request.getParameter("CodProducto"));
    
  st.execute("UPDATE producto SET RefProducto = '" + referencia + "' , TipProducto = '" + tipo + "' WHERE CodProducto = " + CodProducto);
  response.sendRedirect("tablaproductos.jsp");
%>	