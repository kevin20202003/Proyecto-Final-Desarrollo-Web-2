<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prsentacion.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Prsentacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Bienvenido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #ffffff;
            
            background-size: cover;
            background-position: center;
        }
        
        .container {
            width: 600px;
            margin: 100px auto;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            overflow: hidden; /* Para ocultar el contenido que sobresale */
        }
        
        h1 {
            font-size: 24px;
            margin-top: 0;
            padding-top: 20px;
        }
        
        .logo {
            float: left;
            width: 150px; /* Nuevo ancho del logo */
            height: 150px; /* Nuevo alto del logo */
            margin-right: 10px;
        }
        
        .logo img {
            width: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
            height: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
            object-fit: contain; /* Ajusta la imagen dentro del tamaño del contenedor */
        }
        
        .text {
            float: left;
            margin-top: 10px;
        }

         .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
        
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff0000;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
        }
        
        .center-button {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/a1.jpg" CssClass="background-image" />
    <form id="form1" runat="server">
        <div class="container">
            <div class="logo">
                <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
            </div>
            <div class="text">
                <h1>Bienvenido a nuestra página web. Para continuar, debes registrar tus datos.</h1>
            </div>
            <div style="clear:both;"></div> <!-- Para limpiar el float y evitar que se superpongan los elementos -->
            <div class="center-button">
                <a href="Vista Previa.aspx" class="btn">Vista Previa</a>
            </div>
            <div>
                <a href="Sign Up.aspx" class="btn btn-signup">Sign Up</a>
                <a href="Login.aspx" class="btn btn-login">Login</a>
            </div>
        </div>
    </form>
</body>
</html>
