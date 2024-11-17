package com.example.asmgd1.asm.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "NhanVien")
@Entity
public class nhanvien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   // @NotNull(message = "khong duoc de trong id")
    private Integer id;
    @Column(name = "Ten")
    @NotBlank(message = "khong duoc de trong ten")
    private String tennv;
    @Column(name = "MaNV")
    @NotBlank(message = "khong duoc de trong ma ")
    private String manv;
    @Column(name = "TenDangNhap")
    @NotBlank(message = "khong duoc de trong ten dang nhap")
    private String tendn;
    @Column(name = "MatKhau")
    @NotBlank(message = "khong duoc de trong password")
    private String matkhau;
    @Column(name = "TrangThai")
    private boolean trangThai;
}
