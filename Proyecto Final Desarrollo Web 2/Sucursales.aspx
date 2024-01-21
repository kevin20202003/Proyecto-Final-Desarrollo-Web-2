<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sucursales.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Sucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sucursales</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
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

        .sucursal-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .sucursal {
            margin: 20px;
            text-align: center;
        }

        .sucursal-image {
            width: 200px;
            height: 200px;
            object-fit: cover;
        }

        .sucursal-info {
            margin-top: 10px;
        }
        .simple-linear {
  background: linear-gradient(blue, pink);
}

    </style>
</head>
<body class="simple-linear">
    
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

        <div class="sucursal-container">
            <div class="sucursal">
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/img/unnamed.jpg" CssClass="sucursal-image" />
               
                <div class="sucursal-info">
                    <h3>Autocor</h3>
                    <p>Río Coca E5 255 Quito 170138, Quito 170138, Ecuador </p>
                </div>
            </div>
            <div class="sucursal">
               <asp:Image ID="Image3" runat="server" ImageUrl="~/img/s2.jpg" CssClass="sucursal-image" />
                <div class="sucursal-info">
                    <h3>Jungheinrich Quito</h3>
                    <p>De las Avellanas 812, Quito 170144, Ecuador</p>
                </div>
            </div>
            <div class="sucursal">
               <asp:Image ID="Image4" runat="server" ImageUrl="~/img/s3.jpg" CssClass="sucursal-image" />
                <div class="sucursal-info">
                    <h3>Hyunmotor</h3>
                    <p>Av. 10 de Agosto y Mariana de Jesus, Quito,, Quito, Pichincha Province 593</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
