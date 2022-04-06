<%-- 
    Document   : ver_detalles_cliente
    Created on : 5/04/2022, 01:27:21 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <fmt:setLocale value="es_CO"></fmt:setLocale>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
        <jsp:include page= "comunes/header.jsp"></jsp:include>
            <div class="container py-4"> 
                <div class="row">
                    <div class="row mx-2">
                        <h2>Detalles</h2>

                        <div class="row mx-2">
                            <h3>Datos del Cliente:</h3><br>
                            <div class="row mx-2">
                                <p><strong>- Número de identificación:</strong> ${cliente.getId()}</p>
                            <p><strong>- Nombre:</strong> ${cliente.getNombre()}</p>
                            <p><strong>- Apellidos:</strong> ${cliente.getApellido()}</p>
                            <p><strong>- Correo electrónico:</strong> ${cliente.getEmail()}</p>
                            <p><strong>- Teléfono:</strong> ${cliente.getTelefono()}</p>
                            <p><strong>- Deuda inicial: </strong> ${cliente.getDeuda().getValorDeuda()} </p>
                            <p><strong>- Cuotas mensuales: </strong> ${cliente.getDeuda().getTiempoDePago()} </p>
                            <p><strong>- Interes: </strong> ${cliente.getDeuda().getValorInteres()} </p>
                            <p><strong>- Fecha de endeudamiento:</strong> ${cliente.getDeuda().getFechaPrestamo()}</p> 
                        </div>
                        <br>
                        <h3>Tabla de amortización: </h3>
                    </div>
                </div>
                <div class="row justify-content-center">  
                    <br>
                    <br>
                    <div class="col-9">                       
                        <table class="table table-bordered table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>N° Mes</th>
                                    <th>Valor cuota</th>
                                    <th>Capital</th>                                        
                                    <th>Interes</th>                                        
                                    <th>Saldo restante</th>                                        
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="i" begin="0" end="${matAmort.get(0).size() - 1}">
                                    <tr>
                                        <td clas="text-center">Mes ${i}</td>
                                        <td><fmt:formatNumber value="${cuota}" type="currency"/></td>
                                        <td><fmt:formatNumber value="${matAmort.get(0).get(i)}" type="currency"/></td>
                                        <td><fmt:formatNumber value="${matAmort.get(1).get(i)}" type="currency"/></td>
                                        <td><fmt:formatNumber value="${matAmort.get(2).get(i)}" type="currency"/></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>              
            </div>
        </div>
    </body>
</html>
