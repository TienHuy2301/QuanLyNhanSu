package model;


public class Job_History
{
    private int ID;
    private static int Employee_ID;//
    private String Department;//
    private String Division;//
    private String Start_Date;//
    private String End_Date;//
    private String Job_Title;//
    private String Supervisor;//
    private String Job_Category;//
    private String Location;//
    private int Departmen_Code;//
    private int Salary_Type;//
    private String Pay_Period;//
    private int Hours_per_Week;//
    private int Hazardous_Training;//

    public Job_History() {
    }

    public Job_History(int Employee_ID, String Department, String Division, String Start_Date, String End_Date,
            String Job_Title, String Supervisor, String Job_Category, String Location, int Departmen_Code,
            int Salary_Type, String Pay_Period, int Hours_per_Week, int Hazardous_Training) {
        this.Employee_ID = Employee_ID;
        this.Department = Department;
        this.Division = Division;
        this.Start_Date = Start_Date;
        this.End_Date = End_Date;
        this.Job_Title = Job_Title;
        this.Supervisor = Supervisor;
        this.Job_Category = Job_Category;
        this.Location = Location;
        this.Departmen_Code = Departmen_Code;
        this.Salary_Type = Salary_Type;
        this.Pay_Period = Pay_Period;
        this.Hours_per_Week = Hours_per_Week;
        this.Hazardous_Training = Hazardous_Training;
    }
    
    
    
    public Job_History(int ID, int Employee_ID, String Department, String Division, String Start_Date, String End_Date, String Job_Title, String Supervisor, String Job_Category, String Location, int Departmen_Code, int Salary_Type, String Pay_Period, int Hours_per_Week, int Hazardous_Training) {
        this.ID = ID;
        this.Employee_ID = Employee_ID;
        this.Department = Department;
        this.Division = Division;
        this.Start_Date = Start_Date;
        this.End_Date = End_Date;
        this.Job_Title = Job_Title;
        this.Supervisor = Supervisor;
        this.Job_Category = Job_Category;
        this.Location = Location;
        this.Departmen_Code = Departmen_Code;
        this.Salary_Type = Salary_Type;
        this.Pay_Period = Pay_Period;
        this.Hours_per_Week = Hours_per_Week;
        this.Hazardous_Training = Hazardous_Training;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(int Employee_ID) {
        this.Employee_ID = Employee_ID;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getDivision() {
        return Division;
    }

    public void setDivision(String Division) {
        this.Division = Division;
    }

    public String getStart_Date() {
        return Start_Date;
    }

    public void setStart_Date(String Start_Date) {
        this.Start_Date = Start_Date;
    }

    public String getEnd_Date() {
        return End_Date;
    }

    public void setEnd_Date(String End_Date) {
        this.End_Date = End_Date;
    }

    public String getJob_Title() {
        return Job_Title;
    }

    public void setJob_Title(String Job_Title) {
        this.Job_Title = Job_Title;
    }

    public String getSupervisor() {
        return Supervisor;
    }

    public void setSupervisor(String Supervisor) {
        this.Supervisor = Supervisor;
    }

    public String getJob_Category() {
        return Job_Category;
    }

    public void setJob_Category(String Job_Category) {
        this.Job_Category = Job_Category;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

    public int getDepartmen_Code() {
        return Departmen_Code;
    }

    public void setDepartmen_Code(int Departmen_Code) {
        this.Departmen_Code = Departmen_Code;
    }

    public int getSalary_Type() {
        return Salary_Type;
    }

    public void setSalary_Type(int Salary_Type) {
        this.Salary_Type = Salary_Type;
    }

    public String getPay_Period() {
        return Pay_Period;
    }

    public void setPay_Period(String Pay_Period) {
        this.Pay_Period = Pay_Period;
    }

    public int getHours_per_Week() {
        return Hours_per_Week;
    }

    public void setHours_per_Week(int Hours_per_Week) {
        this.Hours_per_Week = Hours_per_Week;
    }

    public int getHazardous_Training() {
        return Hazardous_Training;
    }

    public void setHazardous_Training(int Hazardous_Training) {
        this.Hazardous_Training = Hazardous_Training;
    }
    
    public static void main(String[] args)
    {
        Job_History j = new Job_History();
        j.Departmen_Code = 23;
    }
}
