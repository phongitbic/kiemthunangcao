package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.SanPhamRepository;
import com.example.asmgd1.asm.model.sanpham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SanPhamService {
    @Autowired
    private SanPhamRepository spr;

    public List<sanpham> getAllSanPham(){
        return spr.findAll();
    }
    public sanpham getSanPhamById(Integer id) {
        Optional<sanpham> optionalSanPham = spr.findById(id);
        if (optionalSanPham.isPresent()) {
            return optionalSanPham.get();
        }
        return null;
    }
    public List<sanpham> searchSanPham(Integer id) {
        return spr.searchByTen(id);
    }
    public sanpham addSanPham(sanpham sanPham) {
        return spr.save(sanPham);
    }

    public sanpham updateSanPham(Integer id, sanpham updatedSanPham) {
        Optional<sanpham> optionalSanPham = spr.findById(id);
        if (optionalSanPham.isPresent()) {
            sanpham existingSanPham = optionalSanPham.get();
            existingSanPham.setMa(updatedSanPham.getMa());
            existingSanPham.setTen(updatedSanPham.getTen());
//            existingSanPham.setTrangThai(updatedSanPham.getTrangThai());
            return spr.save(existingSanPham);
        }
        return null;
    }
    public void deleteSanPham(Integer id) {
        spr.deleteById(id);
    }
}
