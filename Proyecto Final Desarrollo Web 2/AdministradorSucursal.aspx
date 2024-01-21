<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorSucursal.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Administrador3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador Sucursal</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
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
        .stacked-linear {
  background: linear-gradient(
      217deg,
      rgba(255, 0, 0, 0.8),
      rgba(255, 0, 0, 0) 70.71%
    ), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%),
    linear-gradient(336deg, rgba(0, 0, 255, 0.8), rgba(0, 0, 255, 0) 70.71%);
}
    </style>
</head>
<body class="stacked-linear">
    <form id="form1" runat="server">
        <div class="navbar">
            <div class="navbar-item">
                <a href="AdministradorComentario.aspx">Comentarios</a>
                <div class="navbar-item-dropdown">
                    <!-- Agrega aquí los enlaces relacionados con los comentarios -->
                </div>
            </div>
            <div class="navbar-item">
                <a href="AdministradorServicio.aspx">Servicios</a>
                <div class="navbar-item-dropdown">
                    <!-- Agrega aquí los enlaces relacionados con los servicios -->
                </div>
            </div>
            <div class="navbar-item">
                <a href="AdministradorSucursal.aspx">Sucursales</a>
                <div class="navbar-item-dropdown">
                    <!-- Agrega aquí los enlaces relacionados con las sucursales -->
                </div>
            </div>
        </div>
         <h1 style="text-align: center">Listado Sucursales</h1>
        <br />
        <br />
        <asp:Panel ID="pnlListadoSucursal" runat="server" Width="100%" HorizontalAlign="Center">
            <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
            <asp:Button ID="btnbuscar" runat="server" Text="Buscar Sucursal" OnClick="btnbuscar_Click"/>
            <br />
            <asp:GridView ID="dtgListadoSucursal" runat="server"
                AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="dtgListadoSucursal_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="IdSucursal" HeaderText="Codigo" />
                    <asp:BoundField DataField="NombreSucursal" HeaderText="Nombre" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" />
                    
                </Columns>

            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Sucursal" OnClick="btnAgregar_Click"/>
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Panel ID="PnlIngresosucursal" runat="server" Visible="false" HorizontalAlign="Center">
            <div style="width: 100%; margin-left: auto; margin-right: auto;">
                <h1 style="text-align: center">Ingreso De Sucursales</h1>
                <br />
                <br />
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label2" runat="server" Text="Ingrese Nombre:"></asp:Label>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label3" runat="server" Text="Ingrese Direccion:"></asp:Label>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        </div>
                    </div>
                   
                </div>

                <br />
                <br />
                <asp:Button ID="btnGurdar" runat="server" Text="Guardar" OnClick="btnGurdar_Click"/>
                <asp:Button ID="btlActualizar" runat="server" Text="Actualizar" OnClick="btlActualizar_Click"/>
                <asp:Button ID="btlEliminar" runat="server" Text="Eliminar" OnClick="btlEliminar_Click"/>
                <br />
                <br />
                <br />


            </div>
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Label ID="lblResgistro" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
