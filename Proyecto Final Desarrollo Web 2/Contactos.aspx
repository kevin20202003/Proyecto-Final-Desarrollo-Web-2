<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Creadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Contactos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .navbar {
            background-color: #ff0000;
            padding: 10px;
            display: flex;
            justify-content: space-between;
        }

        .navbar-item {
            position: relative;
            display: inline-block;
            margin-right: 10px;
        }

            .navbar-item a {
                color: #ffffff;
                text-decoration: none;
                padding: 5px;
            }

        .navbar-item-dropdown {
            display: none;
            position: absolute;
            background-color: #ffffff;
            min-width: 200px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .navbar-item:hover .navbar-item-dropdown {
            display: block;
        }

        .navbar-item-dropdown a {
            display: block;
            padding: 5px;
            color: #000000;
        }

            .navbar-item-dropdown a:hover {
                background-color: #f0f0f0;
            }

        .title {
            font-size: 45px;
            font-weight: bold;
            margin-top: 20px;
        }

        .creator-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .creator-image {
            position: absolute;
            top: 10px;
            left: 10px;
            margin: 120px;
            float: left;
            width: 300px; /* Nuevo ancho del logo */
            height: 250px; /* Nuevo alto del logo */
            margin-right: 10px;
        }

            .creator-image img {
                width: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
                height: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
                object-fit: contain; /* Ajusta la imagen dentro del tamaño del contenedor */
            }

        .creator-image2 {
            position: absolute;
            top: 10px;
            left: -390px;
            margin: 500px;
            float: left;
            width: 300px; /* Nuevo ancho del logo */
            height: 250px; /* Nuevo alto del logo */
            margin-right: 10px;
        }

            .creator-image2 img {
                width: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
                height: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
                object-fit: contain; /* Ajusta la imagen dentro del tamaño del contenedor */
            }

        .creator-info {
            text-align: left;
        }

            .creator-info p {
                margin: 5px 0;
            }
            .striped {
  background: linear-gradient(to bottom left, cyan 50%, palegoldenrod 50%);
}
    </style>
</head>
<body class="striped">
    <form id="form1" runat="server">
       <div class="navbar">
            <div class="navbar-item">
                <a href="#">Inicio</a>
                <div class="navbar-item-dropdown">
                    <a href="Comentar.aspx">Comentar</a>
                    <a href="Mision Vision.aspx">Informacion de la empresa</a>
                    <a href="Prsentacion.aspx">Cerrar sesion</a>
                </div>
            </div>
            <div class="navbar-item">
                <a href="#">Opciones</a>
                <div class="navbar-item-dropdown">
                    <a href="Ver autos.aspx">Vistamiento de vehiculos</a>
                    <a href="Cita.aspx">Agendamiento de turnos vehicular</a>
                </div>
            </div>
            <div class="navbar-item">
                <a href="#">Contactos</a>
                <div class="navbar-item-dropdown">
                    <a href="Contactos.aspx">Creadores de la pagina</a>
                    <a href="Sucursales.aspx">Proveedores</a>
                </div>
            </div>
        </div>
        <h1 class="title">Creadores</h1>
        <div class="creator-container">
            <div class="creator-info">
                <div class="creator-image">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Persona.png" />
                </div>

                <p>Nombres Completos: Kevin Estiv Chala Lara</p>
                <br />
                <p>Teléfono: 0969494951</p>
                <br />
                <p>Correo: ks.chala@itq.edu.ec</p>
                <br />
                <p>Rol: Administrador</p>
                <br />
                <p>Profesión: Desarrollador</p>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="creator-container">
            <div class="creator-info">
                <div class="creator-image2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/Persona.png" />
                </div>
                <p>Nombres Completos: Jonathan Javier Toca Muñoz</p>
                <br />
                <p>Teléfono: 0959681689</p>
                <br />
                <p>Correo: jj.toca@itq.edu.ec</p>
                <br />
                <p>Rol: Administrador</p>
                <br />
                <p>Profesión: Desarrollador</p>
            </div>
        </div>
    </form>
</body>
</html>
