<%-- 
    Document   : index
    Created on : 1/04/2022, 05:06:16 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page= "comunes/header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <h2 class="pt-4">Clientes registrados</h2>
                    <p >Para visualizar toda la información del cliente, incluyendo su tabla de amortización, presione el botón "ver". </p>
                </div>
                <form action="servletControlador?accion=buscar" method="get">
                    <div class="row mb-3">
                        <div class="col-auto">
                            <input type="text" name="identificacion"  class="form-control" placeholder="Escribe una identificación">
                        </div>
                        <div class="col-auto">
                            <button class="btn" type ="submit" style="background-color: #7dff00">
                                <i class="bi bi-search"></i> Buscar
                            </button>
                        </div>
                    </div>      
                </form>            
            <%-- Aquí va la tabla bien mela --%>
            <jsp:include page = "lista_clientes.jsp"/>
            <div class ="row justify-content-start py-4">
                <div class="col-auto">
                    <a href ="#" class="btn btn-success btn-block" data-bs-toggle="modal" data-bs-target="#eliminarClienteModal">
                        <i class="bi bi-plus" style="font"></i> Agregar cliente
                    </a>  
                </div>
                <jsp:include page = "agregar_cliente.jsp"/>
            </div>
            <jsp:include page = "editar_cliente.jsp"/>
            <jsp:include page = "editar_deuda_cliente.jsp"/>
            <jsp:include page = "eliminar_cliente.jsp"/>

        </div>
       <jsp:include page = "comunes/pie_de_pagina.jsp"/>     
    </body>
</html>
