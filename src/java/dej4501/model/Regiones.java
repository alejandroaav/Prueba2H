package dej4501.model;
// Generated 05-11-2017 0:33:14 by Hibernate Tools 4.3.1



/**
 * Regiones generated by hbm2java
 */
public class Regiones  implements java.io.Serializable {


     private Integer regionId;
     private String regionNombre;
     private String regionOrdinal;

    public Regiones() {
    }

    public Regiones(String regionNombre, String regionOrdinal) {
       this.regionNombre = regionNombre;
       this.regionOrdinal = regionOrdinal;
    }
   
    public Integer getRegionId() {
        return this.regionId;
    }
    
    public void setRegionId(Integer regionId) {
        this.regionId = regionId;
    }
    public String getRegionNombre() {
        return this.regionNombre;
    }
    
    public void setRegionNombre(String regionNombre) {
        this.regionNombre = regionNombre;
    }
    public String getRegionOrdinal() {
        return this.regionOrdinal;
    }
    
    public void setRegionOrdinal(String regionOrdinal) {
        this.regionOrdinal = regionOrdinal;
    }




}

