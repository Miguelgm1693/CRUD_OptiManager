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
  
  String nombre = request.getParameter("nombre");
  String telefono = request.getParameter("telefono");
  String graduacion = request.getParameter("graduacion");
  Integer CodCliente = Integer.parseInt(request.getParameter("CodCliente"));
  
  System.out.println(CodCliente);
  st.execute("UPDATE cliente SET NomCliente = '" + nombre + "' , TelfCliente = '" + telefono + "' , Graduacion = '" + graduacion + "' WHERE CodCliente = " + CodCliente );
  response.sendRedirect("tablaclientes.jsp");
%>	
