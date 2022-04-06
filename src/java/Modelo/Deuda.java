/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author ASUS
 */
public class Deuda {
    private double valorDeuda;
    private double valorInteres;
    private int tiempoDePago;
    private Date fechaPrestamo = new Date(System.currentTimeMillis());
    private String fechaLimiteCancelacion;   
    
        public Deuda() {
    }

    public Deuda(double valorDeuda, double valorInteres, int tiempoDePago, Date fechaPrestamo) {
        this.valorDeuda = valorDeuda;
        this.valorInteres = valorInteres;
        this.tiempoDePago = tiempoDePago;
        this.fechaPrestamo = fechaPrestamo;
    }

    public Deuda(double valorDeuda, double valorInteres, int tiempoDePago) {
        this.valorDeuda = valorDeuda;
        this.valorInteres = valorInteres;
        this.tiempoDePago = tiempoDePago;
    }

    public Deuda(double valorDeuda, int tiempoDePago) {
        this.valorDeuda = valorDeuda;
        this.tiempoDePago = tiempoDePago;
    }

    public double getValorDeuda() {
        return valorDeuda;
    }

    public void setValorDeuda(double valorDeuda) {
        this.valorDeuda = valorDeuda;
    }

    public double getValorInteres() {
        return valorInteres;
    }

    public void setValorInteres(double valorInteres) {
        this.valorInteres = valorInteres;
    }

    public int getTiempoDePago() {
        return tiempoDePago;
    }

    public void setTiempoDePago(int tiempoDePago) {
        this.tiempoDePago = tiempoDePago;
    }

    public Date getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(Date fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public String getFechaLimiteCancelacion() {
        return fechaLimiteCancelacion;
    }

    public void setFechaLimiteCancelacion(String fechaLimiteCancelacion) {
        this.fechaLimiteCancelacion = fechaLimiteCancelacion;
    }
    
    
}
