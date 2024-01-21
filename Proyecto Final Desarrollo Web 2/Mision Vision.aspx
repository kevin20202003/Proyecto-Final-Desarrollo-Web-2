<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mision Vision.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Mision_Vision" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Misión y Visión</title>
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
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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

        .logo {
            display: flex;
            align-items: center;
            justify-content: center;
        }

            .logo img {
                max-width: 100%;
                max-height: 100%;
            }


        h1 {
            font-size: 40px;
        }

        p {
            font-size: 20px;
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
        <div class="logo">
            <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
        </div>
        <h1>Misión</h1>
        <p>
            La misión de nuestra página es brindar un sistema de agendamiento de turnos vehiculares y revisión vehicular eficiente y fácil de usar. Nuestro objetivo es facilitar el proceso de agendar turnos y realizar la revisión vehicular, ofreciendo un servicio rápido y confiable a nuestros usuarios.
        </p>
        <h1>Visión</h1>
        <p>
            Nuestra visión es convertirnos en la plataforma líder en agendamiento de turnos vehiculares y revisión vehicular, brindando la mejor experiencia para nuestros usuarios. Buscamos constantemente mejorar y expandir nuestros servicios, adaptándonos a las necesidades cambiantes del mercado y ofreciendo soluciones innovadoras en el sector automotriz.
        </p>
    </form>
</body>
</html>
