
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  if (session.getAttribute("usuario")== null) {
  response.sendRedirect("index.jsp");
  }
%>
<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./cs/cs.css">
    <link rel="stylesheet" href="style.css" type="text/css"/>

    <style>
      body {
        padding-top:4.2rem;
        padding-bottom:4.2rem;
        background:rgba(0, 0, 0, 0.76);
      }
      a {
        text-decoration: none !important;
      }

      .formulario {
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
        max-width: 500px;
      }
      
      .card {
        margin: 0 auto;
        
      }

    </style>


    <title>Menú / OPTIMANAGER</title>
  </head>
  <body>

    <div class="container">
      <div class="row">
        <div class="col-md-5 mx-auto">
          <div id="primera">
            <div class="formulario form">
              <div class="logo mb-3">
                <div class="col-md-12 text-center">
                  <h1>MENÚ</h1>
                  
                  <%
                    out.print("HAS INICIADO SESIÓN CON " + session.getAttribute("usuario"));
                  %>
                </div>  
              </div>

             <div class="col-md-12 col-sm-12">
              <div class="card" style="width: 13rem;">
                <img src="./img/iconousuario.png" class="card-img-top">
                <div class="card-body">
                  <a href="tablaclientes.jsp" class="btn btn-secondary btn-block tx-tfm"><b>Listado Clientes</b></a>
                </div>
              </div>
             </div>
             <div class="col-md-12 col-sm-12">
              <div class="card" style="width: 13rem;">
                <img src="./img/iconogafas.png" class="card-img-top">
                <div class="card-body">
                  <a href="tablaproductos.jsp" class="btn btn-warning btn-block tx-tfm"><b>Listado Productos</b></a>
                </div>
              </div>
             </div>
              
              
             
                <br>
                <a class="text-center" href="cerrarsesion.jsp">Cerrar Sesión</a></p>
              

              </form>

              </body>
              </html>

