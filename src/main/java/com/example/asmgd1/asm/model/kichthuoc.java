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
@Table(name = "KichThuoc")
@Entity
public class kichthuoc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   // @NotNull(message = "khong duoc de trong id")
    private Integer id;
    @Column(name = "Ma")
    @NotBlank(message = "khong duoc de trong ma")
    private String makt;
    @Column(name = "Ten")
    @NotBlank(message = "khong duoc de trong ten")
    private String tenkt;
    @Column(name = "TrangThai")
    private boolean trangThai;
}