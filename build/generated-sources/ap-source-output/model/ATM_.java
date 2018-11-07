package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.ATM.tipe;
import model.Tabungan;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-04-17T11:39:35")
@StaticMetamodel(ATM.class)
public class ATM_ { 

    public static volatile SingularAttribute<ATM, Tabungan> tabungan;
    public static volatile SingularAttribute<ATM, Long> PIN;
    public static volatile SingularAttribute<ATM, Long> noKartu;
    public static volatile SingularAttribute<ATM, tipe> jenisATM;

}