package com.example.assNhom3.service;

import com.example.assNhom3.entity.KhachHang;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;

public class KhachHangService {
    private List<KhachHang> khachHangList = new ArrayList<>();

    // Phương thức thêm khách hàng
    public String addKhachHang(KhachHang khachHang) {
        if (khachHang.getId() == null) {
            return "ID không hợp lệ.";
        }
        // Kiểm tra ID trùng
        boolean idExists = khachHangList.stream()
                .anyMatch(kh -> kh.getId().equals(khachHang.getId()));
        if (idExists) {
            return "ID đã tồn tại.";
        }

        // Kiểm tra tên khách hàng
        if (khachHang.getTenkh() == null || khachHang.getTenkh().trim().isEmpty()) {
            return "Tên khách hàng không được bỏ trống.";
        }

        // Kiểm tra số điện thoại hợp lệ (sử dụng regex để kiểm tra số điện thoại)
        if (khachHang.getSdt() == null || !Pattern.matches("\\d{10}", khachHang.getSdt())) {
            return "Số điện thoại không hợp lệ.";
        }

        // Kiểm tra mã khách hàng (có thể là một điều kiện tùy chỉnh)
        if (khachHang.getMakh() == null || khachHang.getMakh().trim().isEmpty()) {
            return "Mã khách hàng không được bỏ trống.";
        }

        // Nếu tất cả điều kiện hợp lệ, thêm khách hàng
        khachHangList.add(khachHang);
        return "Thêm khách hàng thành công.";
    }

    // Phương thức sửa thông tin khách hàng
    public String updateKhachHang(KhachHang khachHang) {
        if (khachHang == null) {
            return "Thông tin khách hàng không hợp lệ.";
        }

        // Kiểm tra ID của khách hàng có tồn tại không
        KhachHang existingKhachHang = getKhachHangById(khachHang.getId());
        if (existingKhachHang == null) {
            return "Không tìm thấy khách hàng với ID này.";
        }

        // Tiến hành cập nhật thông tin khách hàng
        existingKhachHang.setTenkh(khachHang.getTenkh());
        existingKhachHang.setSdt(khachHang.getSdt());
        existingKhachHang.setMakh(khachHang.getMakh());
        existingKhachHang.setTrangThai(khachHang.isTrangThai());

        // Lưu lại khách hàng đã cập nhật
        return "Cập nhật khách hàng thành công.";
    }

    // Phương thức xóa khách hàng
    public boolean deleteKhachHang(int id) {
        return khachHangList.removeIf(kh -> kh.getId().equals(id));
    }

    // Phương thức hiển thị tất cả khách hàng
    public List<KhachHang> getAllKhachHang() {
        return new ArrayList<>(khachHangList);
    }

    // Phương thức tìm kiếm khách hàng theo ID
    public KhachHang getKhachHangById(int id) {
        return khachHangList.stream()
                .filter(kh -> kh.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    // Phương thức tìm kiếm khách hàng theo tên
    public List<KhachHang> getKhachHangByName(String name) {
        List<KhachHang> result = new ArrayList<>();
        for (KhachHang kh : khachHangList) {
            if (kh.getTenkh().equalsIgnoreCase(name)) {
                result.add(kh);
            }
        }
        return result;
    }
}
