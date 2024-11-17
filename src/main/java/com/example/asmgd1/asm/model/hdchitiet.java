package com.example.asmgd1.asm.model;

import jakarta.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "HoaDonChiTiet")
@Entity
public class hdchitiet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "IdHoaDon", referencedColumnName = "id")
    private hoadon hoaDon;

    @ManyToOne
    @JoinColumn(name = "IdSPCT", referencedColumnName = "id")
    private spchitiet spChiTiet;

    @Column(name = "SoLuong")
    private Integer soluong;
    @Column(name = "DonGia")
    private Double dongia;
    @Column(name = "TrangThai")
    private boolean trangThai;
}
