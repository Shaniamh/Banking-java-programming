/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



package model;

import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author ASUS
 */
@Entity
public class Tabungan {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long rekening;
    private long saldo;
    private String userName;
    private String password;
    private Nasabah nasabah;
    public static KartuATM kartu;

    public Tabungan(){}

    public Tabungan(long rekening, long saldo, String userName, String password,
                    Nasabah nasabah) {
        this.rekening = rekening;
        this.saldo    = saldo;
        this.userName = userName;
        this.password = password;
        this.nasabah  = nasabah;
    }
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Nasabah getNasabah() {
        return nasabah;
    }

    public void setNasabah(Nasabah nasabah) {
        this.nasabah = nasabah;
    }
    
    public long getRekening() {
        return rekening;
    }

    public void setRekening(long rekening) {
        this.rekening = rekening;
    }

    public long getSaldo() {
        return saldo;
    }

    public void setSaldo(long saldo) {
        this.saldo = saldo;
    }
}
