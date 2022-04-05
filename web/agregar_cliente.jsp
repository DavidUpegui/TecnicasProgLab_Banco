<%-- 
    Document   : agregar_cliente
    Created on : 4/04/2022, 10:02:30 PM
    Author     : ASUS
--%>

<div class="modal fade" id="agregarClienteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header  text-white" style="background-color: #55a805">
                <h5 class="modal-title">Agregar Cliente</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form action="servletControlador?accion=insertar" method="get">
                <div class="modal-body">
                    <h6><strong>Ingrese los datos del nuevo cliente:</strong> </h6>
                    <div class="row justify-content-between">
                        <div class="form-group">
                            <label for="id">Número de identificación</label>
                            <input type="text" class="form-control" name="id" required>
                        </div>
                    </div>
                    <div class="row justify-content-between">
                        <div class="form-group col-md-6">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" name="nombre" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="apellido">Apellidos</label>
                            <input type="text" class="form-control" name="apellido" required>
                        </div>
                    </div>
                    <div class="row justify-content-between">
                        <div class="form-group col-md-6">
                            <label for="telefono">Telefono de contacto</label>
                            <input type="text" class="form-control" name="telefono" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" required>
                        </div>
                    </div>

                    <div class="row">
                        <hr class="bg-success border-2 border-top border-success my-4">
                        <h6><strong>Ingrese los datos de la deuda:</strong> </h6>
                    </div>
                    <div class="row justify-content-between">
                        <div class="form-group col-md-6">
                            <label for="valorDeuda">Valor de la deuda</label>
                            <input type="text" class="form-control" name="valorDeuda" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="tiempoPago">Tiempo de pago (meses)</label>
                            <input type="text" class="form-control" name="tiempoPago" required>
                        </div>                             
                    </div>                    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" type ="submit">Guardar Cliente</button>
                </div>
            </form>
        </div>
    </div>  
</div>

