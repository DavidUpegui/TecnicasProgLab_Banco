/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

/**
 * Clase encargada de calcular operaciones relacionada con la Deuda.
 * @DavidUpegui
 */

import Modelo.Deuda;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Locale;

public class DeudaControl {
    
    public static double calcularCuota(Deuda deuda){
        double valorDeuda = (double) deuda.getValorDeuda();
        double interes = (double) deuda.getValorInteres();
        int tiempoDePago = deuda.getTiempoDePago();
        double c = (valorDeuda*interes*Math.pow((1+ interes), tiempoDePago))/((Math.pow((1+ interes), tiempoDePago))-1);
        return c;
    }
    
    public static ArrayList<ArrayList> calcularMatrizAmort(Deuda deuda){
        int tiempoDePago;
        double cuota;
        double interes;
        DecimalFormat df = new DecimalFormat("#.###", new DecimalFormatSymbols(Locale.US));
        ArrayList <ArrayList> matrizAmort = new ArrayList();
        ArrayList listaCapital = new ArrayList();
        ArrayList listaInteres = new ArrayList();
        ArrayList listaSaldos = new ArrayList();
        listaCapital.add(0);
        listaInteres.add(0);
        listaSaldos.add(deuda.getValorDeuda());
        tiempoDePago = deuda.getTiempoDePago();
        cuota = calcularCuota(deuda);
        interes = deuda.getValorInteres();
        
        for (int i = 1; i <= tiempoDePago ; i++) {
            double saldoAnterior = Double.parseDouble(String.valueOf(listaSaldos.get(i - 1)));
            double interesActual = saldoAnterior*interes;
            double capitalActual = cuota - interesActual;
            double saldoActual = saldoAnterior - capitalActual;
            listaInteres.add(df.format(interesActual));
            listaCapital.add(df.format(capitalActual));
            if(i == tiempoDePago){
                listaSaldos.add((int) saldoActual);
            }else{
            listaSaldos.add(df.format(saldoActual));
            }
            
        }
        matrizAmort.add(listaCapital);
        matrizAmort.add(listaInteres);
        matrizAmort.add(listaSaldos);
        return matrizAmort;
    }
  
    
//    public static BigDecimal calcularCuota(Deuda deuda){
//        BigDecimal valorDeuda = new BigDecimal((double)deuda.getValorDeuda());
//        BigDecimal interes = new BigDecimal ((double) deuda.getValorInteres());
//        int tiempoDePago = deuda.getTiempoDePago();
//        BigDecimal cNumerador;
//        BigDecimal cDenominador;
//        cNumerador = valorDeuda.multiply(interes.multiply(interes.add(new BigDecimal(1)).pow(tiempoDePago)));
//        cDenominador = (interes.add(new BigDecimal(1)).pow(tiempoDePago)).add(new BigDecimal(1).negate());
//        return cNumerador.divide(cDenominador, RoundingMode.HALF_UP);
//    }
//    
//    public static ArrayList<ArrayList> calcularMatrizAmort(Deuda deuda){
//        int tiempoDePago;
//        BigDecimal cuota;
//        BigDecimal interes;
//        ArrayList <ArrayList> matrizAmort = new ArrayList();
//        ArrayList<BigDecimal> listaCapital = new ArrayList();
//        ArrayList<BigDecimal> listaInteres = new ArrayList();
//        ArrayList<BigDecimal> listaSaldos = new ArrayList();
//        listaCapital.add(new BigDecimal(0));
//        listaInteres.add(new BigDecimal(0));
//        listaSaldos.add(new BigDecimal(deuda.getValorDeuda()));
//        tiempoDePago = deuda.getTiempoDePago();
//        cuota = calcularCuota(deuda);
//        interes = new BigDecimal(deuda.getValorInteres());
//        
//        for (int i = 1; i <= tiempoDePago ; i++) {
//            BigDecimal saldoAnterior = listaSaldos.get(i -1);
//            BigDecimal interesActual = saldoAnterior.multiply(interes);
//            BigDecimal capitalActual = cuota.add(interesActual.negate());
//            BigDecimal saldoActual = saldoAnterior.add(capitalActual.negate());
//            listaInteres.add(interesActual.setScale(3,RoundingMode.HALF_UP));
//            listaCapital.add(capitalActual.setScale(3,RoundingMode.HALF_UP));
//            listaSaldos.add(saldoActual.setScale(3,RoundingMode.HALF_UP));
//        }
//        matrizAmort.add(listaCapital);
//        matrizAmort.add(listaInteres);
//        matrizAmort.add(listaSaldos);
//        return matrizAmort;
//    }
    
    public static void main(String[] args) {
        Deuda deuda = new Deuda(75000,(double) 11/600,60);
        BigDecimal interes = new BigDecimal((double) 11/600);
        BigDecimal c = interes.add(new BigDecimal(1)).pow(60);
        System.out.println(calcularMatrizAmort(deuda).get(0) + " \n " + calcularMatrizAmort(deuda).get(1) + "\n" + calcularMatrizAmort(deuda).get(2));
          
    }
    
}
