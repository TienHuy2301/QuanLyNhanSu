
package model;


public class Personal2
{
    private int Employee_ID;
    private String First_Name;
    private String Last_Name;
    private String Address1;
    private String Address2;
    private String City;
    private String state;
    private int zip;
    private String email;
    private String phone;
    private String ssn;
    private String drivers_license;
    private String Marital_Status;
    private int gender; // true : nam , false; nu~
    private int shareholderStatus;//true : co , false : ko co
    private int benefitplans;
    private String ethnicity;
    private String birthday;

    public Personal2() {
    }

    public Personal2(String First_Name, String Last_Name, String Address1, String City, String state, int zip, String email, String phone, String ssn, String drivers_license, String Marital_Status, int gender, int shareholderStatus, int benefitplans, String ethnicity, String birthday) {
        this.First_Name = First_Name;
        this.Last_Name = Last_Name;
        this.Address1 = Address1;
        this.City = City;
        this.state = state;
        this.zip = zip;
        this.email = email;
        this.phone = phone;
        this.ssn = ssn;
        this.drivers_license = drivers_license;
        this.Marital_Status = Marital_Status;
        this.gender = gender;
        this.shareholderStatus = shareholderStatus;
        this.benefitplans = benefitplans;
        this.ethnicity = ethnicity;
        this.birthday = birthday;
    }
    
    
    
    public Personal2(int Employee_ID, String First_Name, String Last_Name, String Address1, String Address2, String City, String state, int zip, String email, String phone, String ssn, String drivers_license, String Marital_Status, int gender, int shareholderStatus, int benefitplans, String ethnicity, String birthday) {
        this.Employee_ID = Employee_ID;
        this.First_Name = First_Name;
        this.Last_Name = Last_Name;
        
        this.Address1 = Address1;
        this.Address2 = Address2;
        this.City = City;
        this.state = state;
        this.zip = zip;
        this.email = email;
        this.phone = phone;
        this.ssn = ssn;
        this.drivers_license = drivers_license;
        this.Marital_Status = Marital_Status;
        this.gender = gender;
        this.shareholderStatus = shareholderStatus;
        this.benefitplans = benefitplans;
        this.ethnicity = ethnicity;
        this.birthday = birthday;
    }

    public int getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(int Employee_ID) {
        this.Employee_ID = Employee_ID;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String First_Name) {
        this.First_Name = First_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String Last_Name) {
        this.Last_Name = Last_Name;
    }

    public String getAddress1() {
        return Address1;
    }

    public void setAddress1(String Address1) {
        this.Address1 = Address1;
    }

    public String getAddress2() {
        return Address2;
    }

    public void setAddress2(String Address2) {
        this.Address2 = Address2;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public String getDrivers_license() {
        return drivers_license;
    }

    public void setDrivers_license(String drivers_license) {
        this.drivers_license = drivers_license;
    }

    public String getMarital_Status() {
        return Marital_Status;
    }

    public void setMarital_Status(String Marital_Status) {
        this.Marital_Status = Marital_Status;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getShareholderStatus() {
        return shareholderStatus;
    }

    public void setShareholderStatus(int shareholderStatus) {
        this.shareholderStatus = shareholderStatus;
    }
    
    public int getBenefitplans() {
        return benefitplans;
    }

    public void setBenefitplans(int benefitplans) {
        this.benefitplans = benefitplans;
    }

    public String getEthnicity() {
        return ethnicity;
    }

    public void setEthnicity(String ethnicity) {
        this.ethnicity = ethnicity;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    
    
    
}
