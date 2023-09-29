package vn.edu.iuh.fit.backend.entities;

import jakarta.persistence.*;
import vn.edu.iuh.fit.backend.enums.EmployeeStatus;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
public class Employee implements Serializable{
    @Id
    @Column(name = "emp_id", columnDefinition = "BIGINT(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "full_name", length = 150)
    private String fullName;
    @Column(name = "dob", length = 6)
    private LocalDateTime dob;
    @Column(name = "email", length = 150)
    private String email;
    @Column(name = "phone", length = 15)
    private String phone;
    @Column(name = "address", length = 250)
    private String address;
    @Column(name = "status", columnDefinition = "INT(11)")
    private EmployeeStatus status;

    public Employee() {
    }

    public Employee(String fullName, LocalDateTime dob, String email, String phone, String address, EmployeeStatus status) {
        this.fullName = fullName;
        this.dob = dob;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public LocalDateTime getDob() {
        return dob;
    }

    public void setDob(LocalDateTime dob) {
        this.dob = dob;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public EmployeeStatus getStatus() {
        return status;
    }

    public void setStatus(EmployeeStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", dob=" + dob +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", status=" + status +
                '}';
    }
}
