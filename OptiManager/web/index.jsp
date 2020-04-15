
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

  </style>


  <title>Acceso / OPTIMANAGER</title>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-md-5 mx-auto">
      <div id="primera">
        <div class="formulario form">
          <div class="logo mb-3">
            <div class="col-md-12 text-center">
              <h1>OptiManager</h1>
            </div>
          </div>
          <form action="login.jsp" method="post" name="login">
            <div class="form-group">
              <label for="inlineFormInputGroup">Usuario</label>
              <input type="text" class="form-control" name="usuario" placeholder="Introduzca Usuario" required>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Contraseña</label>
              <input type="password" name="contrasena" class="form-control" placeholder="Introduzca Contraseña" required>
            </div>
            <div class="col-md-12 text-center ">
              <button type="submit" class=" btn btn-block mybtn btn-info tx-tfm">Acceder</button>
            </div>
            <div class="form-group">
              <p class="text-center">No tengo cuenta. <a href="crearusuario.jsp">Crear Usuario</a></p>
            </div>

          </form>

</body>
</html>
