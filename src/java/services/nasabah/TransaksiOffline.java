/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.nasabah;

import services.nasabah.SystemTransaksi;

/**
 *
 * @author ASUS
 */
public class TransaksiOffline extends SystemTransaksi{
    
    public void simpan(long nominal){}
    
    public boolean ambil(long nominal){
        return true;
    }
}
