<%-- 
    Document   : editar_deuda_cliente
    Created on : 5/04/2022, 02:20:58 AM
    Author     : ASUS
--%>

<div class="modal fade" id="editarDeudaModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header  text-white" style="background-color: #55a805">
                <h5 class="modal-title">Agregar Cliente</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form action="servletControlador?accion=insertar" method="get">
                <div class="modal-body">
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
                            <input type="text" class="form-control" name="valorDeuda" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="tiempoPago">Tiempo de pago (meses)</label>
                            <input type="text" class="form-control" name="tiempoPago" required>
                        </div>                             
                    </div>                    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" type ="submit">Editar Cliente</button>
                </div>
            </form>
        </div>
    </div>  
</div>
