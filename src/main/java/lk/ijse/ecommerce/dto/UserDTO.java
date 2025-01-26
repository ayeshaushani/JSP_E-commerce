package lk.ijse.ecommerce.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserDTO {
    private int userId;
    private String userName;
    private String password;
    private String email;
    private String phone;
    private String address;
    private String role;
    private String status;
}
