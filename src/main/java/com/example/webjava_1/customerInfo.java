package com.example.webjava_1;

import java.io.Serializable;

/**
 * This class represents a customer with an email, first name, and last name.
 */

public class customerInfo implements Serializable {
    private final String email;
    private final String firstName;
    private final String lastName;
    private final String dateOfBirth;
    private final String heardUs;
    private final String contactMe;

    public customerInfo(String email, String firstName, String lastName, String dateOfBirth, String heardUs, String contactMe) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.heardUs = heardUs;
        this.contactMe = contactMe;
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getDateOfBirth() { return  dateOfBirth;  }
    public String getHeardUs() { return heardUs;  }
    public String getContactMe() { return contactMe; }
}