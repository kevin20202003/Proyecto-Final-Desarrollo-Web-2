<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorComentario.aspx.cs" Inherits="Proyecto_Final_Desarrollo_Web_2.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administrador Comentaro</title>
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
         <h1 style="text-align: center">Listado Comentarios</h1>
        <br />
        <br />
        <asp:Panel ID="pnlListadoComentarios" runat="server" Width="100%" HorizontalAlign="Center">
            <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
            <asp:Button ID="btnbuscar" runat="server" Text="Buscar Comentario" OnClick="btnbuscar_Click"/>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="dtgListadoComentarios" runat="server"
                AutoGenerateColumns="false" HorizontalAlign="Center" >
                <Columns>
                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" />
                    <asp:BoundField DataField="Calificacion" HeaderText="Calificacion" />
                    <asp:BoundField DataField="Mejoras" HeaderText="Mejoras" />
                    
                </Columns>

            </asp:GridView>
            <br />
            <br />
            <br />
         
        </asp:Panel>
        <br />
        <br />
        <br />
       
          <h1 style="text-align: center">Listado Citas</h1>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="100%" HorizontalAlign="Center">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscarCitas" runat="server" Text="Buscar Citas" OnClick="btnBuscarCitas_Click"/>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="dtgListadoCitas" runat="server"
                AutoGenerateColumns="false" HorizontalAlign="Center" >
                <Columns>
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" />
                    <asp:BoundField DataField="FechaHora" HeaderText="Fecha Hora" />
                    <asp:BoundField DataField="IdServico" HeaderText="IdServicio" />
                    <asp:BoundField DataField="IdSucursal" HeaderText="IdSucursal" />
                    
                </Columns>

            </asp:GridView>
            <br />
            <br />
            <br />
         
        </asp:Panel>
                <br />
                <br />
                
                <br />
                <br />
                <br />


           
        <br />
        <br />
        <br />
        
    </form>
</body>
</html>
