/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hopital;

/**
 *
 * @author ITU
 */
public class Facture_fille {
   int id_ff;
   int quantite;
   double prix;
   int id_article;
   int id_fm;
   
   public Facture_fille()
   {
       
   }

    public Facture_fille(int id_ff, int quantite, double prix, int id_article, int id_fm) {
        this.id_ff = id_ff;
        this.quantite = quantite;
        this.prix = prix;
        this.id_article = id_article;
        this.id_fm = id_fm;
    }

    public int getId_ff() {
        return id_ff;
    }

    public void setId_ff(int id_ff) {
        this.id_ff = id_ff;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getId_article() {
        return id_article;
    }

    public void setId_article(int id_article) {
        this.id_article = id_article;
    }

    public int getId_fm() {
        return id_fm;
    }

    public void setId_fm(int id_fm) {
        this.id_fm = id_fm;
    }
    
}
