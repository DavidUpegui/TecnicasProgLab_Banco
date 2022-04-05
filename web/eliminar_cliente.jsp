<%-- 
    Document   : eliminar_cliente
    Created on : 5/04/2022, 09:55:52 AM
    Author     : ASUS
--%>

<div class="modal fade" id="eliminarClienteModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header  text-white" style="background-color: #55a805">
                <h5 class="modal-title">Eliminar Cliente</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <p> ¿Está seguro de que quiere eliminar al cliente David Upegui ${cliente.getName()}?</p>
                <p>Una vez lo haga no habrá vuelta atrás.</p>
            </div>
            <div class="modal-footer">
                <form action="servletControlador?accion=eliminar">
                    <input type="submit" class="btn btn-danger" value="Eliminar">
                </form>
            </div>
        </div>
    </div>  
</div>
