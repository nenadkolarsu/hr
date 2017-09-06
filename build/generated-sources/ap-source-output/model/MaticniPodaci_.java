package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-03T17:29:10")
@StaticMetamodel(MaticniPodaci.class)
public class MaticniPodaci_ { 

    public static volatile SingularAttribute<MaticniPodaci, Integer> id;
    public static volatile SingularAttribute<MaticniPodaci, String> naziv;
    public static volatile SingularAttribute<MaticniPodaci, Date> datumVreme;
    public static volatile SingularAttribute<MaticniPodaci, String> sifra;
    public static volatile SingularAttribute<MaticniPodaci, Boolean> aktivan;

}