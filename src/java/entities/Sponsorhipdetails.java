package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA



/**
 * Sponsorhipdetails generated by hbm2java
 */
public class Sponsorhipdetails  implements java.io.Serializable {


     private String patientid;
     private String membershipid;
     private String type;
     private String benefitplan;
     private Integer sponsorid;

    public Sponsorhipdetails() {
    }

	
    public Sponsorhipdetails(String patientid) {
        this.patientid = patientid;
    }
    public Sponsorhipdetails(String patientid, String membershipid, String type, String benefitplan, Integer sponsorid) {
       this.patientid = patientid;
       this.membershipid = membershipid;
       this.type = type;
       this.benefitplan = benefitplan;
       this.sponsorid = sponsorid;
    }
   
    public String getPatientid() {
        return this.patientid;
    }
    
    public void setPatientid(String patientid) {
        this.patientid = patientid;
    }
    public String getMembershipid() {
        return this.membershipid;
    }
    
    public void setMembershipid(String membershipid) {
        this.membershipid = membershipid;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public String getBenefitplan() {
        return this.benefitplan;
    }
    
    public void setBenefitplan(String benefitplan) {
        this.benefitplan = benefitplan;
    }
    public Integer getSponsorid() {
        return this.sponsorid;
    }
    
    public void setSponsorid(Integer sponsorid) {
        this.sponsorid = sponsorid;
    }




}


