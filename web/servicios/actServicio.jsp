<%-- 
    Document   : actualizarAgencia
    Created on : 30/11/2017, 05:57:12 PM
    Author     : kev_i
--%>

<%@page import="modeloVO.TipoServicioVO"%>
<%@page import="modeloVO.AgenciaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Actualizar</title>
    
  </head>
  <body>
    
<%@include file="../templates/header.jsp" %>
<%     TipoServicioVO tipoServicioVO = (TipoServicioVO) request.getAttribute("servicio");
    %>

  <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">      

                <br>
                <h1>ACTUALIZAR SERVICIO</h1>
                <br>
                <form action="servletServicio" method="POST" >
                    <input type="hidden" name="opcion" value="1">
                    <input type="submit" value="LISTAR SERVICIO" class="form-control" >
                </form>
                <br>
                <% if(request.getAttribute("mensaje") != null){
                    String resp = (String) request.getAttribute("mensaje");
                %>

                <div class="alert alert-success">
                    <strong>EXITO! EN EL PROCESO</strong> <%=resp%>
                </div>

                <%
                }
                %>
                <br>

    




    <form id="formServicio"  action="servletServicio" method="POST" class="form-horizontal" >
      <div class="form-group">
        <input type="hidden" name="opcion" value="4">
        <input type="hidden" name="idServicio" id="idServicio" value="<%=tipoServicioVO.getIdTipoServicio()%>" > 
        <label for="nombre" class="control-label col-sm-2">Nombre: </label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="nombre" name="nombre"   value="<%=tipoServicioVO.getNombre()%>" required >
        </div>
      </div>

      <div class="form-group">
        <label for="precio" class="control-label col-sm-2">Precio: </label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="precio" name="precio" value="<%=tipoServicioVO.getPrecio()%>" required >

        </div>
      </div>
      <div class="form-group">           
        <label for="tiempo" class="control-label col-sm-2">Tiempo: </label>
        <div class="col-sm-10">
          <input type="tiempo" class="form-control" id="tiempo" name="tiempo" value="<%=tipoServicioVO.getTiempo()%>">
        </div>
      </div>
      <div class="form-group">
        <label for="descripcion" class="control-label col-sm-2">Descripción: </label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="descripcion" name="descripcion" value="<%=tipoServicioVO.getDescripcion()%>" required >
        </div>
      </div>
     
      <div class="form-group">    
        <div class="col-sm-offset-2 col-sm-10">
          <input type="submit" name="confirmar" value="confirmar">
        
        </div>
      </div>
    </form>
                    </div>
                </div>
            </div>
  </div>
          <%@include file="../templates/footer.jsp" %>
        <style>
         .error{
             color: red;
         }
     </style>
      <script>
             
           $(document).ready(function () {
    $("#formServicio").validate({
        rules: {
            nombre: {
                required: true,
                minlength: 3,
                maxlength: 20
            },
            precio: {
                required: true,
                minlength: 4,
                maxlength: 8
            },
            tiempo: {
                required: true,
                min: 30,
                max:400,
                minlength: 2,
                maxlength: 6
            },
            descripcion: {
                required: true,
                minlength: 10,
                maxlength: 220
            }
        },
        messages: {
            nombre: {
                required: "Campo obligatorio",
                minlength: "Muy corto",
                maxlength: "Excede el limite"
            },
            precio: {
                required: "Campo obligatorio",
                minlength: "Muy corto",
                maxlength: "Excede el limite"
            },
            tiempo: {
                required: "Campo obligatorio",
                min: "Ingrese Tiempo mayor a 30.",
                max: "Tiempo exede el limite 400",
                minlength: "Ingrese Tiempo mayor a 30.",
                maxlength: "Tiempo exede el limite 400"
            },
            descripcion: {
                required: "Campo obligatorio",
                minlength: "Muy corto",
                maxlength: "Excede el limite"
            }
        }

    });
});
     </script>
  </body>
</html>
