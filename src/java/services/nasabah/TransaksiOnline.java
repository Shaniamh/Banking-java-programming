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
public class TransaksiOnline extends SystemTransaksi{
    
    public boolean Transfer(long nominal, long noRekeningTujuan, int token) {
        return true;
    }
}