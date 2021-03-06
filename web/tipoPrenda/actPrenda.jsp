<%-- 
    Document   : actPrenda
    Created on : 3/02/2018, 05:09:07 PM
    Author     : Kevin
--%>

<%@page import="modeloVO.TipoPrendaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../templates/header.jsp" %>
        <%     TipoPrendaVO tipoPrendaVO = (TipoPrendaVO) request.getAttribute("tipoPrenda");
        %>

       <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">      

                        <div class="card-box">
                <br>
                <h1>ACTUALIZAR PRENDA</h1>
                <br>


                <form action="servletTipoPren" method="POST" >

                    <input type="hidden" name="opcion" value="1">
                    <input type="submit" id="inicio" name="inicio" value="LISTAR TIPO DE PRENDAS" class="form-control" >
                </form>
                <br>

                <form id="formTipoPrenda"  action="servletTipoPren" method="POST" class="form-horizontal" >
                    <div class="form-group">
                        <input type="hidden" name="opcion" value="5">
                        <input type="hidden" name="idTipoPrenda" id="idTipoPRenda" value="<%=tipoPrendaVO.getIdTipoPrenda()%>" > 
                        <label for="nombre" class="control-label col-sm-2">Nombre: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nombre" name="nombre"   value="<%=tipoPrendaVO.getNombre()%>" required >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="descripcion" class="control-label col-sm-2">Descripcion: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="descripcion" name="descripcion" value="<%=tipoPrendaVO.getDescripcion()%>" required >

                        </div>
                    </div>
                    <input type="submit" class="btn btn-default" value="enviar" >
                </form>

            </div>
          
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
    $("#formTipoPrenda").validate({
        rules: {
            nombre: {
                required: true,
                minlength: 3,
                maxlength: 20
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
