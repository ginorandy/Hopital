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
public class PrixA {
    int id_actuel;
    double prix;
    Date date_p;
    int id_article;
    
    public PrixA()
    {
        
    }

    public PrixA(int id_actuel, double prix, Date date_p, int id_article) {
        this.id_actuel = id_actuel;
        this.prix = prix;
        this.date_p = date_p;
        this.id_article = id_article;
    }

    public int getId_actuel() {
        return id_actuel;
    }

    public void setId_actuel(int id_actuel) {
        this.id_actuel = id_actuel;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public Date getDate_p() {
        return date_p;
    }

    public void setDate_p(Date date_p) {
        this.date_p = date_p;
    }

    public int getId_article() {
        return id_article;
    }

    public void setId_article(int id_article) {
        this.id_article = id_article;
    }
    
    
    
}
