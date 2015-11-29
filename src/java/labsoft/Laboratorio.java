package labsoft;
// Generated 07/11/2015 01:44:23 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Laboratorio generated by hbm2java
 */
public class Laboratorio  implements java.io.Serializable {


     private Integer id;
     private String nome;
     private String local;
     private Set<CadLabSoft> labSofts = new HashSet<CadLabSoft>(0);

    public Laboratorio() {
    }

    public Laboratorio(Integer id, String nome, String local) {
        this.id = id;
        this.nome = nome;
        this.local = local;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getLocal() {
        return this.local;
    }
    
    public void setLocal(String local) {
        this.local = local;
    }

    public Set<CadLabSoft> getLabSofts() {
        return labSofts;
    }

    public void setLabSofts(Set<CadLabSoft> labSofts) {
        this.labSofts = labSofts;
    }


}

