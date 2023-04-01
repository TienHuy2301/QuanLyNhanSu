package model;


public class employee {

    private int Emolyee_id;
    private int Employee_number;
    private String Last_Name;
    private String Frist_Name;
    private int SSN;
    private String Pay_Rate;
    private int Pay_Rate_idPay_Rates;
    private int Vacation_Days;
    private int Paid_To_Date;
    private int Paid_Last_Year;

    public employee() {
    }

    public employee(int Emolyee_id, String Last_Name, String Frist_Name, int SSN, int Pay_Rate_idPay_Rates) {
        this.Emolyee_id = Emolyee_id;
        this.Last_Name = Last_Name;
        this.Frist_Name = Frist_Name;
        this.SSN = SSN;
        this.Pay_Rate_idPay_Rates = Pay_Rate_idPay_Rates;
    }

   
    
    
    
    public employee(int Emolyee_id, int Employee_number, String Last_Name, String Frist_Name, int SSN, String Pay_Rate, int Pay_Rate_idPay_Rates, int Vacation_Days, int Paid_To_Date, int Paid_Last_Year) {
        this.Emolyee_id = Emolyee_id;
        this.Employee_number = Employee_number;
        this.Last_Name = Last_Name;
        this.Frist_Name = Frist_Name;
        this.SSN = SSN;
        this.Pay_Rate = Pay_Rate;
        this.Pay_Rate_idPay_Rates = Pay_Rate_idPay_Rates;
        this.Vacation_Days = Vacation_Days;
        this.Paid_To_Date = Paid_To_Date;
        this.Paid_Last_Year = Paid_Last_Year;
    }

    public int getEmolyee_id() {
        return Emolyee_id;
    }

    public void setEmolyee_id(int Emolyee_id) {
        this.Emolyee_id = Emolyee_id;
    }

    public int getEmployee_number() {
        return Employee_number;
    }

    public void setEmployee_number(int Employee_number) {
        this.Employee_number = Employee_number;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String Last_Name) {
        this.Last_Name = Last_Name;
    }

    public String getFrist_Name() {
        return Frist_Name;
    }

    public void setFrist_Name(String Frist_Name) {
        this.Frist_Name = Frist_Name;
    }

    public int getSSN() {
        return SSN;
    }

    public void setSSN(int SSN) {
        this.SSN = SSN;
    }

    public String getPay_Rate() {
        return Pay_Rate;
    }

    public void setPay_Rate(String Pay_Rate) {
        this.Pay_Rate = Pay_Rate;
    }

    public int getPay_Rate_idPay_Rates() {
        return Pay_Rate_idPay_Rates;
    }

    public void setPay_Rate_idPay_Rates(int Pay_Rate_idPay_Rates) {
        this.Pay_Rate_idPay_Rates = Pay_Rate_idPay_Rates;
    }

    public int getVacation_Days() {
        return Vacation_Days;
    }

    public void setVacation_Days(int Vacation_Days) {
        this.Vacation_Days = Vacation_Days;
    }

    public int getPaid_To_Date() {
        return Paid_To_Date;
    }

    public void setPaid_To_Date(int Paid_To_Date) {
        this.Paid_To_Date = Paid_To_Date;
    }

    public int getPaid_Last_Year() {
        return Paid_Last_Year;
    }

    public void setPaid_Last_Year(int Paid_Last_Year) {
        this.Paid_Last_Year = Paid_Last_Year;
    }
    
    
   
}
