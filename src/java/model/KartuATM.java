/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import model.Tabungan;


/**
 *
 * @author ASUS
 */
@Entity
public class KartuATM {
    public enum tipe {GOLD, SILVER, PLATINUM}
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long noKartu;
    private Long PIN;
    private tipe jenisATM;
    private Tabungan tabungan;
    
    public KartuATM(){
    }

    public tipe getJenisATM() {
        return this.jenisATM;
    }

    public void setJenisATM(tipe jenisATM) {
        this.jenisATM = jenisATM;
    }
    
    public long limit(tipe jenis){
        if(jenis == tipe.GOLD) {
            return Long.valueOf(1000);
        }
        else if(jenis == tipe.SILVER) {
            return Long.valueOf(500);
        }
        else {
            return Long.valueOf(300);
        }
        
    }

    public Long getNoKartu() {
        return noKartu;
    }

    public void setNoKartu(Long noKartu) {
        this.noKartu = noKartu;
    }

    public Long getPIN() {
        return PIN;
    }

    public void setPIN(Long PIN) {
        this.PIN = PIN;
    }

    public Tabungan getTabungan() {
        return tabungan;
    }

    public void setTabungan(Tabungan tabungan) {
        this.tabungan = tabungan;
    }
}
