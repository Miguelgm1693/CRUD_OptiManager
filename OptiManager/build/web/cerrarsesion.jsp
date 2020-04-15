<%-- 
    Document   : cerrarsesion
    Created on : 09-mar-2020, 9:55:35
    Author     : gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  session.invalidate();
  
  response.sendRedirect("index.jsp");
%>
