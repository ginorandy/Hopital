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
public class Consultation {
    int id_consultation;
    int id_patient;
    String designation;
    double prix;
    Date date_cons;

    public Consultation() {
    }

    public Consultation(int id_consultation, int id_patient, String designation, double prix, Date date_cons) {
        this.id_consultation = id_consultation;
        this.id_patient = id_patient;
        this.designation = designation;
        this.prix = prix;
        this.date_cons = date_cons;
    }

    public int getId_consultation() {
        return id_consultation;
    }

    public void setId_consultation(int id_consultation) {
        this.id_consultation = id_consultation;
    }

    public int getId_patient() {
        return id_patient;
    }

    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public Date getDate_cons() {
        return date_cons;
    }

    public void setDate_cons(Date date_cons) {
        this.date_cons = date_cons;
    }
    
}
