package com.example.asmgd1.Service;

import com.example.asmgd1.asm.Repository.MauSacRepository;
import com.example.asmgd1.asm.model.mausac;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MauSacService {
    @Autowired
    private MauSacRepository mauSacRepository;

    public List<mausac> getAllMauSac() {
        return mauSacRepository.findAll();
    }

    public mausac getMauSacById(Integer id) {
        Optional<mausac> optionalMauSac = mauSacRepository.findById(id);
        if (optionalMauSac.isPresent()) {
            return optionalMauSac.get();
        }
        return null;
    }

    public mausac createMauSac(mausac mauSac) {
        return mauSacRepository.save(mauSac);
    }

    public List<mausac> getMauSacsByid(Integer id) {
        return mauSacRepository.searchByms(id);
    }

    public mausac updateMauSac(Integer id, mausac updatedMauSac) {
        Optional<mausac> optionalMauSac = mauSacRepository.findById(id);
        if (optionalMauSac.isPresent()) {
            mausac existingMauSac = optionalMauSac.get();
            existingMauSac.setMams(updatedMauSac.getMams());
            existingMauSac.setTenms(updatedMauSac.getTenms());
            existingMauSac.setTrangThai(updatedMauSac.isTrangThai());
            return mauSacRepository.save(existingMauSac);
        }
        return null;
    }

    public void deleteMauSac(Integer id) {
        mauSacRepository.deleteById(id);
    }
}
