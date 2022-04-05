<%-- 
    Document   : ver_detalles_cliente
    Created on : 5/04/2022, 01:27:21 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                            <p><strong>- Número de identificación: </strong> 1000758326</p>
                            <p><strong>- Nombre:</strong> David</p>
                            <p><strong>- Apellidos:</strong> Upegui Londoño</p>
                            <p><strong>- Correo electrónico</strong> davidupegui2002@gmail.com</p>
                            <p><strong>- Teléfono:</strong> 3014046581</p>
                            <p><strong>- Deuda inicial: </strong> 40000 </p>
                            <p><strong>- Fecha de endeudamiento</strong> 05/04/2022</p> 
                        </div>
                        <br>
                        <h3>Tabla de amortización: </h3>
                    </div>
                </div>
                <div class="row justify-content-center">  
                    <br>
                    <br>
                    <div class="col-9">                       
                        <table class="table table-bordered table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Numero de cuota</th>
                                    <th>Valor cuota</th>
                                    <th>Capital</th>                                        
                                    <th>Interes</th>                                        
                                    <th>Saldo restante</th>                                        
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>                                        
                                    <td>0</td>                                        
                                    <td>4000</td>                                        
                                </tr>
                                <tr>
                                    <td>0</td>
                                    <td>500</td>
                                    <td>100</td>                                        
                                    <td>400</td>                                        
                                    <td>3500</td>                                        
                                </tr>
                                <tr>
                                    <td>0</td>
                                    <td>500</td>
                                    <td>100</td>                                        
                                    <td>400</td>                                        
                                    <td>3500</td>                                        
                                </tr>
                                <tr>
                                    <td>0</td>
                                    <td>500</td>
                                    <td>100</td>                                        
                                    <td>400</td>                                        
                                    <td>3500</td>                                        
                                </tr>
                                <tr>
                                    <td>0</td>
                                    <td>500</td>
                                    <td>100</td>                                        
                                    <td>400</td>                                        
                                    <td>3500</td>                                        
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>              
            </div>
        </div>
    </body>
</html>
