package com.example.asmgd1.asm.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "SanPham")
@Entity
public class sanpham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "Ma")
    @NotBlank(message = "khong duoc de trong ma")
    private String ma;
    @Column(name = "Ten")

    @NotBlank(message = "khong duoc de trong ten")
    private String ten;

    @Column(name = "TrangThai")
    private boolean trangThai;

}
