package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.HoaDonRepository;
import com.example.asmgd1.asm.model.hoadon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HoaDonService {
    @Autowired
    private HoaDonRepository hdr;

    public List<hoadon> getAllHoaDon() {
        return hdr.findAll();
    }

    public hoadon getHoaDonById(Integer id) {
        Optional<hoadon> optionalHoaDon = hdr.findById(id);
        if (optionalHoaDon.isPresent()) {
            return optionalHoaDon.get();
        }
        return null;
    }
    public List<hoadon> findHoaDonsById(Integer id) {
        return hdr.findHoaDonsById(id);
    }
    public void updateHoaDon(Integer idHoaDon,hoadon hoaDon) {
        Optional<hoadon> optionalHoaDon = hdr.findById(idHoaDon);
        if (optionalHoaDon.isPresent()) {
            hoadon hoaDon1 = optionalHoaDon.get();
            hoaDon1.setKhachHang(hoaDon.getKhachHang());
            hoaDon1.setNhanVien(hoaDon.getNhanVien());
            hoaDon1.setNgaymh(hoaDon.getNgaymh());
            hoaDon1.setTrangThai(hoaDon.isTrangThai());
            hdr.save(hoaDon1);
        }
    }

    public hoadon saveHoaDon(hoadon hoaDon) {
        return hdr.save(hoaDon);
    }
}
