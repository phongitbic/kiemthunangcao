package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.KhachHangRepository;
import com.example.asmgd1.asm.model.khachhang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class KhachHangService {
    @Autowired
    private KhachHangRepository khr;


    public List<khachhang> getAllKhachHang() {
        return khr.findAll();
    }

    public khachhang getKhachHangById(Integer id) {
        Optional<khachhang> optionalKhachHang = khr.findById(id);
        if (optionalKhachHang.isPresent()) {
            return optionalKhachHang.get();
        }
        return null;
    }

    public List<khachhang> getKhachHangsById(Integer id) {
        return khr.findAllById(id);
    }
    public khachhang saveKhachHang(khachhang khachHang) {
        return khr.save(khachHang);
    }

    public khachhang updateKhachHang(Integer id, khachhang updatedKhachHang) {
        Optional<khachhang> optionalKhachHang = khr.findById(id);
        if (optionalKhachHang.isPresent()) {
            khachhang khachHang = optionalKhachHang.get();
            khachHang.setTenkh(updatedKhachHang.getTenkh());
            khachHang.setSdt(updatedKhachHang.getSdt());
            khachHang.setMakh(updatedKhachHang.getMakh());
            khachHang.setTrangThai(updatedKhachHang.isTrangThai());
            return khr.save(khachHang);
        }
        return null;
    }

    public boolean deleteKhachHang(Integer id) {
        if (khr.existsById(id)) {
            khr.deleteById(id);
            return true;
        }
        return false;
    }
}
