/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hopital;

import java.util.Date;

/**
 *
 * @author Randy
 */
public class Patients {
    int id_patient;
    String nom;
    String sexe;
    Date date_n;
    String adresse;
    String mail;
    String phone;
    int id_traitant;
    
    public Patients()
    {
        
    }

    public Patients(int id_patient, String nom, String sexe, Date date_n, String adresse, String mail, String phone, int id_traitant) {
        this.id_patient = id_patient;
        this.nom = nom;
        this.sexe = sexe;
        this.date_n = date_n;
        this.adresse = adresse;
        this.mail = mail;
        this.phone = phone;
        this.id_traitant = id_traitant;
    }

    public int getId_patient() {
        return id_patient;
    }

    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public Date getDate_n() {
        return date_n;
    }

    public void setDate_n(Date date_n) {
        this.date_n = date_n;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getId_traitant() {
        return id_traitant;
    }

    public void setId_traitant(int id_traitant) {
        this.id_traitant = id_traitant;
    }
    
    
    
}
