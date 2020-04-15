
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager
          .getConnection("jdbc:mysql://localhost:3306/optimanager", "root", "");

 Statement st= connection.createStatement();
 ResultSet rss = st.executeQuery("SELECT CodOptica FROM optica WHERE UsuOptica = '" + session.getAttribute("usuario") + "'");
 int codOptica = 0;
 if (rss.next()) {
   codOptica = rss.getInt(1);
 } 
 
 ResultSet rs = st.executeQuery("SELECT * FROM cliente WHERE optica_CodOptica = " + codOptica);
 

%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
      body {
        padding-top:4.2rem;
        padding-bottom:4.2rem;
        background:rgba(0, 0, 0, 0.76);
      }
      a {
        text-decoration: none !important;
      }
      .table-wrapper {
        position: relative;
        display: -ms-flexbox;
        display: flex;
        padding: 1rem;
        -ms-flex-direction: column;
        flex-direction: column;
        width: 100%;
        pointer-events: auto;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid rgba(0,0,0,.2);
        border-radius: 1.1rem;
        outline: 0;
        max-width: 1080px;
        margin: 0 auto;
      }
      .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
      }
      .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
      }
      .table-title .add-new {
        float: right;
        height: 30px;
        font-weight: bold;
        font-size: 12px;
        text-shadow: none;
        min-width: 100px;
        border-radius: 50px;
        line-height: 13px;
      }
      .table-title .add-new i {
        margin-right: 4px;
      }
      table.table {
        table-layout: fixed;
      }
      table.table tr th, table.table tr td {
        border-color: #e9e9e9;
      }
      table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
      }
      table.table th:last-child {
        width: 100px;
      }
      table.table td a {
        cursor: pointer;
        display: inline-block;
        margin: 0 5px;
        min-width: 24px;
      }    
      table.table td a.add {
        color: #27C46B;
      }
      table.table td a.edit {
        color: #FFC107;
      }
      table.table td a.delete {
        color: #E34724;
      }
      table.table td i {
        font-size: 19px;
      }
      table.table td a.add i {
        font-size: 24px;
        margin-right: -1px;
        position: relative;
        top: 3px;
      }    
      table.table .form-control {
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
      }
      table.table .form-control.error {
        border-color: #f50000;
      }
      table.table td .add {
        display: none;
      }
    </style>
    <title>Clientes / OPTIMANAGER</title>
  </head>
  <body>
    <div class="container">
      <div class="table-wrapper">
        <div class="table-title">
          <div class="row">
            <div class="col-sm-8"><h2>LISTADO CLIENTES</h2></div>
            <div class="col-sm-4">
              <input type="button" class="btn btn-danger add-new" onclick="location.href = 'menu.jsp'" value="Volver al menú" name="volver">
              <button type="button" class="btn btn-info add-new" onclick="location.href = 'addcliente.jsp'"><i class="fa fa-plus"></i> Nuevo Cliente </button>
            </div>
          </div>
        </div>
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Codigo Cliente</th>
              <th>Nombre</th>
              <th>Teléfono</th>
              <th>Graduación</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
              <% 
                while (rs.next()) {
                  out.print("<tr>");
                  out.print("<td>" + rs.getInt("CodCliente") + "</td>");
                  out.print("<td>" + rs.getString("NomCliente") + "</td>");
                  out.print("<td>" + rs.getString("TelfCliente") + "</td>");
                  out.print("<td>" + rs.getString("Graduacion") + "</td>");
                  out.print("<td> <a class=\'add\' title=\'Add\' data-toggle=\'tooltip\'><i class=\'material-icons\'>&#xE03B;</i></a>");
                  out.print("<a class=\'edit\' title=\'Edit\' data-toggle=\'tooltip\' href=\'editcliente.jsp?CodCliente=" + rs.getInt("CodCliente") + "\'><i class=\'material-icons\'>&#xE254;</i></a>");
                  out.print("<a class=\'delete\' title=\'Delete\' data-toggle=\'tooltip\' href= \'borrarcliente.jsp?CodCliente=" + rs.getInt("CodCliente") + "\'><i class=\'material-icons\'>&#xE872;</i></a> </td>");
                  out.print("</tr>");
                }
                
              %>
             

          </tbody>
        </table>
      </div>
    </div>     
  </body>
</html>
