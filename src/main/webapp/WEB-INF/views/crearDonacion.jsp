
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <title>Crear Donacion</title>
  <style>
    html,
    body {
      margin: 0;
      padding: 0;
      font-family: 'Montserrat';
      overflow-y: hidden;
    }

    .container-app {
      display: grid;
      grid-template-columns: 220px 1fr;
      grid-template-rows: 100vh;
    }

    .sidebar {
      background: linear-gradient(to bottom, #1F77D0 0%, #533ce1 100%);
      color: white;
      background-size: 150% 150%;
    }

    .main {
      background-color: #f5f5f5;
      overflow-y: scroll;
    }

    .logo p {
      font-size: 25px;
      text-align: center;
      font-weight: 700;
      margin-top: 15px;
    }

    .list-sidebar {
      display: flex;
      flex-direction: column;
    }

    .list-sidebar a {
      /* border: 1px solid red; */
      margin: 5px;
      text-align: center;
      font-weight: 700;
      background-color: rgba(255, 255, 255, .09);
      padding: 15px 5px;
      text-transform: uppercase;
      border-radius: 5px;
      color: white;
    }

    .navbar {
      padding: 20px;
      background-color: white;
      display: flex;
      justify-content: flex-end;
    }

    .navbar a {
      color: gray;
      margin: 0 5px;
      padding: 5px;
      padding-bottom: 3px;
      font-weight: bold;
      /* border-bottom: 1px solid #1F77D0; */
    }

    .content {
      padding: 25px 45px;
    }

    .link:hover {
      text-decoration: none;
    }
  </style>
</head>

<body>
  <div class="container-app">
    <div class="sidebar">
      <div>
        <div class="logo">
          <p>Donare</p>
        </div>
        <hr />
        <div class="list-sidebar">
          <a href="">
            <span>Alimentos</span>
          </a>
          <a href="">
            <span>Tecnologia</span>
          </a>
          <a href="">
            <span>Hogar</span>
          </a>
          <a href="">
            <span>Ropa</span>
          </a>
          <a href="">
            <span>Escolar</span>
          </a>
          <a href="">
            <span>Utiles</span>
          </a>
          <a href="">
            <span>Aseo</span>
          </a>
        </div>
      </div>
    </div>
    <div class="main">
      <div class="navbar">
        <a href="" class="link">
          <span>Home</span>
        </a>
        <a href="" class="link">
          <span>Estado Donaciones</span>
        </a>
        <a href="" class="link">
          <span>Cerrar Sesion</span>
        </a>
      </div>
      <div class="content">
        <h1 style="margin-bottom: 20px;font-weight: 700;">Datos de la donacion</h1>
        <div class="row">
          <div class="col-lg-6">
            <form>
              <div class="form-group">
                <label for="exampleFormControlInput1">Item(s) de la Donacion</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="ej: ropa,comida">
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Descripcion de los items </label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Datos de Contacto</label>
                <input type="text" style="margin-bottom: 5px" class="form-control" id="exampleFormControlInput1" placeholder="Nombre Completo">
                <input type="text" style="margin-bottom: 5px"  class="form-control" id="exampleFormControlInput1"
                  placeholder="Telefono de Contacto">
                <input type="text" style="margin-bottom: 5px"  class="form-control" id="exampleFormControlInput1"
                  placeholder="Direcccion">
                <input type="text" style="margin-bottom: 5px"  class="form-control" id="exampleFormControlInput1"
                  placeholder="Correo">
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                  Los items de la donacion son nuevos?
                </label>
              </div>
            </form>
          </div>
          <div class="col-lg-6">
            <p>Sube una imagen de la donacion</p>
            <div style="text-align: center">
              <img
                src="https://h5p.org/sites/default/files/styles/medium-logo/public/logos/drag-and-drop-icon.png?itok=0dFV3ej6"
                alt="">
            </div>
            <div class="custom-file">
              <input type="file" class="custom-file-input" id="customFile">
              <label class="custom-file-label" for="customFile">Escoge un archivo</label>
            </div>
            <div style="text-align: center;margin-top: 20px;">
              <button type="button" class="btn btn-primary">Crear Donacion</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>