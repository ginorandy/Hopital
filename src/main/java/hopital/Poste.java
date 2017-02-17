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
public class Poste {
   int id_occupations;
   String occupation;
   
    public Poste()
   {
       
   }
   public Poste(int id_occupations,String occupation)
   {
       this.id_occupations=id_occupations;
       this.occupation=occupation;
   }

    public int getId_occupations() {
        return id_occupations;
    }

    public void setId_occupations(int id_occupations) {
        this.id_occupations = id_occupations;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }
   
  
    
}
