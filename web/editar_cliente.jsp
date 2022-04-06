<%-- 
    Document   : editar_cliente
    Created on : 5/04/2022, 11:26:46 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page= "comunes/header.jsp"></jsp:include>
            <div clasS="container">
                <div class="row justify-content-center">
                    <div class="col-md-9 py-5">
                        <div class="card">
                            <div class="card-header">
                                <div class="row justify-content-center">
                                    <div>
                                        <h4>Editar Cliente</h4>
                                    </div>    
                                </div>
                            </div>
                            <form action="servletControlador?accion=editar" method="POST">
                                <div class="card-body">
                                    <h6><strong>Ingrese los datos del cliente a editar:</strong> </h6>
                                    <div class="row justify-content-between">
                                        <div class="form-group">
                                            <label for="id">Número de identificación ${cliente} aaaaaaaaaaa</label>
                                        <input type="text" class="form-control" name="id" value="${cliente.getId()}" readonly required>
                                    </div>
                                </div>
                                <div class="row justify-content-between">
                                    <div class="form-group col-md-6">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" value="${cliente.getNombre()}" placeholder="${cliente.getNombre()}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="apellido">Apellidos</label>
                                        <input type="text" class="form-control" name="apellido" value="${cliente.getApellido()}" placeholder="${cliente.getApellido()}" required>
                                    </div>
                                </div>
                                <div class="row justify-content-between">
                                    <div class="form-group col-md-6">
                                        <label for="telefono">Telefono de contacto</label>
                                        <input type="text" class="form-control" name="telefono" value="${cliente.getTelefono()}" placeholder="${cliente.getTelefono()}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" name="email" value="${cliente.getEmail()}" placeholder="${cliente.getEmail()}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <hr class="bg-success border-2 border-top border-success my-4">
                                    <h6><strong>Ingrese los datos de la deuda:</strong> </h6>
                                    <br>
                                    <p class="text-danger"><strong>Importante: </strong> Si modifica los datos de la deuda, esta volvera a empezar desde
                                        cero, es decir, la deuda se reseteará desde el momento de la modificación como si fuera una deuda
                                        nueva.</p>
                                </div>
                                <div class="row justify-content-between">
                                    <div class="form-group col-md-6">
                                        <label for="valorDeuda">Valor de la deuda</label>
                                        <input type="text" class="form-control" name="valorDeuda" value="${cliente.getDeuda().getValorDeuda()}" placeholder="${cliente.getDeuda().getValorDeuda()}" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="tiempoPago">Tiempo de pago (meses)</label>
                                        <input type="text" class="form-control" name="tiempoPago" value="${cliente.getDeuda().getTiempoDePago()}" placeholder="${cliente.getDeuda().getTiempoDePago()}" required>
                                    </div>                             
                                </div>                                                   
                            </div>
                            <div class="card-footer">
                                <div class="row">
                                    <div class="col-auto">
                                        <div class="row justify-content-start">
                                            <div class="col-auto">                                                
                                                <a href="index.jsp" class="btn btn-primary">
                                                    <i class="bi bi-arrow-left"></i> Volver
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="row justify-content-end">
                                            <div class=" col-auto text-right">
                                                <button class="btn btn-success" type ="submit">
                                                    Editar Cliente
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <jsp:include page = "comunes/pie_de_pagina.jsp"/>
    </body>
</html>
