<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Terminos Y Politicas.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Terminos_Y_Politicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Políticas y Términos de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .logo {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }

        .logo img {
            max-width: 100%;
            max-height: 100%;
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

        .content {
            background-color: rgba(255, 0, 0, 0.2);
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
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
        <div class="content">
            <h1>Políticas y Términos de Usuario</h1>
            <p>1. Política de cancelación: Establecer un período de tiempo específico dentro del cual los usuarios deben cancelar o reprogramar su cita. Por ejemplo, requerir un aviso de al menos 24 horas antes de la cita programada. En caso de no cumplir con esta política, se podría aplicar una tarifa de cancelación.</p>
            <p>2. Política de llegada tardía: Informar a los usuarios que deben llegar a tiempo a su cita para asegurar que se les pueda atender adecuadamente. Indicar que si llegan tarde, el tiempo de atención podría verse reducido o, en casos extremos, la cita podría ser cancelada.</p>
            <p>3. Política de cambios de cita: Establecer las condiciones y limitaciones para realizar cambios en una cita programada. Por ejemplo, requerir un aviso mínimo de 24 horas antes de la cita original para poder realizar modificaciones.</p>
            <p>4. Política de citas perdidas: Informar a los usuarios que, en caso de no presentarse a una cita sin previo aviso, se podría aplicar una tarifa o que se les podría negar la posibilidad de programar futuras citas.</p>
            <p>5. Responsabilidad del usuario: Aclarar que los usuarios son responsables de proporcionar información precisa al programar la cita, incluyendo datos de contacto actualizados. También se puede indicar que los usuarios deben presentar cualquier documentación o requisitos específicos necesarios para el servicio o consulta.</p>
            <p>6. Privacidad y protección de datos: Asegurar a los usuarios que su información personal se manejará de acuerdo con las leyes de privacidad aplicables y que se tomarán medidas para proteger sus datos.</p>
            <p>7. Cambios en las políticas: Reservarse el derecho de modificar las políticas y términos en cualquier momento y notificar a los usuarios sobre dichos cambios de manera oportuna.</p>
        </div>
    </form>
</body>
</html>

