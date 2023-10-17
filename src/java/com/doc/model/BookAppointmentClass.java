package com.doc.model;
public class BookAppointmentClass
{
    private int appointmentId;
    private int patientId;
    private String patientFirstName;
    private String patientLastName;
    private String patientGender;
    private int patientAge;
    private String patientEmail;
    private long patientMobile;
    private int doctorId;
    private String doctorFname;
    private String doctorLname;
    private String status="Pending";
    private String appointmentDate;

    
    public int getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getPatientFirstName() {
        return patientFirstName;
    }

    public void setPatientFirstName(String patientFirstName) {
        this.patientFirstName = patientFirstName;
    }

    public String getPatientLastName() {
        return patientLastName;
    }

    public void setPatientLastName(String patientLastName) {
        this.patientLastName = patientLastName;
    }

    public String getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(String patientGender) {
        this.patientGender = patientGender;
    }

    public int getPatientAge() {
        return patientAge;
    }

    public void setPatientAge(int patientAge) {
        this.patientAge = patientAge;
    }

    public String getPatientEmail() {
        return patientEmail;
    }

    public void setPatientEmail(String patientEmail) {
        this.patientEmail = patientEmail;
    }

    public long getPatientMobile() {
        return patientMobile;
    }

    public void setPatientMobile(long patientMobile) {
        this.patientMobile = patientMobile;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorFname() {
        return doctorFname;
    }

    public void setDoctorFname(String doctorFname) {
        this.doctorFname = doctorFname;
    }

    public String getDoctorLname() {
        return doctorLname;
    }

    public void setDoctorLname(String doctorLname) {
        this.doctorLname = doctorLname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getAppointmentDate()
    {
        return appointmentDate;
    }
    public void setAppointmentDate(String appointmentDate)
    {
        this.appointmentDate = appointmentDate;
    }
}
