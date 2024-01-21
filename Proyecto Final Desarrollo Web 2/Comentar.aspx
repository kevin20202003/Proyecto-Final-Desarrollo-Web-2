<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comentar.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Perfil_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Comenta tu opinión</title>
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

        h1 {
            font-size: 50px;
        }

        .logo {
            float: left;
            width: 150px; /* Nuevo ancho del logo */
            height: 120px; /* Nuevo alto del logo */
            margin: 70px;
            margin-right: 10px;
            position: absolute; /* Posición absoluta para el logo */
            top: 0; /* Alineamos en la parte superior */
            left: -100px; /* Alineamos en la parte izquierda */
        }

        .form-container {
            width: 400px;
            margin: 100px auto;
            text-align: left;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-weight: bold;
        }

        .form-input {
            display: block;
            width: 100%;
            padding: 5px;
            border: none;
            border-bottom: 1px solid black;
        }

        .form-dropdown {
            display: block;
            width: 100%;
            padding: 5px;
        }

        .form-checkbox-label {
            display: inline-block;
            font-weight: normal;
        }

        .form-button {
            justify-content: center;
            padding: 10px 20px;
            
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            background-color: #ff0000; /* Color original del botón */
            cursor: pointer; /* Restaura el cursor al habilitarse */
        }

        .form-textarea {
            display: block;
            width: 100%;
            padding: 5px;
            height: 150px;
        }
.striped {
  background: linear-gradient(to bottom left, cyan 50%, palegoldenrod 50%);
}
       
    </style>
</head>
<body class="striped">
    <form id="form1" runat="server">
        <div class="logo">
            <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
        </div>
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
        
        <h1>Comenta tu opinión</h1>
        
        <div class="form-container">
            <div class="form-group">
                <span>Comenta aquí:</span>
                <textarea class="form-textarea" id="txtcoemtario" runat="server"></textarea>
            </div>
            
            <div class="form-group">
                <span>Calificación:</span>
                <select class="form-dropdown" id="ddlCalificion" runat="server">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
            </div>
            
            <div class="form-group">
                <span>Mejoras:</span>
                <textarea class="form-textarea" id="txtMejoras" runat="server"></textarea>
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnEnviarComentario" runat="server" Text="Enviar comentario" CssClass="form-button" OnClick="btnEnviarComentario_Click" />
            </div>
        </div>
        <asp:Label ID="lblResgistro" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
