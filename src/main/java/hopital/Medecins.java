/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hopital;

import java.util.Date;

/**
 *
 * @author ITU
 */
public class Medecins {
   int id_emploie;
   String nomemploie;
   String sexee;
   String date_naisse;
   String mariagee;
   String adressee;
   String email;
   String contact;
   int id_occupations;
   
   
   public Medecins()
   {
       
   }
   public Medecins(int id_emploie,String nomemploie,String sexee,String date_naisse,String mariagee,String adressee,String email,String contact,int id_occupations)
   {
       this.id_emploie=id_emploie;
       this.nomemploie=nomemploie;
       this.sexee=sexee;
       this.date_naisse=date_naisse;
       this.mariagee=mariagee;
       this.adressee=adressee;
       this.email=email;
       this.contact=contact;
       this.id_occupations=id_occupations;
   }
   public Medecins(int id_emploie,String nomemploie,String sexee,String date_naisse,String mariagee,String adressee,String email,String contact)
   {
       this.id_emploie=id_emploie;
       this.nomemploie=nomemploie;
       this.sexee=sexee;
       this.date_naisse=date_naisse;
       this.mariagee=mariagee;
       this.adressee=adressee;
       this.email=email;
       this.contact=contact;
   }
   public Medecins(String nomemploie,String sexee,String date_naisse,String mariagee,String adressee,String email,String contact)
   {
       this.nomemploie=nomemploie;
       this.sexee=sexee;
       this.date_naisse=date_naisse;
       this.mariagee=mariagee;
       this.adressee=adressee;
       this.email=email;
       this.contact=contact;
   }

    public int getId_emploie() {
        return id_emploie;
    }

    public void setId_emploie(int id_emploie) {
        this.id_emploie = id_emploie;
    }

    public String getNomemploie() {
        return nomemploie;
    }

    public void setNomemploie(String nomemploie) {
        this.nomemploie = nomemploie;
    }

    public String getSexee() {
        return sexee;
    }

    public void setSexee(String sexee) {
        this.sexee = sexee;
    }

    public String getDate_naisse() {
        return date_naisse;
    }

    public void setDate_naisse(String date_naisse) {
        this.date_naisse = date_naisse;
    }

    public String getMariagee() {
        return mariagee;
    }

    public void setMariagee(String mariagee) {
        this.mariagee = mariagee;
    }

    public String getAdressee() {
        return adressee;
    }

    public void setAdressee(String adressee) {
        this.adressee = adressee;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public int getId_occupations() {
        return id_occupations;
    }

    public void setId_occupations(int id_occupations) {
        this.id_occupations = id_occupations;
    }
}
