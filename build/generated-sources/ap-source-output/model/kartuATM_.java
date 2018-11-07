package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Tabungan;
import model.kartuATM.tipe;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-04-17T11:39:35")
@StaticMetamodel(kartuATM.class)
public class kartuATM_ { 

    public static volatile SingularAttribute<kartuATM, Tabungan> tabungan;
    public static volatile SingularAttribute<kartuATM, Long> PIN;
    public static volatile SingularAttribute<kartuATM, Long> noKartu;
    public static volatile SingularAttribute<kartuATM, tipe> jenisATM;

}