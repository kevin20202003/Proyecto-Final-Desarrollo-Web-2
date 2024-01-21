<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ver_autos.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Ver_autos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Autos</title>

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

        .car-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .car {
            width: 300px;
            margin: 10px;
            padding: 10px;
            border: 1px solid #dddddd;
            text-align: left;
        }

        .car-image {
            width: 100%;
            height: 200px;
            object-fit: contain;
        }

        .car-details {
            margin-top: 10px;
        }

        .car-name {
            font-weight: bold;
        }

        .car-price {
            color: #ff0000;
            font-weight: bold;
            margin-top: 5px;
        }

        .car-year {
            margin-top: 5px;
        }

        .car-features {
            margin-top: 5px;
        }
        .regular-progression {
  background: linear-gradient(to top, lime, cyan);
}
    </style>
    </head>

<body class="regular-progression">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/img/descargar.jpg" CssClass="background-image" />
    <form id="form1" runat="server">
        <div>
        
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

        <div class="car-container">
            <div class="car">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/c1.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Chevrolet Silverado Z71</div>
                    <div class="car-price">Precio: $25.500</div>
                    <div class="car-year">Año: 2016</div>
                    <div class="car-features">
                        <ul>
                            <li>Motor V8 de 5.3L con Dynamic Fuel Management</li>
                            <li>Potencia de 355 HP</li>
                            <li>Transmisión automática de 10 velocidades</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="car">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/c2.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Spark Life</div>
                    <div class="car-price">Precio: $10.800</div>
                    <div class="car-year">Año: 2022</div>
                    <div class="car-features">
                        <ul>
                            <li>Motor S0HC</li>
                            <li>Cilindrada (1,0 litros) 995cm</li>
                            <li>Ptencia 65HP @ 5400 rmp</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="car">
               <asp:Image ID="Image4" runat="server" ImageUrl="~/img/OIP.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Chevrolet Captiva</div>
                    <div class="car-price">Precio: $20.000</div>
                    <div class="car-year">Año: 2017</div>
                    <div class="car-features">
                        <ul>
                            <li>Sistema de monitoreo de presión de neumáticos</li>
                            <li>Asientos eléctricos calefaccionados</li>
                            <li>6 airbags (frontales, laterales y de cortina)</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="car">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/img/R.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Chevrolet Spark</div>
                    <div class="car-price">Precio: $15.600</div>
                    <div class="car-year">Año: 2016</div>
                    <div class="car-features">
                        <ul>
                            <li>Motor de 4 cilindros en línea de 1.4 litros</li>
                            <li>98 caballos de fuerza y 94 lb / ft de torque</li>
                            <li>Ahorro de combustible de hasta 30 mpg en ciudad, 38 en carretera y 35 combinados</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="car">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/img/R2.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Chevrolet Agile</div>
                    <div class="car-price">Precio: $8.500</div>
                    <div class="car-year">Año: 2014</div>
                    <div class="car-features">
                        <ul>
                            <li>Dimensiones: largo, 3,99 m; ancho, 1,93 m; alto, 1,47 m; entre ejes, 2,54 m</li>
                            <li>Peso: 1.065 kg</li>
                            <li>Capacidad baúl: 327 litros</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="car">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/img/R3.jpg" class="car-image" />
                <div class="car-details" style="text-align:center">
                    <div class="car-name">Chevrolet Cruze 2.0 VCDi</div>
                    <div class="car-price">Precio: $14.600</div>
                    <div class="car-year">Año: 2020</div>
                    <div class="car-features">
                        <ul>
                            <li>Cilindrada: 1998 CC</li>
                            <li>Par máximo: 360 Nm (36,7 kgm) a 1750-2750 rpm</li>
                            <li>Potencia: 163 CV</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        </div>
    </form>
</body>
</html>
