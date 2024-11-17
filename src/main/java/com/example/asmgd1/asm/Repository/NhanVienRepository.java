package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.khachhang;
import com.example.asmgd1.asm.model.nhanvien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface NhanVienRepository extends JpaRepository<nhanvien, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM nhanvien x WHERE  x.id LIKE %:id%")
    ArrayList<nhanvien> searchBynv(Integer id);
}
