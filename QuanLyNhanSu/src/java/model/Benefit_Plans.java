package model;


public class Benefit_Plans
{
    private int Benefit_Plan_ID;
    private String Plan_Name;
    private int Deductable;
    private int Percentage_CoPay;

    public Benefit_Plans() {
    }

    public Benefit_Plans(int Benefit_Plan_ID, String Plan_Name, int Deductable, int Percentage_CoPay) {
        this.Benefit_Plan_ID = Benefit_Plan_ID;
        this.Plan_Name = Plan_Name;
        this.Deductable = Deductable;
        this.Percentage_CoPay = Percentage_CoPay;
    }

    public int getBenefit_Plan_ID() {
        return Benefit_Plan_ID;
    }

    public void setBenefit_Plan_ID(int Benefit_Plan_ID) {
        this.Benefit_Plan_ID = Benefit_Plan_ID;
    }

    public String getPlan_Name() {
        return Plan_Name;
    }

    public void setPlan_Name(String Plan_Name) {
        this.Plan_Name = Plan_Name;
    }

    public int getDeductable() {
        return Deductable;
    }

    public void setDeductable(int Deductable) {
        this.Deductable = Deductable;
    }

    public int getPercentage_CoPay() {
        return Percentage_CoPay;
    }

    public void setPercentage_CoPay(int Percentage_CoPay) {
        this.Percentage_CoPay = Percentage_CoPay;
    }
    
    
}
