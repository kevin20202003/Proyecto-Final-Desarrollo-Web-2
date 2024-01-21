<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cita.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Cita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cita</title>
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
            height: 150px; /* Nuevo alto del logo */
            margin: 90px;
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
            background-color: lightcoral;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            cursor: not-allowed;
        }



            .form-button.enabled {
                background-color: #ff0000; /* Color original del botón */
                cursor: pointer; /* Restaura el cursor al habilitarse */
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
        <div class="form-container">
            <h1>Programa tu cita aquí!!</h1>
            <br />
            <div class="form-group">
                <label class="form-label" for="txtCedula">N° de cédula:</label>
                <input class="form-input" type="text" id="txtCedula" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtNombre">Nombre:</label>
                <input class="form-input" type="text" id="txtNombre" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtApellido">Apellido:</label>
                <input class="form-input" type="text" id="txtApellido" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtTelefono">Teléfono:</label>
                <input class="form-input" type="text" id="txtTelefono" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="txtCorreo">Correo:</label>
                <input class="form-input" type="text" id="txtCorreo" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="datetimePicker">Fecha y hora:</label>
                <input class="form-input" type="datetime-local" id="datetimePicker" runat="server" />
            </div>
            <div class="form-group">
                <label class="form-label" for="ddlServicio">Escoge el servicio:</label>
                <select class="form-dropdown" id="ddlServicio" runat="server">
                    <option value="......">.......</option>
                    <option value="5">Revisión vehicular</option>
                    <option value="6">Financiamiento vehicular</option>
                    <option value="7">Asesoramiento</option>
                </select>
            </div>
             <div class="form-group">
                <label class="form-label" for="ddlSucursal">Escoge la sucursal:</label>
                <select class="form-dropdown" id="ddlSucursal" runat="server">
                    <option value="......">.......</option>
                    <option value="1">Hyunmotor</option>
                    <option value="2">Jungheinrich Quito</option>
                    <option value="3">Autocor Av. Río Coca</option>
                </select>
            </div>
            <div class="form-group">
                <asp:CheckBox ID="chkTerminos" runat="server" class="form-checkbox" OnCheckedChanged="chkTerminos_CheckedChanged" AutoPostBack="true" />

                <label class="form-checkbox-label" for="chkAceptaTerminos"><a href="Terminos Y Politicas.aspx">Acepta Políticas y términos de usuario</a></label>
            </div>
            <div>
                <asp:Button ID="btnProgramar" runat="server" Text="Programar Cita" class="form-button" OnClick="btnProgramar_Click" Enabled="false" />
            </div>

        </div>
        <asp:Label ID="lblResgistro" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
