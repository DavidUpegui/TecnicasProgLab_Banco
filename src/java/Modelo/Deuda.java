/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.time.LocalDateTime;

/**
 *
 * @author ASUS
 */
public class Deuda {
    private double valorDeuda;
    private double valorInteres;
    private int tiempoDePago;
    private LocalDateTime fechaPrestamo;
    private LocalDateTime fechaLimiteCancelacion;   

    public Deuda(double valorDeuda, double valorInteres, int tiempoDePago) {
        this.valorDeuda = valorDeuda;
        this.valorInteres = valorInteres;
        this.tiempoDePago = tiempoDePago;
    }

    public Deuda() {
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

    public LocalDateTime getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(LocalDateTime fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public LocalDateTime getFechaLimiteCancelacion() {
        return fechaLimiteCancelacion;
    }

    public void setFechaLimiteCancelacion(LocalDateTime fechaLimiteCancelacion) {
        this.fechaLimiteCancelacion = fechaLimiteCancelacion;
    }
    
    
}
