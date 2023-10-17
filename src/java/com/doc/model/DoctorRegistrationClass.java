package com.doc.model;
public class DoctorRegistrationClass 
{
    private int did;
    private String dfname,dlname,dcategory,daddress,dpass;
    private long dmob;

    @Override
    public String toString() {
        return "DoctorRegistrationClass{" + "did=" + did + ", dfname=" + dfname + ", dlname=" + dlname + ", dcategory=" + dcategory + ", daddress=" + daddress + ", dpass=" + dpass + ", dmob=" + dmob + '}';
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getDfname() {
        return dfname;
    }

    public void setDfname(String dfname) {
        this.dfname = dfname;
    }

    public String getDlname() {
        return dlname;
    }

    public void setDlname(String dlname) {
        this.dlname = dlname;
    }

    public String getDcategory() {
        return dcategory;
    }

    public void setDcategory(String dcategory) {
        this.dcategory = dcategory;
    }

    public String getDaddress() {
        return daddress;
    }

    public void setDaddress(String daddress) {
        this.daddress = daddress;
    }

    public String getDpass() {
        return dpass;
    }

    public void setDpass(String dpass) {
        this.dpass = dpass;
    }

    public long getDmob() {
        return dmob;
    }

    public void setDmob(long dmob) {
        this.dmob = dmob;
    }
}
