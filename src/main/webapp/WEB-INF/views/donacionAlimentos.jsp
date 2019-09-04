<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <title>Document</title>
  <style>
    html,
    body {
      margin: 0;
      padding: 0;
      font-family: 'Montserrat';
      overflow-y: hidden;
    }
    h2 {
      background-color: #533ce1;
      border-radius: 5px;
      padding: 5px;
      display: inline;
      color: white;
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
      padding: 15px;
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
          <a href="./dashboard/alimentos">
            <span>Alimentos</span>
          </a>
          <a href="./dashboard/tecnologia">
            <span>Tecnologia</span>
          </a>
          <a href="./dashboard/hogar">
              <span>Hogar</span>
          </a>
          <a href="./dashboard/ropa">
            <span>Ropa</span>
          </a>
          <a href="./dashboard/escolar">
            <span>Escolar</span>
          </a>
          <a href="./dashboard/utiles">
            <span>Utiles</span>
          </a>
          <a href="./dashboard/aseo">
            <span>Aseo</span>
          </a>
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
        <h1 style="margin-bottom: 20px;font-weight: 700;">Ultimas Donaciones</h1>
        <h2>Alimentos</h2>
        <div class="card mb-3" style="">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="https://www.hola.com/imagenes/estar-bien/20190402139945/alimentos-magnesio-fatiga-depresion/0-664-919/alimentos-magnesios-m.jpg"
                class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title"><strong>Mercado</strong></h5>
                <p class="card-text">Mercado de verduras</p>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Donante: Juan</li>
                  <li class="list-group-item">Ciudad: Bogota</li>
                  <li class="list-group-item">Estado: Disponible</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="card-link">Apartar Donacion</a>
                </div>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
          </div>
        </div>

        <div class="card mb-3" style="">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="https://i.pinimg.com/originals/48/5c/72/485c72d15b6af8f87e842560736414d4.jpg"
                class="card-img"
                alt="..." style="height: 100%">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title"><strong>Mercado de Frutas</strong></h5>
                <p class="card-text">Frutas frescas</p>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Donante: Juan</li>
                  <li class="list-group-item">Ciudad: Bogota</li>
                  <li class="list-group-item">Estado: Disponible</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="card-link">Apartar Donacion</a>
                </div>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>