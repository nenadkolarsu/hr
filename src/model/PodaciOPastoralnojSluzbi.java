/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ms
 */
@Entity
@Table(name = "podaci_o_pastoralnoj_sluzbi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findAll", query = "SELECT p FROM PodaciOPastoralnojSluzbi p"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findById", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.id = :id"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByUserId", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.userId = :userId"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByJmbg", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.jmbg = :jmbg"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByRbr", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.rbr = :rbr"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByMestoSluzbe", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.mestoSluzbe = :mestoSluzbe"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByMestoSluzbeId", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.mestoSluzbeId = :mestoSluzbeId"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByMestoSluzbeSifra", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.mestoSluzbeSifra = :mestoSluzbeSifra"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivUstanove", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivUstanove = :nazivUstanove"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivUstanoveId", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivUstanoveId = :nazivUstanoveId"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivUstanoveSifra", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivUstanoveSifra = :nazivUstanoveSifra"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivZupe", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivZupe = :nazivZupe"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivZupeId", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivZupeId = :nazivZupeId"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByNazivZupeSifra", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.nazivZupeSifra = :nazivZupeSifra"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findBySvojstvo", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.svojstvo = :svojstvo"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findBySvojstvoId", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.svojstvoId = :svojstvoId"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findBySvojstvoSifra", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.svojstvoSifra = :svojstvoSifra"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByDekret", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.dekret = :dekret"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByPocetakSluzbeOd", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.pocetakSluzbeOd = :pocetakSluzbeOd"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByTrajanjeSluzbeDo", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.trajanjeSluzbeDo = :trajanjeSluzbeDo"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByAktivan", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.aktivan = :aktivan"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByDatumVreme", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.datumVreme = :datumVreme"),
    @NamedQuery(name = "PodaciOPastoralnojSluzbi.findByKorisnik", query = "SELECT p FROM PodaciOPastoralnojSluzbi p WHERE p.korisnik = :korisnik")})
