package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA



/**
 * Units generated by hbm2java
 */
public class Units  implements java.io.Serializable {


     private Integer unitid;
     private String unitname;

    public Units() {
    }

    public Units(String unitname) {
       this.unitname = unitname;
    }
   
    public Integer getUnitid() {
        return this.unitid;
    }
    
    public void setUnitid(Integer unitid) {
        this.unitid = unitid;
    }
    public String getUnitname() {
        return this.unitname;
    }
    
    public void setUnitname(String unitname) {
        this.unitname = unitname;
    }




}


