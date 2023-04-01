package model;


public class Pay_Rates 
{
    private int idPay_Rates;
    private String Pay_Rate_Name;
    private int Value;
    private int Tax_percentage;
    private int Pay_Type;
    private int Pay_Amount;
    private int PT_Level;

    public Pay_Rates() {
    }

    public Pay_Rates(int idPay_Rates, String Pay_Rate_Name, int Value, int Tax_percentage, int Pay_Type, int Pay_Amount, int PT_Level) {
        this.idPay_Rates = idPay_Rates;
        this.Pay_Rate_Name = Pay_Rate_Name;
        this.Value = Value;
        this.Tax_percentage = Tax_percentage;
        this.Pay_Type = Pay_Type;
        this.Pay_Amount = Pay_Amount;
        this.PT_Level = PT_Level;
    }

    public int getIdPay_Rates() {
        return idPay_Rates;
    }

    public void setIdPay_Rates(int idPay_Rates) {
        this.idPay_Rates = idPay_Rates;
    }

    public String getPay_Rate_Name() {
        return Pay_Rate_Name;
    }

    public void setPay_Rate_Name(String Pay_Rate_Name) {
        this.Pay_Rate_Name = Pay_Rate_Name;
    }

    public int getValue() {
        return Value;
    }

    public void setValue(int Value) {
        this.Value = Value;
    }

    public int getTax_percentage() {
        return Tax_percentage;
    }

    public void setTax_percentage(int Tax_percentage) {
        this.Tax_percentage = Tax_percentage;
    }

    public int getPay_Type() {
        return Pay_Type;
    }

    public void setPay_Type(int Pay_Type) {
        this.Pay_Type = Pay_Type;
    }

    public int getPay_Amount() {
        return Pay_Amount;
    }

    public void setPay_Amount(int Pay_Amount) {
        this.Pay_Amount = Pay_Amount;
    }

    public int getPT_Level() {
        return PT_Level;
    }

    public void setPT_Level(int PT_Level) {
        this.PT_Level = PT_Level;
    }
    
    
    
}
