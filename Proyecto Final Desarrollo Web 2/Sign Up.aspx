<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sign up</title>
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
            width: 150px;
            height: 150px;
            margin-right: 10px;
            position: absolute;
            top: 0;
            left: 0;
        }

        .form-button {
            padding: 10px 10px;
            background-color: #ff0000;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            display: inline-block;
            border: none;
        }

         .form-button2 {
        
            padding: 10px 10px;
            background-color: #ff0000;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            display: inline-block;
            border: none;
        }
        

    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="logo">
                <asp:Image runat="server" ImageUrl="~/img/AutoAgenda.PNG" alt="Logo" />
            </div>
            <h1>Sign Up</h1>

            <div class="form-group">
                <label class="form-label" for="txtNombres">Nombres:</label>
                <input class="form-input" type="text" id="txtNombres" runat="server" />

            </div>
            <div class="form-group">
                <label class="form-label" for="txtApellidos">Apellidos:</label>
                <input class="form-input" type="text" id="txtApellidos" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtTelefono">Teléfono:</label>
                <input class="form-input" type="text" id="txtTelefono" runat="server" />
            </div>
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
            <div class="form-button">

                <asp:Button ID="btnGuardar" runat="server" Text="Sign Up" CssClass="form-button" OnClick="btnGuardar_Click" />

                
            </div>
             <div class="form-button2">

               

                  <asp:Button ID="btnlogin" runat="server" Text="Log in" CssClass="form-button2" OnClick="btnlogin_Click" />
            </div>
        </div>
        <asp:Label ID="lblResgistro" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
