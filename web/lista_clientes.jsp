<%-- 
    Document   : lista_clientes
    Created on : 4/04/2022, 07:42:31 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_CO"></fmt:setLocale>
<section id="tabla_clientes">
    <div class ="container">
        <div class="row justify-content-start">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Lista de Clientes</h4>                                
                    </div>
                    <div style="height: 20rem; overflow: scroll; overflow-x: hidden; overflow-y:auto">
                        <table class="table table-striped">
                            <thead class="thead-dark">
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Correo</th>                                        
                                <th>Deuda inicial</th>                                        
                                <th></th>                                        
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var= "cliente" items="${listaClientes}">
                               <tr>
                                    <td>${cliente.getId()}</td>
                                    <td>${cliente.getNombre()} ${cliente.getApellido()}</td>
                                    <td>${cliente.getEmail()}</td>
                                    <td><fmt:formatNumber value="${cliente.getDeuda().getValorDeuda()}" type="currency"></fmt:formatNumber></td>
                                    <td>
                                        <div class="row">
                                            <div class="col-auto g-1">
                                                <form action ="servletControlador?accion=primereditar&id=${cliente.getId()}" method = "POST" >
                                                    <button type="submit" class="btn btn-primary" >
                                                        <i class="bi bi-pencil"></i>
                                                    </button>
                                                </form>
                                            </div>
                                            <div class="col-auto g-1">
                                                <form action="servletControlador?accion=eliminar&id=${cliente.getId()}" method="GET">
                                                    <button type = "submit" class="btn btn-danger">
                                                        <i class="bi bi-trash3"></i>
                                                    </button>
                                                </form>
                                            </div>
                                            <div class="col-auto g-1">
                                                <form action="servletControlador?accion=detalles&id=${cliente.getId()}" method="POST">
                                                    <button type="submit" class="btn btn-info">
                                                        <i class="bi bi-three-dots"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </td>
                                </tr> 
                            </c:forEach>   
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


