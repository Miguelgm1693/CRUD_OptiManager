
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
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

  HashMap<String, String> userList = new HashMap();
  Statement st = connection.createStatement();
  ResultSet rs = st.executeQuery("SELECT * FROM optica");
  
  while (rs.next()) {
    
    String userName = rs.getString("UsuOptica");
    String password = rs.getString("PassOptica");

    userList.put(userName, password);

  }

  if (userList.containsKey(usuario) && (userList.get(usuario).equals(contrasena))) {
    session.setAttribute("usuario", usuario);
    response.sendRedirect("menu.jsp");

  } else {
    response.sendRedirect("index.jsp");
  }

%> 

