package com.example.asmgd1.asm.Repository;

import com.example.asmgd1.asm.model.hdchitiet;
import com.example.asmgd1.asm.model.kichthuoc;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;
import java.util.List;

public interface HDCTRepository extends JpaRepository<hdchitiet, Integer> {
    @Query(nativeQuery = true,
            value = "SELECT * FROM HoaDonChiTiet WHERE idHoaDon = ?"
    )
    List<hdchitiet> getHoaDonChiTietByHoaDonId(Integer idHoaDon);

    @Query(nativeQuery = true,
            value ="SELECT * FROM HoaDonChiTiet x WHERE  x.id LIKE %:id%")
    ArrayList<hdchitiet> searchByhdct(Integer id);
//    hdchitiet findSingleBySanPhamChiTietIdAndHoaDonId(Integer sanPhamChiTietId, Integer hoaDonId);
//
//    List<hdchitiet> findBySanPhamChiTietIdAndHoaDonId(Integer sanPhamChiTietId, Integer idUpdate);
//
//    void deleteBySanPhamChiTietId(Integer sanPhamChiTietId);
//
//    List<hdchitiet> findAllBySanPhamChiTietIdAndHoaDonId(Integer sanPhamChiTietId, Integer id);

    List<hdchitiet> findByHoaDonId(Integer hoaDonId);

//    @Modifying
//    @Transactional
//    @Query("DELETE FROM hdchitiet h WHERE h.spChiTiet.id = :sanPhamChiTietId")
//    void deleteBySanPhamChiTietId(@Param("sanPhamChiTietId") Integer sanPhamChiTietId);
//
//    List<hdchitiet> findAllBySanPhamChiTietIdAndHoaDonId(Integer sanPhamChiTietId, Integer hoaDonId);
//    List<hdchitiet> findBySanPhamChiTietIdAndHoaDonId(Integer sanPhamChiTietId, Integer hoaDonId);
//
////    List<hdchitiet> findHoaDonChiTietsById(Integer id);
}
