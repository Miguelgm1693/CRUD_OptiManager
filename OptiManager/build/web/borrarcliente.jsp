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
  
  st.execute("DELETE FROM cliente WHERE CodCliente=" + request.getParameter("CodCliente"));
  response.sendRedirect("tablaclientes.jsp");
%>	

