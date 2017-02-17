/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hopital;

/**
 *
 * @author Randy
 */
public class Articles {
    int id_articles;
    String nom;
    int id_categorie;
    
    public Articles()
    {
            
    }

    public Articles(int id_articles, String nom, int id_categorie) {
        this.id_articles = id_articles;
        this.nom = nom;
        this.id_categorie = id_categorie;
    }

    
    
    public int getId_articles() {
        return id_articles;
    }

    public void setId_articles(int id_articles) {
        this.id_articles = id_articles;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getId_categorie() {
        return id_categorie;
    }

    public void setId_categorie(int id_categorie) {
        this.id_categorie = id_categorie;
    }
    
    
    
    
    
}
