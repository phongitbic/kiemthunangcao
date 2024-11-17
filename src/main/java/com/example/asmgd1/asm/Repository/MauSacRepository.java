package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.hoadon;
import com.example.asmgd1.asm.model.mausac;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface MauSacRepository extends JpaRepository<mausac, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM mausac x WHERE  x.id LIKE %:id%")
    ArrayList<mausac> searchByms(Integer id);
}
