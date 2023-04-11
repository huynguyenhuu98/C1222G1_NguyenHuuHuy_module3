package ss10_bai1.model;

import java.util.Date;

public class Customer {
    private String name;
    private String dateofbirth;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(String name, String dateofbirth, String address, String image) {
        this.name = name;
        this.dateofbirth = dateofbirth;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
