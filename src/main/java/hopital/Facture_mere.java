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
public class Facture_mere {
    int id_fm;
    double tva;
    double remise;
    Date date_now;
    int id_patient;
    double montant;
    
    public Facture_mere()
    {
        
    }

    public Facture_mere(int id_fm, double tva, double remise, Date date_now, int id_patient, double montant) {
        this.id_fm = id_fm;
        this.tva = tva;
        this.remise = remise;
        this.date_now = date_now;
        this.id_patient = id_patient;
        this.montant = montant;
    }

    public int getId_fm() {
        return id_fm;
    }

    public void setId_fm(int id_fm) {
        this.id_fm = id_fm;
    }

    public double getTva() {
        return tva;
    }

    public void setTva(double tva) {
        this.tva = tva;
    }

    public double getRemise() {
        return remise;
    }

    public void setRemise(double remise) {
        this.remise = remise;
    }

    public Date getDate_now() {
        return date_now;
    }

    public void setDate_now(Date date_now) {
        this.date_now = date_now;
    }

    public int getId_patient() {
        return id_patient;
    }

    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    public double getMontant() {
        return montant;
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }
    
    
    
}
