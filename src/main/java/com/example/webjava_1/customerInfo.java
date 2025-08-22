package com.example.webjava_1;

import java.io.Serializable;

/**
 * This class represents a customer with an email, first name, and last name.
 */

public class customerInfo implements Serializable {
    private String email;
    private String firstName;
    private String lastName;

    public customerInfo(String email, String firstName, String lastName) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
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
}