package entities;
// Generated Aug 19, 2012 11:33:09 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Wardnote generated by hbm2java
 */
public class Wardnote  implements java.io.Serializable {


     private Integer noteid;
     private int wardid;
     private String nurseid;
     private String note;
     private Date date;

    public Wardnote() {
    }

	
    public Wardnote(int wardid, String note, Date date) {
        this.wardid = wardid;
        this.note = note;
        this.date = date;
    }
    public Wardnote(int wardid, String nurseid, String note, Date date) {
       this.wardid = wardid;
       this.nurseid = nurseid;
       this.note = note;
       this.date = date;
    }
   
    public Integer getNoteid() {
        return this.noteid;
    }
    
    public void setNoteid(Integer noteid) {
        this.noteid = noteid;
    }
    public int getWardid() {
        return this.wardid;
    }
    
    public void setWardid(int wardid) {
        this.wardid = wardid;
    }
    public String getNurseid() {
        return this.nurseid;
    }
    
    public void setNurseid(String nurseid) {
        this.nurseid = nurseid;
    }
    public String getNote() {
        return this.note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}

