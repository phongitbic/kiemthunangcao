package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.hoadon;
import com.example.asmgd1.asm.model.spchitiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;
import java.util.List;

public interface HoaDonRepository extends JpaRepository<hoadon, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM hoadon x WHERE  x.id LIKE %:id%")
    ArrayList<hoadon> searchByhd(Integer id);
    List<hoadon> findHoaDonsById(Integer id);
}
