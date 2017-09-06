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
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.swing.ImageIcon;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ms
 */
@Entity
@Table(name = "licni_podaci")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LicniPodaci.findAll", query = "SELECT l FROM LicniPodaci l"),
    @NamedQuery(name = "LicniPodaci.findById", query = "SELECT l FROM LicniPodaci l WHERE l.id = :id"),
    @NamedQuery(name = "LicniPodaci.findByOslovljavanjeSifra", query = "SELECT l FROM LicniPodaci l WHERE l.oslovljavanjeSifra = :oslovljavanjeSifra"),
    @NamedQuery(name = "LicniPodaci.findByOslovljavanjeId", query = "SELECT l FROM LicniPodaci l WHERE l.oslovljavanjeId = :oslovljavanjeId"),
    @NamedQuery(name = "LicniPodaci.findByOslovljavanje", query = "SELECT l FROM LicniPodaci l WHERE l.oslovljavanje = :oslovljavanje"),
    @NamedQuery(name = "LicniPodaci.findByCrkvenaTitulaSifra", query = "SELECT l FROM LicniPodaci l WHERE l.crkvenaTitulaSifra = :crkvenaTitulaSifra"),
    @NamedQuery(name = "LicniPodaci.findByCrkvenaTitulaId", query = "SELECT l FROM LicniPodaci l WHERE l.crkvenaTitulaId = :crkvenaTitulaId"),
    @NamedQuery(name = "LicniPodaci.findByCrkvenaTitula", query = "SELECT l FROM LicniPodaci l WHERE l.crkvenaTitula = :crkvenaTitula"),
    @NamedQuery(name = "LicniPodaci.findByAkademskaTitulaSifra", query = "SELECT l FROM LicniPodaci l WHERE l.akademskaTitulaSifra = :akademskaTitulaSifra"),
    @NamedQuery(name = "LicniPodaci.findByAkademskaTitulaId", query = "SELECT l FROM LicniPodaci l WHERE l.akademskaTitulaId = :akademskaTitulaId"),
    @NamedQuery(name = "LicniPodaci.findByAkademskaTitula", query = "SELECT l FROM LicniPodaci l WHERE l.akademskaTitula = :akademskaTitula"),
    @NamedQuery(name = "LicniPodaci.findByJmbg", query = "SELECT l FROM LicniPodaci l WHERE l.jmbg = :jmbg"),
    @NamedQuery(name = "LicniPodaci.findByIme", query = "SELECT l FROM LicniPodaci l WHERE l.ime = :ime"),
    @NamedQuery(name = "LicniPodaci.findByPrezime", query = "SELECT l FROM LicniPodaci l WHERE l.prezime = :prezime"),
    @NamedQuery(name = "LicniPodaci.findByImeULk", query = "SELECT l FROM LicniPodaci l WHERE l.imeULk = :imeULk"),
    @NamedQuery(name = "LicniPodaci.findByPrezimeULk", query = "SELECT l FROM LicniPodaci l WHERE l.prezimeULk = :prezimeULk"),
    @NamedQuery(name = "LicniPodaci.findByImeOca", query = "SELECT l FROM LicniPodaci l WHERE l.imeOca = :imeOca"),
    @NamedQuery(name = "LicniPodaci.findByImeMajke", query = "SELECT l FROM LicniPodaci l WHERE l.imeMajke = :imeMajke"),
    @NamedQuery(name = "LicniPodaci.findByDatumRodjenja", query = "SELECT l FROM LicniPodaci l WHERE l.datumRodjenja = :datumRodjenja"),
    @NamedQuery(name = "LicniPodaci.findByMestoRodjenjaId", query = "SELECT l FROM LicniPodaci l WHERE l.mestoRodjenjaId = :mestoRodjenjaId"),
    @NamedQuery(name = "LicniPodaci.findByMestoRodjenja", query = "SELECT l FROM LicniPodaci l WHERE l.mestoRodjenja = :mestoRodjenja"),
    @NamedQuery(name = "LicniPodaci.findByMestoRodjenjaSifra", query = "SELECT l FROM LicniPodaci l WHERE l.mestoRodjenjaSifra = :mestoRodjenjaSifra"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeMestoId = :srednjeObrazovanjeMestoId"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeMestoSifra = :srednjeObrazovanjeMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeMesto", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeMesto = :srednjeObrazovanjeMesto"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeSkolaId", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeSkolaId = :srednjeObrazovanjeSkolaId"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeSkolaSifra", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeSkolaSifra = :srednjeObrazovanjeSkolaSifra"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeSkola", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeSkola = :srednjeObrazovanjeSkola"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeOd", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeOd = :srednjeObrazovanjeOd"),
    @NamedQuery(name = "LicniPodaci.findBySrednjeObrazovanjeDo", query = "SELECT l FROM LicniPodaci l WHERE l.srednjeObrazovanjeDo = :srednjeObrazovanjeDo"),
    @NamedQuery(name = "LicniPodaci.findByBrprotokola", query = "SELECT l FROM LicniPodaci l WHERE l.brprotokola = :brprotokola"),
    @NamedQuery(name = "LicniPodaci.findByPol", query = "SELECT l FROM LicniPodaci l WHERE l.pol = :pol"),
    @NamedQuery(name = "LicniPodaci.findByDrzavarodj", query = "SELECT l FROM LicniPodaci l WHERE l.drzavarodj = :drzavarodj"),
    @NamedQuery(name = "LicniPodaci.findByIdDrzavarodj", query = "SELECT l FROM LicniPodaci l WHERE l.idDrzavarodj = :idDrzavarodj"),
    @NamedQuery(name = "LicniPodaci.findByAdresa", query = "SELECT l FROM LicniPodaci l WHERE l.adresa = :adresa"),
    @NamedQuery(name = "LicniPodaci.findByPtt", query = "SELECT l FROM LicniPodaci l WHERE l.ptt = :ptt"),
    @NamedQuery(name = "LicniPodaci.findByIdPtt", query = "SELECT l FROM LicniPodaci l WHERE l.idPtt = :idPtt"),
    @NamedQuery(name = "LicniPodaci.findByTelefon", query = "SELECT l FROM LicniPodaci l WHERE l.telefon = :telefon"),
    @NamedQuery(name = "LicniPodaci.findByEMail", query = "SELECT l FROM LicniPodaci l WHERE l.eMail = :eMail"),
    @NamedQuery(name = "LicniPodaci.findByStatus", query = "SELECT l FROM LicniPodaci l WHERE l.status = :status"),
    @NamedQuery(name = "LicniPodaci.findByIdStatus", query = "SELECT l FROM LicniPodaci l WHERE l.idStatus = :idStatus"),
    @NamedQuery(name = "LicniPodaci.findByDrzavljanstvo", query = "SELECT l FROM LicniPodaci l WHERE l.drzavljanstvo = :drzavljanstvo"),
    @NamedQuery(name = "LicniPodaci.findByIdDrzavljanstvo", query = "SELECT l FROM LicniPodaci l WHERE l.idDrzavljanstvo = :idDrzavljanstvo"),
    @NamedQuery(name = "LicniPodaci.findByNacionalnost", query = "SELECT l FROM LicniPodaci l WHERE l.nacionalnost = :nacionalnost"),
    @NamedQuery(name = "LicniPodaci.findByIdNacionalnost", query = "SELECT l FROM LicniPodaci l WHERE l.idNacionalnost = :idNacionalnost"),
    @NamedQuery(name = "LicniPodaci.findBySlika", query = "SELECT l FROM LicniPodaci l WHERE l.slika = :slika"),
    @NamedQuery(name = "LicniPodaci.findByBankaIsplata", query = "SELECT l FROM LicniPodaci l WHERE l.bankaIsplata = :bankaIsplata"),
    @NamedQuery(name = "LicniPodaci.findByIdBankaIsplata", query = "SELECT l FROM LicniPodaci l WHERE l.idBankaIsplata = :idBankaIsplata"),
    @NamedQuery(name = "LicniPodaci.findByRacunIsplate", query = "SELECT l FROM LicniPodaci l WHERE l.racunIsplate = :racunIsplate"),
    @NamedQuery(name = "LicniPodaci.findByOpstina", query = "SELECT l FROM LicniPodaci l WHERE l.opstina = :opstina"),
    @NamedQuery(name = "LicniPodaci.findByIdOpstina", query = "SELECT l FROM LicniPodaci l WHERE l.idOpstina = :idOpstina"),
    @NamedQuery(name = "LicniPodaci.findBySifra", query = "SELECT l FROM LicniPodaci l WHERE l.sifra = :sifra"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMestoId = :bogoslovijaMestoId"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMestoSifra = :bogoslovijaMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto = :bogoslovijaMesto"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto1Id", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto1Id = :bogoslovijaMesto1Id"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto1Sifra", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto1Sifra = :bogoslovijaMesto1Sifra"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto1", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto1 = :bogoslovijaMesto1"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto2Id", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto2Id = :bogoslovijaMesto2Id"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto2Sifra", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto2Sifra = :bogoslovijaMesto2Sifra"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaMesto2", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaMesto2 = :bogoslovijaMesto2"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodOd", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodOd = :bogoslovijaPeriodOd"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodDo", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodDo = :bogoslovijaPeriodDo"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodOd1", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodOd1 = :bogoslovijaPeriodOd1"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodDo1", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodDo1 = :bogoslovijaPeriodDo1"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodOd2", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodOd2 = :bogoslovijaPeriodOd2"),
    @NamedQuery(name = "LicniPodaci.findByBogoslovijaPeriodDo2", query = "SELECT l FROM LicniPodaci l WHERE l.bogoslovijaPeriodDo2 = :bogoslovijaPeriodDo2"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatMestoId = :djakonatMestoId"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatMestoSifra = :djakonatMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatMesto", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatMesto = :djakonatMesto"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatDatum", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatDatum = :djakonatDatum"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatZarediteljId", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatZarediteljId = :djakonatZarediteljId"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatZarediteljSifra", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatZarediteljSifra = :djakonatZarediteljSifra"),
    @NamedQuery(name = "LicniPodaci.findByDjakonatZareditelj", query = "SELECT l FROM LicniPodaci l WHERE l.djakonatZareditelj = :djakonatZareditelj"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratMestoId = :prezbiteratMestoId"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratMestoSifra = :prezbiteratMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratMesto", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratMesto = :prezbiteratMesto"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratDatum", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratDatum = :prezbiteratDatum"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratZarediteljId", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratZarediteljId = :prezbiteratZarediteljId"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratZarediteljSifra", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratZarediteljSifra = :prezbiteratZarediteljSifra"),
    @NamedQuery(name = "LicniPodaci.findByPrezbiteratZareditelj", query = "SELECT l FROM LicniPodaci l WHERE l.prezbiteratZareditelj = :prezbiteratZareditelj"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijMestoId = :dodiplomskiStudijMestoId"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijMestoSifra = :dodiplomskiStudijMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijMesto", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijMesto = :dodiplomskiStudijMesto"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijNazivUstanoveId", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijNazivUstanoveId = :dodiplomskiStudijNazivUstanoveId"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijNazivUstanoveSifra", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijNazivUstanoveSifra = :dodiplomskiStudijNazivUstanoveSifra"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijNazivUstanove", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijNazivUstanove = :dodiplomskiStudijNazivUstanove"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijPeriodOd", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijPeriodOd = :dodiplomskiStudijPeriodOd"),
    @NamedQuery(name = "LicniPodaci.findByDodiplomskiStudijPeriodDo", query = "SELECT l FROM LicniPodaci l WHERE l.dodiplomskiStudijPeriodDo = :dodiplomskiStudijPeriodDo"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijMestoId = :magisterijMestoId"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijMestoSifra = :magisterijMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijMesto", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijMesto = :magisterijMesto"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijNazivUstanoveId", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijNazivUstanoveId = :magisterijNazivUstanoveId"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijNazivUstanoveSifra", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijNazivUstanoveSifra = :magisterijNazivUstanoveSifra"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijNazivUstanove", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijNazivUstanove = :magisterijNazivUstanove"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijPeriodOd", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijPeriodOd = :magisterijPeriodOd"),
    @NamedQuery(name = "LicniPodaci.findByMagisterijPeriodDo", query = "SELECT l FROM LicniPodaci l WHERE l.magisterijPeriodDo = :magisterijPeriodDo"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratMestoId", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratMestoId = :doktoratMestoId"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratMestoSifra", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratMestoSifra = :doktoratMestoSifra"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratMesto", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratMesto = :doktoratMesto"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratNazivUstanoveId", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratNazivUstanoveId = :doktoratNazivUstanoveId"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratNazivUstanoveSifra", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratNazivUstanoveSifra = :doktoratNazivUstanoveSifra"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratNazivUstanove", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratNazivUstanove = :doktoratNazivUstanove"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratPeriodOd", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratPeriodOd = :doktoratPeriodOd"),
    @NamedQuery(name = "LicniPodaci.findByDoktoratPeriodDo", query = "SELECT l FROM LicniPodaci l WHERE l.doktoratPeriodDo = :doktoratPeriodDo"),
    @NamedQuery(name = "LicniPodaci.findByDatumVreme", query = "SELECT l FROM LicniPodaci l WHERE l.datumVreme = :datumVreme"),
    @NamedQuery(name = "LicniPodaci.findByAktivan", query = "SELECT l FROM LicniPodaci l WHERE l.aktivan = :aktivan")})
public class LicniPodaci implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "oslovljavanje_sifra")
    private Integer oslovljavanjeSifra;
    @Column(name = "oslovljavanje_id")
    private Integer oslovljavanjeId;
    @Column(name = "oslovljavanje")
    private String oslovljavanje;
    @Column(name = "crkvena_titula_sifra")
    private Integer crkvenaTitulaSifra;
    @Column(name = "crkvena_titula_id")
    private Integer crkvenaTitulaId;
    @Column(name = "crkvena_titula")
    private String crkvenaTitula;
    @Column(name = "akademska_titula_sifra")
    private Integer akademskaTitulaSifra;
    @Column(name = "akademska_titula_id")
    private Integer akademskaTitulaId;
    @Column(name = "akademska_titula")
    private String akademskaTitula;
    @Column(name = "jmbg")
    private String jmbg;
    @Column(name = "ime")
    private String ime;
    @Column(name = "prezime")
    private String prezime;
    @Column(name = "ime_u_lk")
    private String imeULk;
    @Column(name = "prezime_u_lk")
    private String prezimeULk;
    @Column(name = "ime_oca")
    private String imeOca;
    @Column(name = "ime_majke")
    private String imeMajke;
    @Column(name = "datum_rodjenja")
    @Temporal(TemporalType.DATE)
    private Date datumRodjenja;
    @Column(name = "mesto_rodjenja_id")
    private Integer mestoRodjenjaId;
    @Column(name = "mesto_rodjenja")
    private String mestoRodjenja;
    @Column(name = "mesto_rodjenja_sifra")
    private Integer mestoRodjenjaSifra;
    @Column(name = "srednje_obrazovanje_mesto_id")
    private Integer srednjeObrazovanjeMestoId;
    @Column(name = "srednje_obrazovanje_mesto_sifra")
    private Integer srednjeObrazovanjeMestoSifra;
    @Column(name = "srednje_obrazovanje_mesto")
    private String srednjeObrazovanjeMesto;
    @Column(name = "srednje_obrazovanje_skola_id")
    private Integer srednjeObrazovanjeSkolaId;
    @Column(name = "srednje_obrazovanje_skola_sifra")
    private Integer srednjeObrazovanjeSkolaSifra;
    @Column(name = "srednje_obrazovanje_skola")
    private String srednjeObrazovanjeSkola;
    @Column(name = "srednje_obrazovanje_od")
    private String srednjeObrazovanjeOd;
    @Column(name = "srednje_obrazovanje_do")
    private String srednjeObrazovanjeDo;
    @Column(name = "brprotokola")
    private String brprotokola;
    @Column(name = "pol")
    private String pol;
    @Column(name = "drzavarodj")
    private String drzavarodj;
    @Column(name = "id_drzavarodj")
    private String idDrzavarodj;
    @Column(name = "adresa")
    private String adresa;
    @Column(name = "ptt")
    private String ptt;
    @Column(name = "id_ptt")
    private Integer idPtt;
    @Column(name = "telefon")
    private String telefon;
    @Column(name = "e_mail")
    private String eMail;
    @Column(name = "status")
    private String status;
    @Column(name = "id_status")
    private Integer idStatus;
    @Column(name = "drzavljanstvo")
    private String drzavljanstvo;
    @Column(name = "id_drzavljanstvo")
    private Integer idDrzavljanstvo;
    @Column(name = "nacionalnost")
    private String nacionalnost;
    @Column(name = "id_nacionalnost")
    private Integer idNacionalnost;
    @Column(name = "slika")
    private String slika;
    @Column(name = "banka_isplata")
    private String bankaIsplata;
    @Column(name = "id_banka_isplata")
    private Integer idBankaIsplata;
    @Column(name = "racun_isplate")
    private String racunIsplate;
    @Column(name = "opstina")
    private String opstina;
    @Column(name = "id_opstina")
    private Integer idOpstina;
    @Column(name = "sifra")
    private String sifra;
    @Column(name = "bogoslovija_mesto_id")
    private Integer bogoslovijaMestoId;
    @Column(name = "bogoslovija_mesto_sifra")
    private String bogoslovijaMestoSifra;
    @Column(name = "bogoslovija_mesto")
    private String bogoslovijaMesto;
    @Column(name = "bogoslovija_mesto1_id")
    private Integer bogoslovijaMesto1Id;
    @Column(name = "bogoslovija_mesto1_sifra")
    private String bogoslovijaMesto1Sifra;
    @Column(name = "bogoslovija_mesto1")
    private String bogoslovijaMesto1;
    @Column(name = "bogoslovija_mesto2_id")
    private Integer bogoslovijaMesto2Id;
    @Column(name = "bogoslovija_mesto2_sifra")
    private String bogoslovijaMesto2Sifra;
    @Column(name = "bogoslovija_mesto2")
    private String bogoslovijaMesto2;
    @Column(name = "bogoslovija_period_od")
    private String bogoslovijaPeriodOd;
    @Column(name = "bogoslovija_period_do")
    private String bogoslovijaPeriodDo;
    @Column(name = "bogoslovija_period_od1")
    private String bogoslovijaPeriodOd1;
    @Column(name = "bogoslovija_period_do1")
    private String bogoslovijaPeriodDo1;
    @Column(name = "bogoslovija_period_od2")
    private String bogoslovijaPeriodOd2;
    @Column(name = "bogoslovija_period_do2")
    private String bogoslovijaPeriodDo2;
    @Column(name = "djakonat_mesto_id")
    private Integer djakonatMestoId;
    @Column(name = "djakonat_mesto_sifra")
    private String djakonatMestoSifra;
    @Column(name = "djakonat_mesto")
    private String djakonatMesto;
    @Column(name = "djakonat_datum")
    @Temporal(TemporalType.DATE)
    private Date djakonatDatum;
    @Column(name = "djakonat_zareditelj_id")
    private Integer djakonatZarediteljId;
    @Column(name = "djakonat_zareditelj_sifra")
    private String djakonatZarediteljSifra;
    @Column(name = "djakonat_zareditelj")
    private String djakonatZareditelj;
    @Column(name = "prezbiterat_mesto_id")
    private Integer prezbiteratMestoId;
    @Column(name = "prezbiterat_mesto_sifra")
    private String prezbiteratMestoSifra;
    @Column(name = "prezbiterat_mesto")
    private String prezbiteratMesto;
    @Column(name = "prezbiterat_datum")
    @Temporal(TemporalType.DATE)
    private Date prezbiteratDatum;
    @Column(name = "prezbiterat_zareditelj_id")
    private Integer prezbiteratZarediteljId;
    @Column(name = "prezbiterat_zareditelj_sifra")
    private String prezbiteratZarediteljSifra;
    @Column(name = "prezbiterat_zareditelj")
    private String prezbiteratZareditelj;
    @Column(name = "dodiplomski_studij_mesto_id")
    private Integer dodiplomskiStudijMestoId;
    @Column(name = "dodiplomski_studij_mesto_sifra")
    private String dodiplomskiStudijMestoSifra;
    @Column(name = "dodiplomski_studij_mesto")
    private String dodiplomskiStudijMesto;
    @Column(name = "dodiplomski_studij_naziv_ustanove_id")
    private Integer dodiplomskiStudijNazivUstanoveId;
    @Column(name = "dodiplomski_studij_naziv_ustanove_sifra")
    private String dodiplomskiStudijNazivUstanoveSifra;
    @Column(name = "dodiplomski_studij_naziv_ustanove")
    private String dodiplomskiStudijNazivUstanove;
    @Column(name = "dodiplomski_studij_period_od")
    private String dodiplomskiStudijPeriodOd;
    @Column(name = "dodiplomski_studij_period_do")
    private String dodiplomskiStudijPeriodDo;
    @Column(name = "magisterij_mesto_id")
    private Integer magisterijMestoId;
    @Column(name = "magisterij_mesto_sifra")
    private String magisterijMestoSifra;
    @Column(name = "magisterij_mesto")
    private String magisterijMesto;
    @Column(name = "magisterij_naziv_ustanove_id")
    private Integer magisterijNazivUstanoveId;
    @Column(name = "magisterij_naziv_ustanove_sifra")
    private String magisterijNazivUstanoveSifra;
    @Column(name = "magisterij_naziv_ustanove")
    private String magisterijNazivUstanove;
    @Column(name = "magisterij_period_od")
    private String magisterijPeriodOd;
    @Column(name = "magisterij_period_do")
    private String magisterijPeriodDo;
    @Column(name = "doktorat_mesto_id")
    private Integer doktoratMestoId;
    @Column(name = "doktorat_mesto_sifra")
    private String doktoratMestoSifra;
    @Column(name = "doktorat_mesto")
    private String doktoratMesto;
    @Column(name = "doktorat_naziv_ustanove_id")
    private Integer doktoratNazivUstanoveId;
    @Column(name = "doktorat_naziv_ustanove_sifra")
    private String doktoratNazivUstanoveSifra;
    @Column(name = "doktorat_naziv_ustanove")
    private String doktoratNazivUstanove;
    @Column(name = "doktorat_period_od")
    private String doktoratPeriodOd;
    @Column(name = "doktorat_period_do")
    private String doktoratPeriodDo;
    @Lob
    @Column(name = "photo")
    private byte[] photo;
    @Basic(optional = false)
    @Column(name = "datum_vreme")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datumVreme;
    @Basic(optional = false)
    @Column(name = "aktivan")
    private int aktivan;

    public LicniPodaci() {
    }

    public LicniPodaci(Integer id) {
        this.id = id;
    }

    public LicniPodaci(Integer id, Date datumVreme, int aktivan) {
        this.id = id;
        this.datumVreme = datumVreme;
        this.aktivan = aktivan;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOslovljavanjeSifra() {
        return oslovljavanjeSifra;
    }

    public void setOslovljavanjeSifra(Integer oslovljavanjeSifra) {
        this.oslovljavanjeSifra = oslovljavanjeSifra;
    }

    public Integer getOslovljavanjeId() {
        return oslovljavanjeId;
    }

    public void setOslovljavanjeId(Integer oslovljavanjeId) {
        this.oslovljavanjeId = oslovljavanjeId;
    }

    public String getOslovljavanje() {
        return oslovljavanje;
    }

    public void setOslovljavanje(String oslovljavanje) {
        this.oslovljavanje = oslovljavanje;
    }

    public Integer getCrkvenaTitulaSifra() {
        return crkvenaTitulaSifra;
    }

    public void setCrkvenaTitulaSifra(Integer crkvenaTitulaSifra) {
        this.crkvenaTitulaSifra = crkvenaTitulaSifra;
    }

    public Integer getCrkvenaTitulaId() {
        return crkvenaTitulaId;
    }

    public void setCrkvenaTitulaId(Integer crkvenaTitulaId) {
        this.crkvenaTitulaId = crkvenaTitulaId;
    }

    public String getCrkvenaTitula() {
        return crkvenaTitula;
    }

    public void setCrkvenaTitula(String crkvenaTitula) {
        this.crkvenaTitula = crkvenaTitula;
    }

    public Integer getAkademskaTitulaSifra() {
        return akademskaTitulaSifra;
    }

    public void setAkademskaTitulaSifra(Integer akademskaTitulaSifra) {
        this.akademskaTitulaSifra = akademskaTitulaSifra;
    }

    public Integer getAkademskaTitulaId() {
        return akademskaTitulaId;
    }

    public void setAkademskaTitulaId(Integer akademskaTitulaId) {
        this.akademskaTitulaId = akademskaTitulaId;
    }

    public String getAkademskaTitula() {
        return akademskaTitula;
    }

    public void setAkademskaTitula(String akademskaTitula) {
        this.akademskaTitula = akademskaTitula;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getImeULk() {
        return imeULk;
    }

    public void setImeULk(String imeULk) {
        this.imeULk = imeULk;
    }

    public String getPrezimeULk() {
        return prezimeULk;
    }

    public void setPrezimeULk(String prezimeULk) {
        this.prezimeULk = prezimeULk;
    }

    public String getImeOca() {
        return imeOca;
    }

    public void setImeOca(String imeOca) {
        this.imeOca = imeOca;
    }

    public String getImeMajke() {
        return imeMajke;
    }

    public void setImeMajke(String imeMajke) {
        this.imeMajke = imeMajke;
    }

    public Date getDatumRodjenja() {
        return datumRodjenja;
    }

    public void setDatumRodjenja(Date datumRodjenja) {
        this.datumRodjenja = datumRodjenja;
    }

    public Integer getMestoRodjenjaId() {
        return mestoRodjenjaId;
    }

    public void setMestoRodjenjaId(Integer mestoRodjenjaId) {
        this.mestoRodjenjaId = mestoRodjenjaId;
    }

    public String getMestoRodjenja() {
        return mestoRodjenja;
    }

    public void setMestoRodjenja(String mestoRodjenja) {
        this.mestoRodjenja = mestoRodjenja;
    }

    public Integer getMestoRodjenjaSifra() {
        return mestoRodjenjaSifra;
    }

    public void setMestoRodjenjaSifra(Integer mestoRodjenjaSifra) {
        this.mestoRodjenjaSifra = mestoRodjenjaSifra;
    }

    public Integer getSrednjeObrazovanjeMestoId() {
        return srednjeObrazovanjeMestoId;
    }

    public void setSrednjeObrazovanjeMestoId(Integer srednjeObrazovanjeMestoId) {
        this.srednjeObrazovanjeMestoId = srednjeObrazovanjeMestoId;
    }

    public Integer getSrednjeObrazovanjeMestoSifra() {
        return srednjeObrazovanjeMestoSifra;
    }

    public void setSrednjeObrazovanjeMestoSifra(Integer srednjeObrazovanjeMestoSifra) {
        this.srednjeObrazovanjeMestoSifra = srednjeObrazovanjeMestoSifra;
    }

    public String getSrednjeObrazovanjeMesto() {
        return srednjeObrazovanjeMesto;
    }

    public void setSrednjeObrazovanjeMesto(String srednjeObrazovanjeMesto) {
        this.srednjeObrazovanjeMesto = srednjeObrazovanjeMesto;
    }

    public Integer getSrednjeObrazovanjeSkolaId() {
        return srednjeObrazovanjeSkolaId;
    }

    public void setSrednjeObrazovanjeSkolaId(Integer srednjeObrazovanjeSkolaId) {
        this.srednjeObrazovanjeSkolaId = srednjeObrazovanjeSkolaId;
    }

    public Integer getSrednjeObrazovanjeSkolaSifra() {
        return srednjeObrazovanjeSkolaSifra;
    }

    public void setSrednjeObrazovanjeSkolaSifra(Integer srednjeObrazovanjeSkolaSifra) {
        this.srednjeObrazovanjeSkolaSifra = srednjeObrazovanjeSkolaSifra;
    }

    public String getSrednjeObrazovanjeSkola() {
        return srednjeObrazovanjeSkola;
    }

    public void setSrednjeObrazovanjeSkola(String srednjeObrazovanjeSkola) {
        this.srednjeObrazovanjeSkola = srednjeObrazovanjeSkola;
    }

    public String getSrednjeObrazovanjeOd() {
        return srednjeObrazovanjeOd;
    }

    public void setSrednjeObrazovanjeOd(String srednjeObrazovanjeOd) {
        this.srednjeObrazovanjeOd = srednjeObrazovanjeOd;
    }

    public String getSrednjeObrazovanjeDo() {
        return srednjeObrazovanjeDo;
    }

    public void setSrednjeObrazovanjeDo(String srednjeObrazovanjeDo) {
        this.srednjeObrazovanjeDo = srednjeObrazovanjeDo;
    }

    public String getBrprotokola() {
        return brprotokola;
    }

    public void setBrprotokola(String brprotokola) {
        this.brprotokola = brprotokola;
    }

    public String getPol() {
        return pol;
    }

    public void setPol(String pol) {
        this.pol = pol;
    }

    public String getDrzavarodj() {
        return drzavarodj;
    }

    public void setDrzavarodj(String drzavarodj) {
        this.drzavarodj = drzavarodj;
    }

    public String getIdDrzavarodj() {
        return idDrzavarodj;
    }

    public void setIdDrzavarodj(String idDrzavarodj) {
        this.idDrzavarodj = idDrzavarodj;
    }

    public String getAdresa() {
        return adresa;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public String getPtt() {
        return ptt;
    }

    public void setPtt(String ptt) {
        this.ptt = ptt;
    }

    public Integer getIdPtt() {
        return idPtt;
    }

    public void setIdPtt(Integer idPtt) {
        this.idPtt = idPtt;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Integer idStatus) {
        this.idStatus = idStatus;
    }

    public String getDrzavljanstvo() {
        return drzavljanstvo;
    }

    public void setDrzavljanstvo(String drzavljanstvo) {
        this.drzavljanstvo = drzavljanstvo;
    }

    public Integer getIdDrzavljanstvo() {
        return idDrzavljanstvo;
    }

    public void setIdDrzavljanstvo(Integer idDrzavljanstvo) {
        this.idDrzavljanstvo = idDrzavljanstvo;
    }

    public String getNacionalnost() {
        return nacionalnost;
    }

    public void setNacionalnost(String nacionalnost) {
        this.nacionalnost = nacionalnost;
    }

    public Integer getIdNacionalnost() {
        return idNacionalnost;
    }

    public void setIdNacionalnost(Integer idNacionalnost) {
        this.idNacionalnost = idNacionalnost;
    }

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }

    public String getBankaIsplata() {
        return bankaIsplata;
    }

    public void setBankaIsplata(String bankaIsplata) {
        this.bankaIsplata = bankaIsplata;
    }

    public Integer getIdBankaIsplata() {
        return idBankaIsplata;
    }

    public void setIdBankaIsplata(Integer idBankaIsplata) {
        this.idBankaIsplata = idBankaIsplata;
    }

    public String getRacunIsplate() {
        return racunIsplate;
    }

    public void setRacunIsplate(String racunIsplate) {
        this.racunIsplate = racunIsplate;
    }

    public String getOpstina() {
        return opstina;
    }

    public void setOpstina(String opstina) {
        this.opstina = opstina;
    }

    public Integer getIdOpstina() {
        return idOpstina;
    }

    public void setIdOpstina(Integer idOpstina) {
        this.idOpstina = idOpstina;
    }

    public String getSifra() {
        return sifra;
    }

    public void setSifra(String sifra) {
        this.sifra = sifra;
    }

    public Integer getBogoslovijaMestoId() {
        return bogoslovijaMestoId;
    }

    public void setBogoslovijaMestoId(Integer bogoslovijaMestoId) {
        this.bogoslovijaMestoId = bogoslovijaMestoId;
    }

    public String getBogoslovijaMestoSifra() {
        return bogoslovijaMestoSifra;
    }

    public void setBogoslovijaMestoSifra(String bogoslovijaMestoSifra) {
        this.bogoslovijaMestoSifra = bogoslovijaMestoSifra;
    }

    public String getBogoslovijaMesto() {
        return bogoslovijaMesto;
    }

    public void setBogoslovijaMesto(String bogoslovijaMesto) {
        this.bogoslovijaMesto = bogoslovijaMesto;
    }

    public Integer getBogoslovijaMesto1Id() {
        return bogoslovijaMesto1Id;
    }

    public void setBogoslovijaMesto1Id(Integer bogoslovijaMesto1Id) {
        this.bogoslovijaMesto1Id = bogoslovijaMesto1Id;
    }

    public String getBogoslovijaMesto1Sifra() {
        return bogoslovijaMesto1Sifra;
    }

    public void setBogoslovijaMesto1Sifra(String bogoslovijaMesto1Sifra) {
        this.bogoslovijaMesto1Sifra = bogoslovijaMesto1Sifra;
    }

    public String getBogoslovijaMesto1() {
        return bogoslovijaMesto1;
    }

    public void setBogoslovijaMesto1(String bogoslovijaMesto1) {
        this.bogoslovijaMesto1 = bogoslovijaMesto1;
    }

    public Integer getBogoslovijaMesto2Id() {
        return bogoslovijaMesto2Id;
    }

    public void setBogoslovijaMesto2Id(Integer bogoslovijaMesto2Id) {
        this.bogoslovijaMesto2Id = bogoslovijaMesto2Id;
    }

    public String getBogoslovijaMesto2Sifra() {
        return bogoslovijaMesto2Sifra;
    }

    public void setBogoslovijaMesto2Sifra(String bogoslovijaMesto2Sifra) {
        this.bogoslovijaMesto2Sifra = bogoslovijaMesto2Sifra;
    }

    public String getBogoslovijaMesto2() {
        return bogoslovijaMesto2;
    }

    public void setBogoslovijaMesto2(String bogoslovijaMesto2) {
        this.bogoslovijaMesto2 = bogoslovijaMesto2;
    }

    public String getBogoslovijaPeriodOd() {
        return bogoslovijaPeriodOd;
    }

    public void setBogoslovijaPeriodOd(String bogoslovijaPeriodOd) {
        this.bogoslovijaPeriodOd = bogoslovijaPeriodOd;
    }

    public String getBogoslovijaPeriodDo() {
        return bogoslovijaPeriodDo;
    }

    public void setBogoslovijaPeriodDo(String bogoslovijaPeriodDo) {
        this.bogoslovijaPeriodDo = bogoslovijaPeriodDo;
    }

    public String getBogoslovijaPeriodOd1() {
        return bogoslovijaPeriodOd1;
    }

    public void setBogoslovijaPeriodOd1(String bogoslovijaPeriodOd1) {
        this.bogoslovijaPeriodOd1 = bogoslovijaPeriodOd1;
    }

    public String getBogoslovijaPeriodDo1() {
        return bogoslovijaPeriodDo1;
    }

    public void setBogoslovijaPeriodDo1(String bogoslovijaPeriodDo1) {
        this.bogoslovijaPeriodDo1 = bogoslovijaPeriodDo1;
    }

    public String getBogoslovijaPeriodOd2() {
        return bogoslovijaPeriodOd2;
    }

    public void setBogoslovijaPeriodOd2(String bogoslovijaPeriodOd2) {
        this.bogoslovijaPeriodOd2 = bogoslovijaPeriodOd2;
    }

    public String getBogoslovijaPeriodDo2() {
        return bogoslovijaPeriodDo2;
    }

    public void setBogoslovijaPeriodDo2(String bogoslovijaPeriodDo2) {
        this.bogoslovijaPeriodDo2 = bogoslovijaPeriodDo2;
    }

    public Integer getDjakonatMestoId() {
        return djakonatMestoId;
    }

    public void setDjakonatMestoId(Integer djakonatMestoId) {
        this.djakonatMestoId = djakonatMestoId;
    }

    public String getDjakonatMestoSifra() {
        return djakonatMestoSifra;
    }

    public void setDjakonatMestoSifra(String djakonatMestoSifra) {
        this.djakonatMestoSifra = djakonatMestoSifra;
    }

    public String getDjakonatMesto() {
        return djakonatMesto;
    }

    public void setDjakonatMesto(String djakonatMesto) {
        this.djakonatMesto = djakonatMesto;
    }

    public Date getDjakonatDatum() {
        return djakonatDatum;
    }

    public void setDjakonatDatum(Date djakonatDatum) {
        this.djakonatDatum = djakonatDatum;
    }

    public Integer getDjakonatZarediteljId() {
        return djakonatZarediteljId;
    }

    public void setDjakonatZarediteljId(Integer djakonatZarediteljId) {
        this.djakonatZarediteljId = djakonatZarediteljId;
    }

    public String getDjakonatZarediteljSifra() {
        return djakonatZarediteljSifra;
    }

    public void setDjakonatZarediteljSifra(String djakonatZarediteljSifra) {
        this.djakonatZarediteljSifra = djakonatZarediteljSifra;
    }

    public String getDjakonatZareditelj() {
        return djakonatZareditelj;
    }

    public void setDjakonatZareditelj(String djakonatZareditelj) {
        this.djakonatZareditelj = djakonatZareditelj;
    }

    public Integer getPrezbiteratMestoId() {
        return prezbiteratMestoId;
    }

    public void setPrezbiteratMestoId(Integer prezbiteratMestoId) {
        this.prezbiteratMestoId = prezbiteratMestoId;
    }

    public String getPrezbiteratMestoSifra() {
        return prezbiteratMestoSifra;
    }

    public void setPrezbiteratMestoSifra(String prezbiteratMestoSifra) {
        this.prezbiteratMestoSifra = prezbiteratMestoSifra;
    }

    public String getPrezbiteratMesto() {
        return prezbiteratMesto;
    }

    public void setPrezbiteratMesto(String prezbiteratMesto) {
        this.prezbiteratMesto = prezbiteratMesto;
    }

    public Date getPrezbiteratDatum() {
        return prezbiteratDatum;
    }

    public void setPrezbiteratDatum(Date prezbiteratDatum) {
        this.prezbiteratDatum = prezbiteratDatum;
    }

    public Integer getPrezbiteratZarediteljId() {
        return prezbiteratZarediteljId;
    }

    public void setPrezbiteratZarediteljId(Integer prezbiteratZarediteljId) {
        this.prezbiteratZarediteljId = prezbiteratZarediteljId;
    }

    public String getPrezbiteratZarediteljSifra() {
        return prezbiteratZarediteljSifra;
    }

    public void setPrezbiteratZarediteljSifra(String prezbiteratZarediteljSifra) {
        this.prezbiteratZarediteljSifra = prezbiteratZarediteljSifra;
    }

    public String getPrezbiteratZareditelj() {
        return prezbiteratZareditelj;
    }

    public void setPrezbiteratZareditelj(String prezbiteratZareditelj) {
        this.prezbiteratZareditelj = prezbiteratZareditelj;
    }

    public Integer getDodiplomskiStudijMestoId() {
        return dodiplomskiStudijMestoId;
    }

    public void setDodiplomskiStudijMestoId(Integer dodiplomskiStudijMestoId) {
        this.dodiplomskiStudijMestoId = dodiplomskiStudijMestoId;
    }

    public String getDodiplomskiStudijMestoSifra() {
        return dodiplomskiStudijMestoSifra;
    }

    public void setDodiplomskiStudijMestoSifra(String dodiplomskiStudijMestoSifra) {
        this.dodiplomskiStudijMestoSifra = dodiplomskiStudijMestoSifra;
    }

    public String getDodiplomskiStudijMesto() {
        return dodiplomskiStudijMesto;
    }

    public void setDodiplomskiStudijMesto(String dodiplomskiStudijMesto) {
        this.dodiplomskiStudijMesto = dodiplomskiStudijMesto;
    }

    public Integer getDodiplomskiStudijNazivUstanoveId() {
        return dodiplomskiStudijNazivUstanoveId;
    }

    public void setDodiplomskiStudijNazivUstanoveId(Integer dodiplomskiStudijNazivUstanoveId) {
        this.dodiplomskiStudijNazivUstanoveId = dodiplomskiStudijNazivUstanoveId;
    }

    public String getDodiplomskiStudijNazivUstanoveSifra() {
        return dodiplomskiStudijNazivUstanoveSifra;
    }

    public void setDodiplomskiStudijNazivUstanoveSifra(String dodiplomskiStudijNazivUstanoveSifra) {
        this.dodiplomskiStudijNazivUstanoveSifra = dodiplomskiStudijNazivUstanoveSifra;
    }

    public String getDodiplomskiStudijNazivUstanove() {
        return dodiplomskiStudijNazivUstanove;
    }

    public void setDodiplomskiStudijNazivUstanove(String dodiplomskiStudijNazivUstanove) {
        this.dodiplomskiStudijNazivUstanove = dodiplomskiStudijNazivUstanove;
    }

    public String getDodiplomskiStudijPeriodOd() {
        return dodiplomskiStudijPeriodOd;
    }

    public void setDodiplomskiStudijPeriodOd(String dodiplomskiStudijPeriodOd) {
        this.dodiplomskiStudijPeriodOd = dodiplomskiStudijPeriodOd;
    }

    public String getDodiplomskiStudijPeriodDo() {
        return dodiplomskiStudijPeriodDo;
    }

    public void setDodiplomskiStudijPeriodDo(String dodiplomskiStudijPeriodDo) {
        this.dodiplomskiStudijPeriodDo = dodiplomskiStudijPeriodDo;
    }

    public Integer getMagisterijMestoId() {
        return magisterijMestoId;
    }

    public void setMagisterijMestoId(Integer magisterijMestoId) {
        this.magisterijMestoId = magisterijMestoId;
    }

    public String getMagisterijMestoSifra() {
        return magisterijMestoSifra;
    }

    public void setMagisterijMestoSifra(String magisterijMestoSifra) {
        this.magisterijMestoSifra = magisterijMestoSifra;
    }

    public String getMagisterijMesto() {
        return magisterijMesto;
    }

    public void setMagisterijMesto(String magisterijMesto) {
        this.magisterijMesto = magisterijMesto;
    }

    public Integer getMagisterijNazivUstanoveId() {
        return magisterijNazivUstanoveId;
    }

    public void setMagisterijNazivUstanoveId(Integer magisterijNazivUstanoveId) {
        this.magisterijNazivUstanoveId = magisterijNazivUstanoveId;
    }

    public String getMagisterijNazivUstanoveSifra() {
        return magisterijNazivUstanoveSifra;
    }

    public void setMagisterijNazivUstanoveSifra(String magisterijNazivUstanoveSifra) {
        this.magisterijNazivUstanoveSifra = magisterijNazivUstanoveSifra;
    }

    public String getMagisterijNazivUstanove() {
        return magisterijNazivUstanove;
    }

    public void setMagisterijNazivUstanove(String magisterijNazivUstanove) {
        this.magisterijNazivUstanove = magisterijNazivUstanove;
    }

    public String getMagisterijPeriodOd() {
        return magisterijPeriodOd;
    }

    public void setMagisterijPeriodOd(String magisterijPeriodOd) {
        this.magisterijPeriodOd = magisterijPeriodOd;
    }

    public String getMagisterijPeriodDo() {
        return magisterijPeriodDo;
    }

    public void setMagisterijPeriodDo(String magisterijPeriodDo) {
        this.magisterijPeriodDo = magisterijPeriodDo;
    }

    public Integer getDoktoratMestoId() {
        return doktoratMestoId;
    }

    public void setDoktoratMestoId(Integer doktoratMestoId) {
        this.doktoratMestoId = doktoratMestoId;
    }

    public String getDoktoratMestoSifra() {
        return doktoratMestoSifra;
    }

    public void setDoktoratMestoSifra(String doktoratMestoSifra) {
        this.doktoratMestoSifra = doktoratMestoSifra;
    }

    public String getDoktoratMesto() {
        return doktoratMesto;
    }

    public void setDoktoratMesto(String doktoratMesto) {
        this.doktoratMesto = doktoratMesto;
    }

    public Integer getDoktoratNazivUstanoveId() {
        return doktoratNazivUstanoveId;
    }

    public void setDoktoratNazivUstanoveId(Integer doktoratNazivUstanoveId) {
        this.doktoratNazivUstanoveId = doktoratNazivUstanoveId;
    }

    public String getDoktoratNazivUstanoveSifra() {
        return doktoratNazivUstanoveSifra;
    }

    public void setDoktoratNazivUstanoveSifra(String doktoratNazivUstanoveSifra) {
        this.doktoratNazivUstanoveSifra = doktoratNazivUstanoveSifra;
    }

    public String getDoktoratNazivUstanove() {
        return doktoratNazivUstanove;
    }

    public void setDoktoratNazivUstanove(String doktoratNazivUstanove) {
        this.doktoratNazivUstanove = doktoratNazivUstanove;
    }

    public String getDoktoratPeriodOd() {
        return doktoratPeriodOd;
    }

    public void setDoktoratPeriodOd(String doktoratPeriodOd) {
        this.doktoratPeriodOd = doktoratPeriodOd;
    }

    public String getDoktoratPeriodDo() {
        return doktoratPeriodDo;
    }

    public void setDoktoratPeriodDo(String doktoratPeriodDo) {
        this.doktoratPeriodDo = doktoratPeriodDo;
    }

    public byte[] getPhoto() {
        return photo;
    }    
    
//    public ImageIcon getImage {
//    return new ImageIcon(new ImageIcon(photo).getImage().getScaledInstance(200, 200, java.awt.Image.SCALE_SMOOTH));
//}



    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public Date getDatumVreme() {
        return datumVreme;
    }

    public void setDatumVreme(Date datumVreme) {
        this.datumVreme = datumVreme;
    }

    public int getAktivan() {
        return aktivan;
    }

    public void setAktivan(int aktivan) {
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
        if (!(object instanceof LicniPodaci)) {
            return false;
        }
        LicniPodaci other = (LicniPodaci) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.LicniPodaci[ id=" + id + " ]";
    }
    
}
