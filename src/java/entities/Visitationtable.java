package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Visitationtable generated by hbm2java
 */
public class Visitationtable  implements java.io.Serializable {


     private Integer visitid;
     private String patientid;
     private Date date;
     private String vitals;
     private String doctor;
     private String status;
     private String patientstatus;
     private Date admissiondate;
     private Date dischargedate;
     private String previouslocstion;
     private int visittype;

    public Visitationtable() {
    }

	
    public Visitationtable(String patientid, int visittype) {
        this.patientid = patientid;
        this.visittype = visittype;
    }
    public Visitationtable(String patientid, Date date, String vitals, String doctor, String status, String patientstatus, Date admissiondate, Date dischargedate, String previouslocstion, int visittype) {
       this.patientid = patientid;
       this.date = date;
       this.vitals = vitals;
       this.doctor = doctor;
       this.status = status;
       this.patientstatus = patientstatus;
       this.admissiondate = admissiondate;
       this.dischargedate = dischargedate;
       this.previouslocstion = previouslocstion;
       this.visittype = visittype;
    }
   
    public Integer getVisitid() {
        return this.visitid;
    }
    
    public void setVisitid(Integer visitid) {
        this.visitid = visitid;
    }
    public String getPatientid() {
        return this.patientid;
    }
    
    public void setPatientid(String patientid) {
        this.patientid = patientid;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public String getVitals() {
        return this.vitals;
    }
    
    public void setVitals(String vitals) {
        this.vitals = vitals;
    }
    public String getDoctor() {
        return this.doctor;
    }
    
    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public String getPatientstatus() {
        return this.patientstatus;
    }
    
    public void setPatientstatus(String patientstatus) {
        this.patientstatus = patientstatus;
    }
    public Date getAdmissiondate() {
        return this.admissiondate;
    }
    
    public void setAdmissiondate(Date admissiondate) {
        this.admissiondate = admissiondate;
    }
    public Date getDischargedate() {
        return this.dischargedate;
    }
    
    public void setDischargedate(Date dischargedate) {
        this.dischargedate = dischargedate;
    }
    public String getPreviouslocstion() {
        return this.previouslocstion;
    }
    
    public void setPreviouslocstion(String previouslocstion) {
        this.previouslocstion = previouslocstion;
    }
    public int getVisittype() {
        return this.visittype;
    }
    
    public void setVisittype(int visittype) {
        this.visittype = visittype;
    }




}


