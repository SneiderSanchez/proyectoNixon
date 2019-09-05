
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

        .alert {
            padding: 20px;
            background-color: #f44336;
            color: white;
        }

        .closebtn {
            margin-left: 15px;
            color: white;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .closebtn:hover {
            color: black;
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
                <a href="./addDonacion" class="link">
                    <span>Crear Donacion</span>
                </a>
                <a href="./ultimasDonaciones" class="link">
                    <span>Estado Donaciones</span>
                </a>
                <a href="./" class="link">
                    <span>Cerrar Sesion</span>
                </a>
            </div>
            <div class="content">
                <div id="alertForm">

                </div>
                <h1 style="margin-bottom: 20px;font-weight: 700;">Datos de la donacion</h1>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="objeto">Nombre del Objeto</label>
                            <input type="text" class="form-control" id="objeto" placeholder="ej: ropa,comida" value=""
                                name="objeto">
                        </div>
                        <div class="form-group">
                            <label for="descripcion">Descripcion del objeto </label>
                            <textarea class="form-control" value="" id="descripcion" rows="3"
                                name="descripcion"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="estado">Estado del objeto </label>
                            <input type="text" class="form-control" id="estado" value="" name="estado"
                                placeholder="ej: bueno, regular, roto">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Datos extra</label>
                            <input type="text" style="margin-bottom: 5px" class="form-control" id="donante"
                                name="donante" value="" placeholder="Nombre Donante">
                            <input type="text" style="margin-bottom: 5px" class="form-control" id="ciudad" name="ciudad"
                                value="" placeholder="Ciudad">
                            <input type="text" style="margin-bottom: 5px" class="form-control" id="direccion"
                                name="direccion" value="" placeholder="Direccion de recogida">
                        </div>


                    </div>
                    <div class="col-lg-6">
                        <p>Sube una imagen de la donacion</p>
                        <div style="text-align: center">
                            <img src="https://h5p.org/sites/default/files/styles/medium-logo/public/logos/drag-and-drop-icon.png?itok=0dFV3ej6"
                                alt="">
                        </div>
                        <div class="form-check">
                            <label for="image">Link de la imagen</label>
                            <input type="text" class="form-control" id="image" placeholder="www.imagen.jpg" value="">
                        </div>
                        <div style="text-align: center;margin-top: 20px;">
                            <button type="button" class="btn btn-primary" onclick="formPost()">Crear Donacion</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        async function formPost() {
            const divContenedor = document.getElementById('alertForm')
            const objeto = document.getElementById('objeto').value
            const donante = document.getElementById('donante').value
            const estado = document.getElementById('estado').value
            const descripcion = document.getElementById('descripcion').value
            const direccion = document.getElementById('direccion').value
            const ciudad = document.getElementById('ciudad').value
            const image = document.getElementById('image').value
            try {
                const response = await fetch('http://localhost:3031/api/donacion/add', {
                    method: 'POST',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(
                        {
                            "objeto": objeto,
                            "donante": donante,
                            "estado": estado,
                            "descripcion": descripcion,
                            "direccion": direccion,
                            "ciudad": ciudad,
                            "image": image
                        })
                });
                const data = await response.json()
                console.log(data)
                if (data.error) {
                    divContenedor.innerHTML += `          
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                        <strong>Error!</strong> No se pudo agregar la donacion.
                    </div>`
                } else {
                    divContenedor.innerHTML += `          
                    <div class="alert" style="background-color: #4CAF50">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                        <strong>Completado!</strong> Donacion Agregada.
                    </div>`
                }
                /*           var daString="<div id=\'block\' class=\'block\'><div class=\'block-2\'></div></div>";
                          var daParent=document.getElementById("the ID of whatever your parent is goes in here");
                          daParent.innerHTML=daString; */

            } catch (error) {
                console.log(error)
            }
        }
    </script>
</body>

</html>