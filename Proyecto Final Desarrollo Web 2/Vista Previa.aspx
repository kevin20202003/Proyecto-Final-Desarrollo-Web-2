<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vista Previa.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Vista_Previa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vista Previa</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .logo {
            position: absolute;
            top: 10px;
            left: 10px;
            margin: 10px;
            float: left;
            width: 300px; /* Nuevo ancho del logo */
            height: 250px; /* Nuevo alto del logo */
            margin-right: 10px;
        }

        .logo img {
            width: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
            height: 100%; /* Para ocupar todo el espacio disponible en el contenedor */
            object-fit: contain; /* Ajusta la imagen dentro del tamaño del contenedor */
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

        .buttons-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 20px;
            margin-right: 10px;
        }

        .buttons-container .btn {
            padding: 10px 20px;
            background-color: #ff0000;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .carousel {
            width: 600px;
            height: 300px;
            margin: 50px auto;
            overflow: hidden;
            position: relative;
        }

        .carousel img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 0.5s ease-in-out;
        }

        .carousel img.active {
            opacity: 1;
        }

        .carousel .prev,
        .carousel .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: #ffffff;
            padding: 10px;
            cursor: pointer;
        }

        .carousel .prev {
            left: 10px;
        }

        .carousel .next {
            right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
        </div>
        <div class="navbar">
            <div class="navbar-item">
                <a href="#">Inicio</a>
                <div class="navbar-item-dropdown">
                    <a href="#">Perfil de usuario</a>
                    <a href="#">Informacion de la empresa</a>
                    <a href="#">Cerrar sesion</a>
                </div>
            </div>
            <div class="navbar-item">
                <a href="#">Opciones</a>
                <div class="navbar-item-dropdown">
                    <a href="#">Vistamiento de vehiculos</a>
                    <a href="#">Agendamiento de turnos vehicular</a>
                </div>
            </div>
            <div class="navbar-item">
                <a href="#">Contactos</a>
                <div class="navbar-item-dropdown">
                    <a href="#">Creadores de la pagina</a>
                    <a href="#">Proveedores</a>
                </div>
            </div>
        </div>
        <div class="buttons-container">
            <a href="Login.aspx" class="btn">Login</a>
            <a href="Sign Up.aspx" class="btn">Sign Up</a>
        </div>
        <h1 style="text-align:center">Bienvenido usuario invitado.</h1>
         <h2 style="text-align:center">Esta es la vista previa de la pagina principal.</h2>
         <h2 style="text-align:center">Recuerda que debes registrarte para ingresar.</h2>
         
        <div class="carousel">
            <asp:Image runat="server" ImageUrl="~/img/a4.jpg" CssClass="active" />
            <asp:Image runat="server" ImageUrl="~/img/a5.jpg"/>
            <asp:Image runat="server" ImageUrl="~/img/a6.jpg"/>
            <asp:Image runat="server" ImageUrl="~/img/a7.jpg"/>
            <asp:Image runat="server" ImageUrl="~/img/a8.jpg"/>
            <div class="prev">&#10094;</div>
            <div class="next">&#10095;</div>
        </div>
    </form>
    <script>
        var slideIndex = 0;
        carousel();

        function carousel() {
            var i;
            var slides = document.getElementsByClassName("carousel")[0].getElementsByTagName("img");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.opacity = "0";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            slides[slideIndex - 1].style.opacity = "1";
            setTimeout(carousel, 4000); // Cambiar imagen cada 2 segundos
        }

        document.querySelector(".prev").addEventListener("click", function () {
            slideIndex--;
            if (slideIndex < 1) { slideIndex = slides.length }
            updateSlide();
        });

        document.querySelector(".next").addEventListener("click", function () {
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            updateSlide();
        });

        function updateSlide() {
            for (var i = 0; i < slides.length; i++) {
                slides[i].style.opacity = "0";
            }
            slides[slideIndex - 1].style.opacity = "1";
        }
    </script>
</body>
</html>
