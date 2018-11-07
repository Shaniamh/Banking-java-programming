/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.nasabah;

import dao.impl.NasabahDao;
import model.Tabungan;

/**
 *
 * @author ASUS
 */
public class SystemTransaksi {
    private Tabungan tabungan;
    
    public boolean transfer(long nominal, long rekeningTujuan){
        return true;
    }
    
    public String cekSaldo(){
        return "Saldo Anda " + tabungan.getSaldo();
    }
    
    public boolean login(String user, int pass){
       return true;
    }
}
