/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ClienteDao {
    private static final String QUERY_SELECT_ALL = "SELECT * FROM clientes_banco";
    private static final String QUERY_SELECT_ITEM = "SELECT * FROM clientes_banco where id = ?";
    private static final String QUERY_INSERT = "INSERT INTO clientes_banco(id, nombre,apellido, telefono, email,valor_deuda,"
            + " tiempo_pago, dia_prestamo) VALUES(?,?,?,?,?,?,?,?)";
    private static final String QUERY_UPDATE_CLIENTE = "UPDATE clientes_banco SET nombre = ?, apellido = ?, telefono = ?, "
            + "email = ? WHERE id = ?";
     private static final String QUERY_UPDATE_DEUDA = "UPDATE clientes_banco SET valor_deuda = ?, tiempo_pago = ?, "
            + "dia_prestamo = ?  WHERE id = ?";
    private static final String QUERY_DELETE = "DELETE FROM clientes_banco WHERE id = ?";
    private static Connection conn = null;
    private static PreparedStatement stms = null;
    private static ResultSet rs = null;
    
    public ArrayList<Cliente> CargarListaPersonas(){
        ArrayList<Cliente> lista = new ArrayList();
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_SELECT_ALL);
            rs = stms.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String telefono = rs.getString("telefono");
                String email = rs.getString("email");
                double valorDeuda = rs.getDouble("valor_deuda");
                int tiempoDePago = rs.getInt("tiempo_pago");
                System.out.println("Termina de inscribir al cliente");
                Deuda deuda = new Deuda(valorDeuda,(double) 0.011, tiempoDePago);
                Cliente c = new Cliente(id,nombre,apellido, telefono, email, deuda);
                lista.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
//            StringWriter sw = new StringWriter();
//            e.printStackTrace(new PrintWriter(sw));
//            
//            Cliente p2 = new Cliente("10000", sw.toString(), "Sanchez");
//            lista.add(p2);
//            return lista;
        }
        finally{
            Conexion.Close(conn);
            Conexion.Close(stms);
            Conexion.Close(rs);
        }
        return lista;   
    }
    
     public Cliente searchClienteByID(String givenID){
        Cliente c = new Cliente();
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_SELECT_ITEM);
            stms.setString(1, givenID);
            rs = stms.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String nombre = rs.getString("name");
                String apellido = rs.getString("last_name");
                String telefono = rs.getString("telefono");
                String email = rs.getString("email");
                double valorDeuda = rs.getDouble("valor_deuda");
                int tiempoDePago = rs.getInt("tiempo_pago");
                String diaPrestamo = String.valueOf(rs.getDate("dia_prestamo"));
                Deuda deuda = new Deuda(valorDeuda, (double)0.011, tiempoDePago, diaPrestamo);
                c.setId(id);
                c.setNombre(nombre);
                c.setApellido(apellido);
                c.setTelefono(telefono);
                c.setEmail(email);
                c.setDeuda(deuda);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);;
        }
        finally{
            Conexion.Close(stms);
            Conexion.Close(conn);
            Conexion.Close(rs);
        }
        return c;   
    }
     
     public int insertCliente(Cliente c){
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_INSERT);
            stms.setString(1, c.getId());
            stms.setString(2, c.getNombre());
            stms.setString(3, c.getApellido());
            stms.setString(4, c.getTelefono());
            stms.setString(5, c.getEmail());
            stms.setDouble(6, c.getDeuda().getValorDeuda());
            stms.setInt(7, c.getDeuda().getTiempoDePago());
            stms.setDate(8, Date.valueOf(c.getDeuda().getFechaPrestamo()));
            rows  =stms.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        finally{
            Conexion.Close(stms);
            Conexion.Close(conn);
        }
        return rows;   
    }
     
    public int updateClienteData(Cliente c){
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_UPDATE_CLIENTE);
            stms.setString(1, c.getNombre());
            stms.setString(2, c.getApellido());
            stms.setString(3, c.getTelefono());
            stms.setString(4, c.getEmail());
            rows  =stms.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        finally{
            Conexion.Close(stms);
            Conexion.Close(conn);
        }
        return rows;   
    }
    
    public int updateDeudaData(Deuda d){
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_UPDATE_DEUDA);
            stms.setDouble(1, d.getValorDeuda());
            stms.setInt(2, d.getTiempoDePago());
            stms.setDate(3, Date.valueOf(d.getFechaPrestamo()));
            rows  =stms.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        finally{
            Conexion.Close(stms);
            Conexion.Close(conn);
        }
        return rows;   
    }
    
    public int Delete(Cliente c){
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stms = conn.prepareStatement(QUERY_DELETE);
            stms.setString(1, c.getId());
            rows  =stms.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        finally{
            Conexion.Close(stms);
            Conexion.Close(conn);
        }
        return rows;   
    }
    
     public static void main(String[] args) throws SQLException {
        ClienteDao c = new ClienteDao();
        ArrayList<Cliente> lista = c.CargarListaPersonas();
        System.out.println(lista.get(0).getNombre());
    }
    
    
    
}
