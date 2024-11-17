package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.KichThuocRepository;
import com.example.asmgd1.asm.model.kichthuoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class KichThuocService {
    @Autowired
    private KichThuocRepository kichThuocRepository;

    public List<kichthuoc> getAllKichThuoc() {
        return kichThuocRepository.findAll();
    }

    public kichthuoc getKichThuocById(Integer id) {
        Optional<kichthuoc> optionalKichThuoc = kichThuocRepository.findById(id);
        if (optionalKichThuoc.isPresent()) {
            return optionalKichThuoc.get();
        }
        return null;
    }

    public List<kichthuoc> searchKichThuoc(Integer id) {
        return kichThuocRepository.searchBykt(id);
    }

    public kichthuoc saveKichThuoc(kichthuoc kichThuoc) {
        return kichThuocRepository.save(kichThuoc);
    }

    public kichthuoc updateKichThuoc(Integer id, kichthuoc updatedkt) {
        Optional<kichthuoc> optionalKichThuoc = kichThuocRepository.findById(id);
        if (optionalKichThuoc.isPresent()) {
            kichthuoc existingKichThuoc = optionalKichThuoc.get();
            existingKichThuoc.setMakt(updatedkt.getMakt());
            existingKichThuoc.setTenkt(updatedkt.getTenkt());
            existingKichThuoc.setTrangThai(updatedkt.isTrangThai());
            return kichThuocRepository.save(existingKichThuoc);
        }
        return null;
    }

    public boolean deleteKichThuoc(Integer id) {
        if (kichThuocRepository.existsById(id)) {
            kichThuocRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
