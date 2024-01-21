<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Log in</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            font-size: 50px;
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

        .logo {
            float: left;
            width: 150px; /* Nuevo ancho del logo */
            height: 150px; /* Nuevo alto del logo */
            margin-right: 10px;
            position: absolute; /* Posición absoluta para el logo */
            top: 0; /* Alineamos en la parte superior */
            left: 0; /* Alineamos en la parte izquierda */
        }


        .form-button {
            padding: 10px 20px;
            background-color: #ff0000;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
        </div>
        <div class="form-container">
            <h1>LOGIN</h1>
            <div class="form-group">
                <label class="form-label" for="txtCorreo">Correo Electrónico:</label>
                <input class="form-input" type="text" id="txtCorreo" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtContraseña">Contraseña:</label>
                <input class="form-input" type="password" id="txtContraseña" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="ddlRol">Escoge el rol al que pertenece:</label>
                <select class="form-dropdown" id="ddlRol" runat="server">
                    <option value="......">.......</option>
                    <option value="1">Administrador</option>
                    <option value="2">Usuario</option>
                </select>

            </div>

            <asp:Button ID="btnVerificar" runat="server" Text="Log In" class="form-button" OnClick="btnVerificar_Click"/>
        </div>
        <asp:Label ID="lblResgistro" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

