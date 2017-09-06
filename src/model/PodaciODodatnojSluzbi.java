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
@Table(name = "podaci_o_dodatnoj_sluzbi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PodaciODodatnojSluzbi.findAll", query = "SELECT p FROM PodaciODodatnojSluzbi p"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findById", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.id = :id"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByUserId", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.userId = :userId"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByJmbg", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.jmbg = :jmbg"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByRbr", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.rbr = :rbr"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByMestoSluzbe", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.mestoSluzbe = :mestoSluzbe"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByMestoSluzbeId", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.mestoSluzbeId = :mestoSluzbeId"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByMestoSluzbeSifra", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.mestoSluzbeSifra = :mestoSluzbeSifra"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivUstanove", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivUstanove = :nazivUstanove"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivUstanoveId", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivUstanoveId = :nazivUstanoveId"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivUstanoveSifra", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivUstanoveSifra = :nazivUstanoveSifra"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivZupe", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivZupe = :nazivZupe"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivZupeId", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivZupeId = :nazivZupeId"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByNazivZupeSifra", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.nazivZupeSifra = :nazivZupeSifra"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findBySvojstvo", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.svojstvo = :svojstvo"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findBySvojstvoId", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.svojstvoId = :svojstvoId"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findBySvojstvoSifra", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.svojstvoSifra = :svojstvoSifra"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByDekret", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.dekret = :dekret"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByPocetakSluzbeOd", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.pocetakSluzbeOd = :pocetakSluzbeOd"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByTrajanjeSluzbeDo", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.trajanjeSluzbeDo = :trajanjeSluzbeDo"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByAktivan", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.aktivan = :aktivan"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByDatumVreme", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.datumVreme = :datumVreme"),
    @NamedQuery(name = "PodaciODodatnojSluzbi.findByKorisnik", query = "SELECT p FROM PodaciODodatnojSluzbi p WHERE p.korisnik = :korisnik")})
public class PodaciODodatnojSluzbi implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "user_id")
    private Integer userId;
    @Column(name = "jmbg")
    private String jmbg;
    @Column(name = "rbr")
    private Integer rbr;
    @Column(name = "mesto_sluzbe")
    private String mestoSluzbe;
    @Column(name = "mesto_sluzbe_id")
    private Integer mestoSluzbeId;
    @Column(name = "mesto_sluzbe_sifra")
    private Integer mestoSluzbeSifra;
    @Column(name = "naziv_ustanove")
    private String nazivUstanove;
    @Column(name = "naziv_ustanove_id")
    private Integer nazivUstanoveId;
    @Column(name = "naziv_ustanove_sifra")
    private Integer nazivUstanoveSifra;
    @Column(name = "naziv_zupe")
    private String nazivZupe;
    @Column(name = "naziv_zupe_id")
    private Integer nazivZupeId;
    @Column(name = "naziv_zupe_sifra")
    private Integer nazivZupeSifra;
    @Column(name = "svojstvo")
    private String svojstvo;
    @Column(name = "svojstvo_id")
    private Integer svojstvoId;
    @Column(name = "svojstvo_sifra")
    private Integer svojstvoSifra;
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
    @Column(name = "korisnik")
    private String korisnik;

    public PodaciODodatnojSluzbi() {
    }

    public PodaciODodatnojSluzbi(Integer id) {
        this.id = id;
    }

    public PodaciODodatnojSluzbi(Integer id, Date pocetakSluzbeOd, Date trajanjeSluzbeDo, boolean aktivan, Date datumVreme) {
        this.id = id;
        this.pocetakSluzbeOd = pocetakSluzbeOd;
        this.trajanjeSluzbeDo = trajanjeSluzbeDo;
        this.aktivan = aktivan;
        this.datumVreme = datumVreme;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public Integer getRbr() {
        return rbr;
    }

    public void setRbr(Integer rbr) {
        this.rbr = rbr;
    }

    public String getMestoSluzbe() {
        return mestoSluzbe;
    }

    public void setMestoSluzbe(String mestoSluzbe) {
        this.mestoSluzbe = mestoSluzbe;
    }

    public Integer getMestoSluzbeId() {
        return mestoSluzbeId;
    }

    public void setMestoSluzbeId(Integer mestoSluzbeId) {
        this.mestoSluzbeId = mestoSluzbeId;
    }

    public Integer getMestoSluzbeSifra() {
        return mestoSluzbeSifra;
    }

    public void setMestoSluzbeSifra(Integer mestoSluzbeSifra) {
        this.mestoSluzbeSifra = mestoSluzbeSifra;
    }

    public String getNazivUstanove() {
        return nazivUstanove;
    }

    public void setNazivUstanove(String nazivUstanove) {
        this.nazivUstanove = nazivUstanove;
    }

    public Integer getNazivUstanoveId() {
        return nazivUstanoveId;
    }

    public void setNazivUstanoveId(Integer nazivUstanoveId) {
        this.nazivUstanoveId = nazivUstanoveId;
    }

    public Integer getNazivUstanoveSifra() {
        return nazivUstanoveSifra;
    }

    public void setNazivUstanoveSifra(Integer nazivUstanoveSifra) {
        this.nazivUstanoveSifra = nazivUstanoveSifra;
    }

    public String getNazivZupe() {
        return nazivZupe;
    }

    public void setNazivZupe(String nazivZupe) {
        this.nazivZupe = nazivZupe;
    }

    public Integer getNazivZupeId() {
        return nazivZupeId;
    }

    public void setNazivZupeId(Integer nazivZupeId) {
        this.nazivZupeId = nazivZupeId;
    }

    public Integer getNazivZupeSifra() {
        return nazivZupeSifra;
    }

    public void setNazivZupeSifra(Integer nazivZupeSifra) {
        this.nazivZupeSifra = nazivZupeSifra;
    }

    public String getSvojstvo() {
        return svojstvo;
    }

    public void setSvojstvo(String svojstvo) {
        this.svojstvo = svojstvo;
    }

    public Integer getSvojstvoId() {
        return svojstvoId;
    }

    public void setSvojstvoId(Integer svojstvoId) {
        this.svojstvoId = svojstvoId;
    }

    public Integer getSvojstvoSifra() {
        return svojstvoSifra;
    }

    public void setSvojstvoSifra(Integer svojstvoSifra) {
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
        if (!(object instanceof PodaciODodatnojSluzbi)) {
            return false;
        }
        PodaciODodatnojSluzbi other = (PodaciODodatnojSluzbi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.PodaciODodatnojSluzbi[ id=" + id + " ]";
    }
    
}
