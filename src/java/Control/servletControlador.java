/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Cliente;
import Modelo.ClienteDao;
import Modelo.Deuda;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class servletControlador extends HttpServlet {        

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        System.out.println("La accion es en get es: " + accion);
         if (accion !=null){
            switch(accion){
                case "eliminar":
                    this.btnEliminar(request, response);
                    break;
                default:
                    this.accionDefault(request, response);break;                    
            }
        }else{
            this.accionDefault(request, response);
        }
    }
    
     /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        System.out.println("La acción es un post y es: " + accion);
        if (accion !=null){
            switch(accion){
                case "insertar":
                    this.btnGuardarCliente(request, response);
                    break;
//                case "eliminar":
//                    this.btnEliminar(request,response);
                case "detalles":
                    this.verDetalles(request, response);
                    break;
                case "primereditar":
                    this.btnPrimerEditar(request, response);
                    break;
                case "editar":
                    this.editar(request, response);
                    break;
                default:
                    this.accionDefault(request, response);break;                    
            }
        }else{
            this.accionDefault(request, response);
        }
    }
     protected void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Cliente> listaClientes = new ClienteDao().CargarListaPersonas();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listaClientes", listaClientes);
        response.sendRedirect("index.jsp");
    }
     
    protected void btnPrimerEditar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Cliente c = new ClienteDao().searchClienteByID(id);
        request.setAttribute("cliente", c);
        request.getRequestDispatcher("editar_cliente.jsp").forward(request, response);
       
    }
     
    protected void btnGuardarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        System.out.println("El id es" + id);
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        double valorDeuda = Double.parseDouble(request.getParameter("valorDeuda"));
        int tiempoDePago = Integer.parseInt(request.getParameter("tiempoPago"));
        Cliente c = new Cliente(id,nombre,apellido, telefono, email,new Deuda(valorDeuda,(double) 0.011,tiempoDePago));
        int modificado = new ClienteDao().insertCliente(c);
        
        this.accionDefault(request, response);
    }
   
     protected void btnEliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String id = request.getParameter("id");
         System.out.println("Esta es la identificacion" + id);
         Cliente c = new Cliente(id);
         int modificado = new ClienteDao().Delete(c);
         this.accionDefault(request, response);
     }
     
     protected void verDetalles(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String id = request.getParameter("id");
         System.out.println("La id es: " + id);
         Cliente c = new ClienteDao().searchClienteByID(id);
         System.out.println("El nombre es: " + c.getNombre());
         ArrayList<ArrayList> matAmort = DeudaControl.calcularMatrizAmort(c.getDeuda());
         double cuota = DeudaControl.calcularCuota(c.getDeuda());
         request.setAttribute("cliente", c);
         request.setAttribute("matAmort", matAmort);
         request.setAttribute("cuota", cuota);
         request.getRequestDispatcher("ver_detalles_cliente.jsp").forward(request, response);      
     }
     
      protected void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        double valorDeuda = Double.parseDouble(request.getParameter("valorDeuda"));
        int tiempoDePago = Integer.parseInt(request.getParameter("tiempoPago"));
        
        Cliente c = new Cliente(id,nombre,apellido, telefono, email,new Deuda(valorDeuda,(double) 0.011,tiempoDePago));
        int modificadoCliente = new ClienteDao().updateCliente(c);
        accionDefault(request, response);

      }
     
}
