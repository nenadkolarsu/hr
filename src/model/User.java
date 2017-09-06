/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ms
 */
public class User {
    
    private int id;
    private String jmbg;
    private String ime;
    private String prezime;
    private int aktivan;

    public int getAktivan() {
        return aktivan;
    }

    public void setAktivan(int aktivan) {
        this.aktivan = aktivan;
    }
    
    
    public User(int Id,String Jmbg,String Ime,String Prezime, int Aktivan)
    {
        this.id = Id;
        this.ime = Jmbg;
        this.prezime = Ime;
        this.jmbg = Prezime;
        this.aktivan = Aktivan;
    }
    
    public int getId()
    {
        return id;
    }
    
    public String getIme()
    {
        return ime;
    }
    
    public String getPrezime()
    {
        return prezime;
    }
    
    public String getJmbg()
    {
        return jmbg;
    }
}


//Read more at http://1bestcsharp.blogspot.com/2015/11/java-jtable-mysql-data-search-filter.html#ybOsIrHe6u84gEmv.99
