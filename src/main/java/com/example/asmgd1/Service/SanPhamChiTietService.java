package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.KichThuocRepository;
import com.example.asmgd1.asm.Repository.MauSacRepository;
import com.example.asmgd1.asm.Repository.SPCTRepository;
import com.example.asmgd1.asm.Repository.SanPhamRepository;
import com.example.asmgd1.asm.model.spchitiet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SanPhamChiTietService {
    @Autowired
    private SPCTRepository spctr;
    @Autowired
    private SanPhamRepository spr;

    @Autowired
    private KichThuocRepository ktr;

    @Autowired
    private MauSacRepository msr;

    public List<spchitiet> getAllSanPhamChiTiet() {
        return spctr.findAll();
    }

    public spchitiet getSanPhamChiTietById(Integer id) {
        Optional<spchitiet> optionalSanPhamChiTiet = spctr.findById(id);
        return optionalSanPhamChiTiet.orElse(null);
    }
    public List<spchitiet> getListSanPhamChiTietTimKiem(Integer id) {
        return spctr.getSanPhamChiTietsById(id);
    }

    public List<spchitiet> searchSanPhamChiTiet(Integer id) {
        return spctr.searchByid(id);
    }


    public spchitiet saveSanPhamChiTiet(spchitiet sanPhamChiTiet) {
        return spctr.save(sanPhamChiTiet);
    }

    public spchitiet updateSanPhamChiTiet(Integer id, spchitiet updatespct) {
        return spctr.findById(id)
                .map(existingSanPhamChiTiet -> {
                    existingSanPhamChiTiet.setMa(updatespct.getMa());
                    existingSanPhamChiTiet.setSoluong(updatespct.getSoluong());
                    existingSanPhamChiTiet.setDongia(updatespct.getDongia());
                    existingSanPhamChiTiet.setTrangThai(updatespct.isTrangThai());

                    existingSanPhamChiTiet.setKichThuoc(ktr.findById(updatespct.getKichThuoc().getId()).orElse(null));
                    existingSanPhamChiTiet.setMauSac(msr.findById(updatespct.getMauSac().getId()).orElse(null));
                    existingSanPhamChiTiet.setSanPham(spr.findById(updatespct.getSanPham().getId()).orElse(null));

                    return spctr.save(existingSanPhamChiTiet);
                }).orElse(null);
    }


    public void deleteSanPhamChiTiet(Integer id) {
        spctr.deleteById(id);
    }
}
