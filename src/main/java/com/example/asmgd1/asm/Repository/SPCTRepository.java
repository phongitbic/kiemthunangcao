package com.example.asmgd1.asm.Repository;


import com.example.asmgd1.asm.model.spchitiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.ArrayList;
import java.util.List;

public interface SPCTRepository extends JpaRepository<spchitiet, Integer> {
    @Query(nativeQuery = true,
            value ="SELECT * FROM spchitiet x WHERE  x.id LIKE %:id%")
    ArrayList<spchitiet> searchByid(Integer id);

    List<spchitiet> getSanPhamChiTietsById(Integer id);

   // List<SanPhamChiTiet> findSanPhamChiTietByMaspctContainsIgnoreCase(String maspct);
}
