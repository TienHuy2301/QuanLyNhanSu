package model;


public class Employement 
{
    private int Employee_ID;//
    private String Employment_Status;
    private String Hire_Date;//
    private String Workers_Comp_Code;//
    private String Termination_Date;//
    private String Rehire_Date;//
    private String Last_Review_Date;//

    public Employement() {
    }

    public Employement(int Employee_ID, String Employment_Status, String Hire_Date, String Termination_Date) {
        this.Employee_ID = Employee_ID;
        this.Employment_Status = Employment_Status;
        this.Hire_Date = Hire_Date;
        this.Termination_Date = Termination_Date;
    }
    
    public Employement(int Employee_ID, String Hire_Date, String Termination_Date, String Rehire_Date, String Last_Review_Date) {
        this.Employee_ID = Employee_ID;
        this.Hire_Date = Hire_Date;
        this.Termination_Date = Termination_Date;
        this.Rehire_Date = Rehire_Date;
        this.Last_Review_Date = Last_Review_Date;
    }

        
    
    public Employement(int Employee_ID, String Hire_Date, String Workers_Comp_Code, String Termination_Date, String Rehire_Date, String Last_Review_Date) {
        this.Employee_ID = Employee_ID;
        this.Hire_Date = Hire_Date;
        this.Workers_Comp_Code = Workers_Comp_Code;
        this.Termination_Date = Termination_Date;
        this.Rehire_Date = Rehire_Date;
        this.Last_Review_Date = Last_Review_Date;
    }
    
    
    
    public Employement(int Employee_ID, String Employment_Status, String Hire_Date, String Workers_Comp_Code, String Termination_Date, String Rehire_Date, String Last_Review_Date) {
        this.Employee_ID = Employee_ID;
        this.Employment_Status = Employment_Status;
        this.Hire_Date = Hire_Date;
        this.Workers_Comp_Code = Workers_Comp_Code;
        this.Termination_Date = Termination_Date;
        this.Rehire_Date = Rehire_Date;
        this.Last_Review_Date = Last_Review_Date;
    }

    public int getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(int Employee_ID) {
        this.Employee_ID = Employee_ID;
    }

    public String getEmployment_Status() {
        return Employment_Status;
    }

    public void setEmployment_Status(String Employment_Status) {
        this.Employment_Status = Employment_Status;
    }

    public String getHire_Date() {
        return Hire_Date;
    }

    public void setHire_Date(String Hire_Date) {
        this.Hire_Date = Hire_Date;
    }

    public String getWorkers_Comp_Code() {
        return Workers_Comp_Code;
    }

    public void setWorkers_Comp_Code(String Workers_Comp_Code) {
        this.Workers_Comp_Code = Workers_Comp_Code;
    }

    public String getTermination_Date() {
        return Termination_Date;
    }

    public void setTermination_Date(String Termination_Date) {
        this.Termination_Date = Termination_Date;
    }

    public String getRehire_Date() {
        return Rehire_Date;
    }

    public void setRehire_Date(String Rehire_Date) {
        this.Rehire_Date = Rehire_Date;
    }

    public String getLast_Review_Date() {
        return Last_Review_Date;
    }

    public void setLast_Review_Date(String Last_Review_Date) {
        this.Last_Review_Date = Last_Review_Date;
    }
    
    
}
