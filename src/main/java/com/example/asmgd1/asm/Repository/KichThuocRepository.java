package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.kichthuoc;
import com.example.asmgd1.asm.model.mausac;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface KichThuocRepository extends JpaRepository<kichthuoc, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM kichthuoc x WHERE  x.id LIKE %:id%")
    ArrayList<kichthuoc> searchBykt(Integer id);
}
