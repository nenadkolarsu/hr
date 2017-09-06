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
@Table(name = "podaci_o_prijavi_i_osiguranju")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findAll", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findById", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.id = :id"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByUserId", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.userId = :userId"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByJmbg", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.jmbg = :jmbg"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByRbr", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.rbr = :rbr"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByMesto", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.mesto = :mesto"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByMestoId", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.mestoId = :mestoId"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByUstanova", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.ustanova = :ustanova"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByUstanovaId", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.ustanovaId = :ustanovaId"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findBySvojstvoOsiguranika", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.svojstvoOsiguranika = :svojstvoOsiguranika"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findBySvojstvoOsiguranikaId", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.svojstvoOsiguranikaId = :svojstvoOsiguranikaId"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByOpstinaId", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.opstinaId = :opstinaId"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByOpstinaSifra", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.opstinaSifra = :opstinaSifra"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByOpstina", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.opstina = :opstina"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByPocetakOd", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.pocetakOd = :pocetakOd"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByTrajanjeDo", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.trajanjeDo = :trajanjeDo"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByDatumVreme", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.datumVreme = :datumVreme"),
    @NamedQuery(name = "PodaciOPrijaviIOsiguranju.findByAktivan", query = "SELECT p FROM PodaciOPrijaviIOsiguranju p WHERE p.aktivan = :aktivan")})
public class PodaciOPrijaviIOsiguranju implements Serializable {
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
    @Column(name = "mesto")
    private String mesto;
    @Column(name = "mesto_id")
    private Integer mestoId;
    @Column(name = "ustanova")
    private String ustanova;
    @Column(name = "ustanova_id")
    private Integer ustanovaId;
    @Column(name = "svojstvo_osiguranika")
    private String svojstvoOsiguranika;
    @Column(name = "svojstvo_osiguranika_id")
    private Integer svojstvoOsiguranikaId;
    @Basic(optional = false)
    @Column(name = "opstina_id")
    private int opstinaId;
    @Basic(optional = false)
    @Column(name = "opstina_sifra")
    private String opstinaSifra;
    @Basic(optional = false)
    @Column(name = "opstina")
    private String opstina;
    @Basic(optional = false)
    @Column(name = "pocetak_od")
    @Temporal(TemporalType.DATE)
    private Date pocetakOd;
    @Basic(optional = false)
    @Column(name = "trajanje_do")
    @Temporal(TemporalType.DATE)
    private Date trajanjeDo;
    @Basic(optional = false)
    @Column(name = "datum_vreme")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datumVreme;
    @Basic(optional = false)
    @Column(name = "aktivan")
    private boolean aktivan;

    public PodaciOPrijaviIOsiguranju() {
    }

    public PodaciOPrijaviIOsiguranju(Integer id) {
        this.id = id;
    }

    public PodaciOPrijaviIOsiguranju(Integer id, int opstinaId, String opstinaSifra, String opstina, Date pocetakOd, Date trajanjeDo, Date datumVreme, boolean aktivan) {
        this.id = id;
        this.opstinaId = opstinaId;
        this.opstinaSifra = opstinaSifra;
        this.opstina = opstina;
        this.pocetakOd = pocetakOd;
        this.trajanjeDo = trajanjeDo;
        this.datumVreme = datumVreme;
        this.aktivan = aktivan;
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

    public String getMesto() {
        return mesto;
    }

    public void setMesto(String mesto) {
        this.mesto = mesto;
    }

    public Integer getMestoId() {
        return mestoId;
    }

    public void setMestoId(Integer mestoId) {
        this.mestoId = mestoId;
    }

    public String getUstanova() {
        return ustanova;
    }

    public void setUstanova(String ustanova) {
        this.ustanova = ustanova;
    }

    public Integer getUstanovaId() {
        return ustanovaId;
    }

    public void setUstanovaId(Integer ustanovaId) {
        this.ustanovaId = ustanovaId;
    }

    public String getSvojstvoOsiguranika() {
        return svojstvoOsiguranika;
    }

    public void setSvojstvoOsiguranika(String svojstvoOsiguranika) {
        this.svojstvoOsiguranika = svojstvoOsiguranika;
    }

    public Integer getSvojstvoOsiguranikaId() {
        return svojstvoOsiguranikaId;
    }

    public void setSvojstvoOsiguranikaId(Integer svojstvoOsiguranikaId) {
        this.svojstvoOsiguranikaId = svojstvoOsiguranikaId;
    }

    public int getOpstinaId() {
        return opstinaId;
    }

    public void setOpstinaId(int opstinaId) {
        this.opstinaId = opstinaId;
    }

    public String getOpstinaSifra() {
        return opstinaSifra;
    }

    public void setOpstinaSifra(String opstinaSifra) {
        this.opstinaSifra = opstinaSifra;
    }

    public String getOpstina() {
        return opstina;
    }

    public void setOpstina(String opstina) {
        this.opstina = opstina;
    }

    public Date getPocetakOd() {
        return pocetakOd;
    }

    public void setPocetakOd(Date pocetakOd) {
        this.pocetakOd = pocetakOd;
    }

    public Date getTrajanjeDo() {
        return trajanjeDo;
    }

    public void setTrajanjeDo(Date trajanjeDo) {
        this.trajanjeDo = trajanjeDo;
    }

    public Date getDatumVreme() {
        return datumVreme;
    }

    public void setDatumVreme(Date datumVreme) {
        this.datumVreme = datumVreme;
    }

    public boolean getAktivan() {
        return aktivan;
    }

    public void setAktivan(boolean aktivan) {
        this.aktivan = aktivan;
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
        if (!(object instanceof PodaciOPrijaviIOsiguranju)) {
            return false;
        }
        PodaciOPrijaviIOsiguranju other = (PodaciOPrijaviIOsiguranju) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.PodaciOPrijaviIOsiguranju[ id=" + id + " ]";
    }
    
}
