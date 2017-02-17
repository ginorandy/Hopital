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
public class Paiement {
    int id_paiement;
    int id_fm;
    int id_patient;
    String mode_paie;
    double paye;
    double non_paye;
    Date fin_paie;

    public Paiement() {
    }

    public Paiement(int id_paiement, int id_fm, int id_patient, String mode_paie, double paye, double non_paye, Date fin_paie) {
        this.id_paiement = id_paiement;
        this.id_fm = id_fm;
        this.id_patient = id_patient;
        this.mode_paie = mode_paie;
        this.paye = paye;
        this.non_paye = non_paye;
        this.fin_paie = fin_paie;
    }

    public int getId_paiement() {
        return id_paiement;
    }

    public void setId_paiement(int id_paiement) {
        this.id_paiement = id_paiement;
    }

    public int getId_fm() {
        return id_fm;
    }

    public void setId_fm(int id_fm) {
        this.id_fm = id_fm;
    }

    public int getId_patient() {
        return id_patient;
    }

    public void setId_patient(int id_patient) {
        this.id_patient = id_patient;
    }

    public String getMode_paie() {
        return mode_paie;
    }

    public void setMode_paie(String mode_paie) {
        this.mode_paie = mode_paie;
    }

    public double getPaye() {
        return paye;
    }

    public void setPaye(double paye) {
        this.paye = paye;
    }

    public double getNon_paye() {
        return non_paye;
    }

    public void setNon_paye(double non_paye) {
        this.non_paye = non_paye;
    }

    public Date getFin_paie() {
        return fin_paie;
    }

    public void setFin_paie(Date fin_paie) {
        this.fin_paie = fin_paie;
    }
    
    
    
}
