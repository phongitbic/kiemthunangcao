package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.HDCTRepository;
import com.example.asmgd1.asm.model.hdchitiet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HoaDonChiTietService {
    @Autowired
    private HDCTRepository hoaDonChiTietRepository;

    public List<hdchitiet> getAllHoaDonChiTiet() {
        return hoaDonChiTietRepository.findAll();
    }

    public hdchitiet getHoaDonChiTietById(Integer id) {
        Optional<hdchitiet> optionalHoaDonChiTiet = hoaDonChiTietRepository.findById(id);
        return optionalHoaDonChiTiet.orElse(null);
    }
    public hdchitiet saveHoaDonChiTiet(hdchitiet hdct) {
        return hoaDonChiTietRepository.save(hdct);
    }
    public List<hdchitiet> searchByIdHdct(Integer id) {
        return hoaDonChiTietRepository.searchByhdct(id);
    }

    public List<hdchitiet> getHoaDonChiTietByHoaDonId(Integer hoaDonId) {
        return hoaDonChiTietRepository.findByHoaDonId(hoaDonId);
    }
}
