package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA



/**
 * Appoint generated by hbm2java
 */
public class Appoint  implements java.io.Serializable {


     private Integer id;
     private String patientId;
     private String doctorId;
     private String content;

    public Appoint() {
    }

    public Appoint(String patientId, String doctorId, String content) {
       this.patientId = patientId;
       this.doctorId = doctorId;
       this.content = content;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getPatientId() {
        return this.patientId;
    }
    
    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }
    public String getDoctorId() {
        return this.doctorId;
    }
    
    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }
    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }




}


