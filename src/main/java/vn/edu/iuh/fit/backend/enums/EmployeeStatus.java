package vn.edu.iuh.fit.backend.enums;

import java.io.Serializable;

public enum EmployeeStatus implements Serializable{
    ACTIVE(1),
    IN_ACTIVE(0),
    TERMINATED(-1);
    private int value;

    EmployeeStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
