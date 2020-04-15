
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=ç, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="Stylesheet" href="./cs/cs.css">
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

    </style>
    <title> Añadir Cliente / OPTIMANAGER</title>

  </head>
  <body>

    <div class="container">
      <div class="row">
        <div class="col-md-5 mx-auto">
          <div id="second">
            <div class="formulario form ">
              <div class="logo mb-3">
                <div class="col-md-12 text-center">
                  <h1>Añadir Cliente</h1>
                </div>
              </div>

              <form method="POST" action="anadircliente.jsp" name="crearproducto">
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Nombre y Apellidos</label>
                  <input type="text" name="nombre" class="form-control"
                         placeholder="Introduzca Nombre y apellidos" required>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Teléfono de contacto</label>
                  <input type="text" name="telefono" class="form-control"
                         placeholder="Introduzca Teléfono" required>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Graduación</label>
                  <input type="text" name="graduacion" class="form-control"
                         placeholder="Introduzca Graduación" required>
                </div>


                <div class="col-md-12 text-center mb-3">
                  <button type="submit" class=" btn btn-block mybtn btn-info tx-tfm">Añadir</button>
                </div>
                <div class="col-md-12 ">
                  <div class="form-group">
                    <p class="text-center"><a href="tablaclientes.jsp" id="signin">Volver Atrás</a></p>
                  </div>
                </div>
              </form>

            </div>
          </div>
        </div>

        </body>
        </html>
