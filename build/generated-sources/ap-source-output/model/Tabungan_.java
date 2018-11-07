package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Nasabah;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-04-17T11:39:35")
@StaticMetamodel(Tabungan.class)
public class Tabungan_ { 

    public static volatile SingularAttribute<Tabungan, String> password;
    public static volatile SingularAttribute<Tabungan, Long> rekening;
    public static volatile SingularAttribute<Tabungan, Long> saldo;
    public static volatile SingularAttribute<Tabungan, String> userName;
    public static volatile SingularAttribute<Tabungan, Nasabah> nasabah;

}