<%-- 
    Document   : newusuario
    Created on : 09-mar-2020, 9:42:23
    Author     : gonza
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  
  String usuario;
  String contrasena;

  usuario = request.getParameter("usuario");
  contrasena = request.getParameter("contrasena");

  Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");
  
  Statement st = connection.createStatement();
  ResultSet rs = st.executeQuery("SELECT UsuOptica FROM optica");
  ArrayList <String> users = new ArrayList ();
  while (rs.next()) {
    String userName = rs.getString("UsuOptica");
    users.add(userName);
  }
  
  if (users.contains(usuario)){
    response.sendRedirect("crearusuario.jsp");
  } else {
    st.execute("INSERT INTO `optica`(UsuOptica,PassOptica) VALUE ('" + usuario + "','" + contrasena + "')");
      response.sendRedirect("index.jsp");
  }

%>