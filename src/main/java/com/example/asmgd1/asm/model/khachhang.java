package com.example.asmgd1.asm.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "KhachHang")
@Entity
public class khachhang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "khong duoc de trong ten")
    @Column(name = "Ten")
    private String tenkh;
    @NotBlank(message = "khong duoc de trong sdt")
    @Column(name = "SDT")
    private String sdt;
    @NotBlank(message = "khong duoc de trong ma")
    @Column(name = "MaKH")
    private String makh;
    @Column(name = "TrangThai")
    private boolean trangThai;


}
