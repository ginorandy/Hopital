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
public class Categories {
    int id_cat;
    String categories;
    
    public Categories()
    {
        
    }

    public Categories(int id_cat, String categories) {
        this.id_cat = id_cat;
        this.categories = categories;
    }

    public int getId_cat() {
        return id_cat;
    }

    public void setId_cat(int id_cat) {
        this.id_cat = id_cat;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }
    
    
    
}
