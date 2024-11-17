package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.NhanVienRepository;
import com.example.asmgd1.asm.model.nhanvien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NhanVienService {
    @Autowired
    private NhanVienRepository nvr;
    public List<nhanvien> getAllNhanVien() {
        return nvr.findAll();
    }

    public nhanvien getNhanVienById(Integer id) {
        Optional<nhanvien> optionalKhachHang = nvr.findById(id);
        if (optionalKhachHang.isPresent()) {
            return optionalKhachHang.get();
        }
        return null;
    }

    public List<nhanvien> findNhanviensByid(Integer id) {
        return nvr.searchBynv(id);
    }

    public nhanvien saveNhanVien(nhanvien nhanVien) {
        return nvr.save(nhanVien);
    }

    public nhanvien updateNhanVien(Integer id, nhanvien updatednv) {
        Optional<nhanvien> optionalNhanVien = nvr.findById(id);
        if (optionalNhanVien.isPresent()) {
            nhanvien existingNhanVien = optionalNhanVien.get();
            existingNhanVien.setTennv(updatednv.getTennv());
            existingNhanVien.setManv(updatednv.getManv());
            existingNhanVien.setTendn(updatednv.getTendn());
            existingNhanVien.setMatkhau(updatednv.getMatkhau());
            existingNhanVien.setTrangThai(updatednv.isTrangThai());
            return nvr.save(existingNhanVien);
        }
        return null;
    }

    public boolean deleteNhanVien(Integer id) {
        if (nvr.existsById(id)) {
            nvr.deleteById(id);
            return true;
        }
        return false;
    }
}
