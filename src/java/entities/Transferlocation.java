package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Transferlocation generated by hbm2java
 */
public class Transferlocation  implements java.io.Serializable {


     private Integer transferid;
     private int visitid;
     private Date visitdate;
     private String location;
     private String doctorid;
     private int diagnosisid;
     private String note;

    public Transferlocation() {
    }

	
    public Transferlocation(int visitid, Date visitdate, String location, String doctorid, int diagnosisid) {
        this.visitid = visitid;
        this.visitdate = visitdate;
        this.location = location;
        this.doctorid = doctorid;
        this.diagnosisid = diagnosisid;
    }
    public Transferlocation(int visitid, Date visitdate, String location, String doctorid, int diagnosisid, String note) {
       this.visitid = visitid;
       this.visitdate = visitdate;
       this.location = location;
       this.doctorid = doctorid;
       this.diagnosisid = diagnosisid;
       this.note = note;
    }
   
    public Integer getTransferid() {
        return this.transferid;
    }
    
    public void setTransferid(Integer transferid) {
        this.transferid = transferid;
    }
    public int getVisitid() {
        return this.visitid;
    }
    
    public void setVisitid(int visitid) {
        this.visitid = visitid;
    }
    public Date getVisitdate() {
        return this.visitdate;
    }
    
    public void setVisitdate(Date visitdate) {
        this.visitdate = visitdate;
    }
    public String getLocation() {
        return this.location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    public String getDoctorid() {
        return this.doctorid;
    }
    
    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid;
    }
    public int getDiagnosisid() {
        return this.diagnosisid;
    }
    
    public void setDiagnosisid(int diagnosisid) {
        this.diagnosisid = diagnosisid;
    }
    public String getNote() {
        return this.note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }




}


