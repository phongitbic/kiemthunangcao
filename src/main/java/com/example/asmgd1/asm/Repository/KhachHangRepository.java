package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.khachhang;
import com.example.asmgd1.asm.model.spchitiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;
import java.util.List;

public interface KhachHangRepository extends JpaRepository<khachhang, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM khachhang x WHERE  x.id LIKE %:id%")
    ArrayList<khachhang> searchBykh(Integer id);
    List<khachhang> findAllById(Integer id);
}
