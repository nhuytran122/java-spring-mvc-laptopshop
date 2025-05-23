package vn.hoidanit.laptopshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import vn.hoidanit.laptopshop.service.validator.StrongPassword;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
// import lombok.ToString; : tránh lỗi StackOverflowError
import jakarta.validation.constraints.Size;

@Getter
@Setter
// @ToString //@ToString.Exclude
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @Email(message = "Email không hợp lệ", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    // @NotEmpty(message = "Email không được để trống")
    private String email;

    @NotNull
    @Size(min = 3, message = "Password phải có tối thiểu 3 ký tự")
    // @Size(max = 255, message = "Password phải có tối đa 255 ký tự")
    // @StrongPassword(message = "Password phải có 8 ký tự...")
    private String password;

    @NotNull
    @Size(min = 3, message = "Full name phải có tối thiểu 3 ký tự")
    private String fullName;

    private String address;
    @Pattern(regexp = "^(0[0-9]{9})$", message = "Số điện thoại không hợp lệ")
    private String phone;

    private String avatar;

    // roleId
    // User many -> to one -> Role
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    @OneToOne(mappedBy = "user")
    private Cart cart;

}
