package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.sanpham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;


@Repository
public interface SanPhamRepository extends JpaRepository<sanpham,Integer>{
    @Query(nativeQuery = true,
            value ="SELECT * FROM SanPham x WHERE  x.id LIKE %:id%")
    ArrayList<sanpham>  searchByTen( Integer id);

}
