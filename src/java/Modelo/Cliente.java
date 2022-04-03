/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class Cliente {
    private String id;
    private String nombre;
    private String apellido;
    private String telefono;
    private String email;
    private Deuda deuda;

    public Cliente() {
    }

    public Cliente(String id) {
        this.id = id;
    }

    public Cliente(String id, String nombre, String apellido, String telefono, String email) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.email = email;
    }

    public Cliente(String id, String nombre, String apellido, String telefono, String email, Deuda deuda) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.email = email;
        this.deuda = deuda;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Deuda getDeuda() {
        return deuda;
    }

    public void setDeuda(Deuda deuda) {
        this.deuda = deuda;
    }
    
    
}
