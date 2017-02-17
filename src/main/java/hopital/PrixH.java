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
public class PrixH {
    
    int id_historique;
    double prix;
    Date date_h;
    int id_article;
    
    public PrixH()
    {
        
    }

    public PrixH(int id_historique, double prix, Date date_h, int id_article) {
        this.id_historique = id_historique;
        this.prix = prix;
        this.date_h = date_h;
        this.id_article = id_article;
    }

    

    public int getId_historique() {
        return id_historique;
    }

    public void setId_historique(int id_historique) {
        this.id_historique = id_historique;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public Date getDate_h() {
        return date_h;
    }

    public void setDate_h(Date date_h) {
        this.date_h = date_h;
    }

    public int getId_article() {
        return id_article;
    }

    public void setId_article(int id_article) {
        this.id_article = id_article;
    }
    
    
    
}