public class PodaciOPastoralnojSluzbi implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "user_id")
    private int userId;
    @Basic(optional = false)
    @Column(name = "jmbg")
    private String jmbg;
    @Basic(optional = false)
    @Column(name = "rbr")
    private int rbr;
    @Basic(optional = false)
    @Column(name = "mesto_sluzbe")
    private String mestoSluzbe;
    @Basic(optional = false)
    @Column(name = "mesto_sluzbe_id")
    private int mestoSluzbeId;
    @Basic(optional = false)
    @Column(name = "mesto_sluzbe_sifra")
    private int mestoSluzbeSifra;
    @Basic(optional = false)
    @Column(name = "naziv_ustanove")
    private String nazivUstanove;
    @Basic(optional = false)
    @Column(name = "naziv_ustanove_id")
    private int nazivUstanoveId;
    @Basic(optional = false)
    @Column(name = "naziv_ustanove_sifra")
    private int nazivUstanoveSifra;
    @Basic(optional = false)
    @Column(name = "naziv_zupe")
    private String nazivZupe;
    @Basic(optional = false)
    @Column(name = "naziv_zupe_id")
    private int nazivZupeId;
    @Basic(optional = false)
    @Column(name = "naziv_zupe_sifra")
    private int nazivZupeSifra;
    @Basic(optional = false)
    @Column(name = "svojstvo")
    private String svojstvo;
    @Basic(optional = false)
    @Column(name = "svojstvo_id")
    private int svojstvoId;
    @Basic(optional = false)
    @Column(name = "svojstvo_sifra")
    private int svojstvoSifra;
    @Basic(optional = false)
    @Column(name = "dekret")
    private String dekret;
    @Basic(optional = false)
    @Column(name = "pocetak_sluzbe_od")
    @Temporal(TemporalType.DATE)
    private Date pocetakSluzbeOd;
    @Basic(optional = false)
    @Column(name = "trajanje_sluzbe_do")
    @Temporal(TemporalType.DATE)
    private Date trajanjeSluzbeDo;
    @Basic(optional = false)
    @Column(name = "aktivan")
    private boolean aktivan;
    @Basic(optional = false)
    @Column(name = "datum_vreme")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datumVreme;
    @Basic(optional = false)
    @Column(name = "korisnik")
    private String korisnik;

    public PodaciOPastoralnojSluzbi() {
    }

    public PodaciOPastoralnojSluzbi(Integer id) {
        this.id = id;
    }

    public PodaciOPastoralnojSluzbi(Integer id, int userId, String jmbg, int rbr, String mestoSluzbe, int mestoSluzbeId, int mestoSluzbeSifra, String nazivUstanove, int nazivUstanoveId, int nazivUstanoveSifra, String nazivZupe, int nazivZupeId, int nazivZupeSifra, String svojstvo, int svojstvoId, int svojstvoSifra, String dekret, Date pocetakSluzbeOd, Date trajanjeSluzbeDo, boolean aktivan, Date datumVreme, String korisnik) {
        this.id = id;
        this.userId = userId;
        this.jmbg = jmbg;
        this.rbr = rbr;
        this.mestoSluzbe = mestoSluzbe;
        this.mestoSluzbeId = mestoSluzbeId;
        this.mestoSluzbeSifra = mestoSluzbeSifra;
        this.nazivUstanove = nazivUstanove;
        this.nazivUstanoveId = nazivUstanoveId;
        this.nazivUstanoveSifra = nazivUstanoveSifra;
        this.nazivZupe = nazivZupe;
        this.nazivZupeId = nazivZupeId;
        this.nazivZupeSifra = nazivZupeSifra;
        this.svojstvo = svojstvo;
        this.svojstvoId = svojstvoId;
        this.svojstvoSifra = svojstvoSifra;
        this.dekret = dekret;
        this.pocetakSluzbeOd = pocetakSluzbeOd;
        this.trajanjeSluzbeDo = trajanjeSluzbeDo;
        this.aktivan = aktivan;
        this.datumVreme = datumVreme;
        this.korisnik = korisnik;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public int getRbr() {
        return rbr;
    }

    public void setRbr(int rbr) {
        this.rbr = rbr;
    }

    public String getMestoSluzbe() {
        return mestoSluzbe;
    }

    public void setMestoSluzbe(String mestoSluzbe) {
        this.mestoSluzbe = mestoSluzbe;
    }

    public int getMestoSluzbeId() {
        return mestoSluzbeId;
    }

    public void setMestoSluzbeId(int mestoSluzbeId) {
        this.mestoSluzbeId = mestoSluzbeId;
    }

    public int getMestoSluzbeSifra() {
        return mestoSluzbeSifra;
    }

    public void setMestoSluzbeSifra(int mestoSluzbeSifra) {
        this.mestoSluzbeSifra = mestoSluzbeSifra;
    }

    public String getNazivUstanove() {
        return nazivUstanove;
    }

    public void setNazivUstanove(String nazivUstanove) {
        this.nazivUstanove = nazivUstanove;
    }

    public int getNazivUstanoveId() {
        return nazivUstanoveId;
    }

    public void setNazivUstanoveId(int nazivUstanoveId) {
        this.nazivUstanoveId = nazivUstanoveId;
    }

    public int getNazivUstanoveSifra() {
        return nazivUstanoveSifra;
    }

    public void setNazivUstanoveSifra(int nazivUstanoveSifra) {
        this.nazivUstanoveSifra = nazivUstanoveSifra;
    }

    public String getNazivZupe() {
        return nazivZupe;
    }

    public void setNazivZupe(String nazivZupe) {
        this.nazivZupe = nazivZupe;
    }

    public int getNazivZupeId() {
        return nazivZupeId;
    }

    public void setNazivZupeId(int nazivZupeId) {
        this.nazivZupeId = nazivZupeId;
    }

    public int getNazivZupeSifra() {
        return nazivZupeSifra;
    }

    public void setNazivZupeSifra(int nazivZupeSifra) {
        this.nazivZupeSifra = nazivZupeSifra;
    }

    public String getSvojstvo() {
        return svojstvo;
    }

    public void setSvojstvo(String svojstvo) {
        this.svojstvo = svojstvo;
    }

    public int getSvojstvoId() {
        return svojstvoId;
    }

    public void setSvojstvoId(int svojstvoId) {
        this.svojstvoId = svojstvoId;
    }

    public int getSvojstvoSifra() {
        return svojstvoSifra;
    }

    public void setSvojstvoSifra(int svojstvoSifra) {
        this.svojstvoSifra = svojstvoSifra;
    }

    public String getDekret() {
        return dekret;
    }

    public void setDekret(String dekret) {
        this.dekret = dekret;
    }

    public Date getPocetakSluzbeOd() {
        return pocetakSluzbeOd;
    }

    public void setPocetakSluzbeOd(Date pocetakSluzbeOd) {
        this.pocetakSluzbeOd = pocetakSluzbeOd;
    }

    public Date getTrajanjeSluzbeDo() {
        return trajanjeSluzbeDo;
    }

    public void setTrajanjeSluzbeDo(Date trajanjeSluzbeDo) {
        this.trajanjeSluzbeDo = trajanjeSluzbeDo;
    }

    public boolean getAktivan() {
        return aktivan;
    }

    public void setAktivan(boolean aktivan) {
        this.aktivan = aktivan;
    }

    public Date getDatumVreme() {
        return datumVreme;
    }

    public void setDatumVreme(Date datumVreme) {
        this.datumVreme = datumVreme;
    }

    public String getKorisnik() {
        return korisnik;
    }

    public void setKorisnik(String korisnik) {
        this.korisnik = korisnik;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PodaciOPastoralnojSluzbi)) {
            return false;
        }
        PodaciOPastoralnojSluzbi other = (PodaciOPastoralnojSluzbi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.PodaciOPastoralnojSluzbi[ id=" + id + " ]";
    }
    
}
