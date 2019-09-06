<%-- 
    Document   : crearDonante
    Created on : 31/08/2019, 08:51:36 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%> 
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Crear Fundacion</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        body {
            background: #2B2D42;
            margin: 0;
            font-family: 'Montserrat';
            font-size: 1em;
            line-height: 1.4;
            height: 100%;

            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .form {
            width: 650px;
            height: 850px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 40px -10px #7a7878;
            margin: 0 auto;
            padding: 20px 30px;
            max-width: calc(100vw - 40px);
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
            position: inherit;
        }

        .tituloFormulario {
            margin: 10px 0;
            padding-bottom: 10px;
            color: #8D99AE;
            border-bottom: 3px solid #8D99AE
        }

        .inputFormulario {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            background: none;
            outline: none;
            resize: none;
            border: 0;
            font-family: 'Montserrat', sans-serif;
            transition: all .3s;
            border-bottom: 2px solid #bebed2
        }

        .inputFormulario:focus {
            border-bottom: 2px solid #8D99AE
        }

        .contenedorInput:before {
            content: attr(mensajito);
            display: block;
            margin: 28px 0 0;
            font-size: 14px;
            color: #8D99AE
        }

        .botonCrear {
            float: right;
            padding: 8px 12px;
            margin: 8px 0 0;
            font-family: 'Montserrat', sans-serif;
            border: 2px solid #8D99AE;
            background: 0;
            color: #5a5a6e;
            cursor: pointer;
            transition: all .3s
        }

        .botonCrear:hover {
            background: #8D99AE;
            color: #fff
        }

        .header {

            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            height: 66px;

            line-height: 66px;
            color: #fff;

            background-color: #8D99AE;
        }

        .header__logo {
            font-weight: 700;
            padding: 0 25px;
            float: left;
        }

        .menu {
            float: right;
        }

        .menu a {
            padding: 0 10px;
        }

        .menu a:hover {
            color: #c5cae9;
        }

        .content {
            padding: 25px 45px;
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
                <a href="./dashboard" class="link">
                    <span>Home</span>
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
                <div id="newFundation" class="form">
                    <h2 class="tituloFormulario">Crear Fundacion</h2>
                    <!-- <%--<p class="contenedorInput" type="text" mensajito="Nombre:"><form:input cssClass="inputFormulario" ></input></p>--%> -->
                    <p class="contenedorInput" type="text" mensajito="Nombre:">
                        <input class="inputFormulario" placeholder="Nombre" id="nombre" name="nombre"></input>
                    </p>
                    <p class="contenedorInput" type="email" mensajito="Email:">
                        <input class="inputFormulario" placeholder="Email" name="email" id="email"></input>
                    </p>
                    <p class="contenedorInput" type="password" mensajito="contraseña:">
                        <input class="inputFormulario" placeholder="contraseña" name="contraseña"
                            id="contraseña"></input>
                    </p>
                    <p class="contenedorInput" type="text" mensajito="Nombre Contacto:">
                        <input class="inputFormulario" placeholder="Nombre del contacto" name="nombreContacto"
                            id="nombreContacto"></input>
                    </p>
                    <p class="contenedorInput" type="text" mensajito="Telefono Contacto:">
                        <input class="inputFormulario" placeholder="Telefono del contacto" name="telefono"
                            id="telefono"></input>
                    </p>
                    <p class="contenedorInput" type="text" mensajito="Descripcion:">
                        <input class="inputFormulario" placeholder="Descripcion del producto" name="descripcion"
                            id="descripcion"></input>
                    </p>
                    <p class="contenedorInput" type="text" mensajito="Direccion:">
                        <input class="inputFormulario" placeholder="Cra 1 No. 33-12" name="direccion"
                            id="direccion"></input>
                    </p>
                    <p class="contenedorInput" type="text" mensajito="Ciudad:">
                        <input class="inputFormulario" placeholder="Ciudad" name="ciudad" id="ciudad"></input>
                    </p>
                    <button class="botonCrear" onclick="formPost()">Crear fundacion</button>
                </div>
<!--                 <form:form cssClass="form" modelAttribute="newDonante" action="/addDonante" method="post">
                    <form:input cssClass="inputFormulario"></form:input>
                    <form:input path="email" />
                    <form:input path="direccion" />
                    <form:input path="nombreContacto" />
                    <form:input path="descripcion" />
                    <form:input path="ciudad" />
                    <form:input path="contraseña" />
                    <form:input path="telefono" />
                    <button type="submit">Add</button>
                </form:form> -->
            </div>
        </div>
    </div>


</body>
<script>
    async function formPost() {
        const divContenedor = document.getElementById('alertForm')
        const nombre = document.getElementById('nombre').value
        const email = document.getElementById('email').value
        const contraseña = document.getElementById('contraseña').value
        const nombreContacto = document.getElementById('nombreContacto').value
        const descripcion = document.getElementById('descripcion').value
        const direccion = document.getElementById('direccion').value
        const telefono = document.getElementById('telefono').value
        const ciudad = document.getElementById('ciudad').value
        try {
            const response = await fetch('http://localhost:3031/api/fundacion/add', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(
                    {
                        "nombre": nombre,
                        "email": email,
                        "contraseña": contraseña,
                        "nombreContacto": nombreContacto,
                        "direccion": direccion,
                        "ciudad": ciudad,
                        "descripcion": descripcion,
                        "telefono": telefono
                    })
            });
            const data = await response.json()
            console.log(data)
            if (data.error) {
                divContenedor.innerHTML += `          
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                        <strong>Error!</strong> No se pudo agregar la fundacion.
                    </div>`
            } else {
                divContenedor.innerHTML += `          
                    <div class="alert" style="background-color: #4CAF50">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                        <strong>Completado!</strong> Fundacion Agregada.
                    </div>`
                divContenedor.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
            /*           var daString="<div id=\'block\' class=\'block\'><div class=\'block-2\'></div></div>";
                      var daParent=document.getElementById("the ID of whatever your parent is goes in here");
                      daParent.innerHTML=daString; */

        } catch (error) {
            console.log(error)
        }
    }
</script>

</html>