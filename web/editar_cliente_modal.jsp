<%-- 
    Document   : editar_cliente
    Created on : 5/04/2022, 02:06:37 AM
    Author     : ASUS
--%>

<div class="modal fade" id="editarClienteModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header  text-white" style="background-color: #55a805">
                <h5 class="modal-title">Editar Cliente</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form action="servletControlador?accion=editar" method="get">
                <div class="modal-body">
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
                            <input type="text" class="form-control" name="valorDeuda" value="${cliente.getDeuda().getValorDeuda()}" placeholder="${cliente.getDeuda().getValorDeuda}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="tiempoPago">Tiempo de pago (meses)</label>
                            <input type="text" class="form-control" name="tiempoPago" value="${cliente.getDeuda().getTiempoDePago()}" placeholder="${cliente.getDeuda().getTiempoDePago()}" required>
                        </div>                             
                    </div>                                                   
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-auto">
                            <div class="row justify-content-start">
                                <div class=" col-auto text-right">
                                    <form <form action="servletControlador" method="GET">
                                        <button class="btn btn-primary" type ="submit">
                                            <i class="bi bi-arrow-clockwise"></i>Volver
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>  
                        <div class="col-auto">
                            <div class="row justify-content-end">
                                <div class=" col-auto text-right">
                                    <form <form action="servletControlador?accion=modificar" method="POST">
                                        <button class="btn btn-success" type="submit">
                                            <i class="bi bi-arrow-clockwise"></i> Editar
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                    <button class="btn btn-success" type ="submit">Editar Cliente</button>
                </div>
            </form>
        </div>  
    </div>
</div>