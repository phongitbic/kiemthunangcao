package com.example.assNhom3.service;

import com.example.assNhom3.entity.KhachHang;
import com.example.assNhom3.entity.NhanVien;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class KhachHangServiceTest {
    KhachHangService service ;
    String  expected, actual;;
    @BeforeEach
    void setUp() {

        service  = new KhachHangService();
        service.addKhachHang(new KhachHang(1,"Nguyen Van A", "0352485138", "KH01",true));
        service.addKhachHang(new KhachHang(2,"Nguyen Van B", "0349505369", "KH02",false));
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void testAddKhachHangSuccess() {
        KhachHang newKhachHang = new KhachHang(3, "Tran Thi C", "1122334455", "TTC03", true);
        String result = service.addKhachHang(newKhachHang);
        assertEquals("Thêm khách hàng thành công.", result);  // Kiểm tra thông báo thành công
    }

    @Test
    void testAddKhachHangDuplicateId() {
        KhachHang duplicateIdKhachHang = new KhachHang(1, "Nguyen Thi D", "2233445566", "NTD04", true);
        String result = service.addKhachHang(duplicateIdKhachHang);
        assertEquals("ID đã tồn tại.", result);  // Kiểm tra thông báo lỗi ID trùng
    }

    @Test
    void testAddKhachHangEmptyName() {
        KhachHang emptyNameKhachHang = new KhachHang(4, "", "3344556677", "NTA04", true);
        String result = service.addKhachHang(emptyNameKhachHang);
        assertEquals("Tên khách hàng không được bỏ trống.", result);  // Kiểm tra thông báo lỗi tên trống
    }

    @Test
    void testAddKhachHangInvalidPhone() {
        KhachHang invalidPhoneKhachHang = new KhachHang(5, "Nguyen Thi E", "notaphone", "NTE05", true);
        String result = service.addKhachHang(invalidPhoneKhachHang);
        assertEquals("Số điện thoại không hợp lệ.", result);  // Kiểm tra thông báo lỗi số điện thoại
    }

    @Test
    void testAddKhachHangEmptyCode() {
        KhachHang emptyCodeKhachHang = new KhachHang(6, "Le Thi F", "4567891230", "", true);
        String result = service.addKhachHang(emptyCodeKhachHang);
        assertEquals("Mã khách hàng không được bỏ trống.", result);  // Kiểm tra thông báo lỗi mã khách hàng trống
    }

    // Test 6: Kiểm tra thêm khách hàng với số điện thoại dài hơn 10 chữ số
    @Test
    void testAddKhachHangPhoneTooLong() {
        KhachHang phoneTooLongKhachHang = new KhachHang(7, "Nguyen Thi G", "1234567890123", "NTG06", true);
        String result = service.addKhachHang(phoneTooLongKhachHang);
        assertEquals("Số điện thoại không hợp lệ.", result);  // Kiểm tra thông báo số điện thoại quá dài
    }

    // Test 7: Kiểm tra thêm khách hàng với trạng thái "false" (khách hàng không hoạt động)
    @Test
    void testAddKhachHangInactiveStatus() {
        KhachHang inactiveStatusKhachHang = new KhachHang(8, "Tran Thi H", "0789654321", "TTH07", false);
        String result = service.addKhachHang(inactiveStatusKhachHang);
        assertEquals("Thêm khách hàng thành công.", result);  // Kiểm tra khách hàng không hoạt động vẫn có thể được thêm
    }

    // Test 8: Kiểm tra thêm khách hàng khi ID là null (không hợp lệ)
    @Test
    void testAddKhachHangNullId() {
        KhachHang nullIdKhachHang = new KhachHang(null, "Le Thi I", "0789654321", "LTI08", true);
        String result = service.addKhachHang(nullIdKhachHang);
        assertEquals("ID không hợp lệ.", result);  // Kiểm tra thông báo lỗi ID null
    }

    // Test 9: Kiểm tra thêm khách hàng khi số điện thoại là null
    @Test
    void testAddKhachHangNullPhone() {
        KhachHang nullPhoneKhachHang = new KhachHang(9, "Nguyen Thi J", null, "NTJ09", true);
        String result = service.addKhachHang(nullPhoneKhachHang);
        assertEquals("Số điện thoại không hợp lệ.", result);  // Kiểm tra thông báo lỗi số điện thoại null
    }

    // Test 10: Kiểm tra thêm khách hàng với mã khách hàng trùng với một mã khác
    @Test
    void testAddKhachHangDuplicateCode() {
        KhachHang duplicateCodeKhachHang = new KhachHang(10, "Nguyen Thi K", "0678991230", "KH01", true);
        String result = service.addKhachHang(duplicateCodeKhachHang);
        assertEquals("Mã khách hàng không được bỏ trống.", result);  // Kiểm tra nếu mã trùng (sử dụng một điều kiện tùy chỉnh cho mã khách hàng)
    }






    //Update
    //testcase 1: Cập nhật thành công
    @Test
    void testUpdateKhachHangSuccess() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        String result = service.updateKhachHang(khachHang);
        assertEquals("Cập nhật khách hàng thành công.", result);  // Kiểm tra thông báo thành công
    }


    //testcase 2: Cập nhật khách hàng với ID không tồn tại
    @Test
    void testUpdateKhachHangNotFound() {
        KhachHang khachHang = new KhachHang(999, "Tran Thi Lan", "0987654321", "KH999", true);
        String result = service.updateKhachHang(khachHang);
        assertEquals("Không tìm thấy khách hàng với ID này.", result);  // Kiểm tra không tìm thấy khách hàng với ID
    }

    //testcase 3: Cập nhật khách hàng với thông tin null
    @Test
    void testUpdateKhachHangNull() {
        String result = service.updateKhachHang(null);
        assertEquals("Thông tin khách hàng không hợp lệ.", result);  // Kiểm tra thông báo lỗi khi khách hàng null
    }


    //testcase 4: Cập nhật khách hàng với tên trống
    @Test
    void testUpdateKhachHangEmptyName() {
        KhachHang khachHang = new KhachHang(1, "", "0901234567", "KH01", true);
        String result = service.updateKhachHang(khachHang);
        assertEquals("Thông tin khách hàng không hợp lệ.", result);  // Kiểm tra khi tên khách hàng trống
    }


    //testcase 5: Cập nhật khách hàng với mã khách hàng trống
    @Test
    void testUpdateKhachHangEmptyCode() {
        KhachHang updatedKhachHang = new KhachHang(2, "Nguyen Thi F", "0912345678", "", true);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("Mã khách hàng không được bỏ trống.", result);  // Kiểm tra mã khách hàng không trống
    }


    //testcase 6: Cập nhật thành công với trạng thái "false"
    @Test
    void testUpdateKhachHangInactiveStatus() {
        KhachHang updatedKhachHang = new KhachHang(2, "Nguyen Thi G", "0987654321", "KH02", false);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("Cập nhật khách hàng thành công.", result);  // Kiểm tra trạng thái không hoạt động vẫn có thể cập nhật
    }


    //testcase 7: Cập nhật thất bại khách hàng với số điện thoại dài hơn 10 chữ số
    @Test
    void testUpdateKhachHangPhoneTooLong() {
        KhachHang updatedKhachHang = new KhachHang(1, "Nguyen Thi H", "1234567890123", "KH01", true);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("Số điện thoại không hợp lệ.", result);  // Kiểm tra số điện thoại quá dài
    }


    //testcase 8: Cập nhật khách hàng khi ID là null
    @Test
    void testUpdateKhachHangNullId() {
        KhachHang updatedKhachHang = new KhachHang(null, "Nguyen Thi I", "0987654321", "KH03", true);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("ID không hợp lệ.", result);  // Kiểm tra ID không hợp lệ
    }


    //testcase 9: Cập nhật thông tin khách hàng với số điện thoại là null
    @Test
    void testUpdateKhachHangNullPhone() {
        KhachHang updatedKhachHang = new KhachHang(1, "Nguyen Thi J", null, "KH01", true);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("Số điện thoại không hợp lệ.", result);  // Kiểm tra số điện thoại null
    }


    //testcase 10: Cập nhật khách hàng với thông tin ID trùng
    @Test
    void testUpdateKhachHangDuplicateCode() {
        KhachHang updatedKhachHang = new KhachHang(1, "Nguyen Thi K", "0912345678", "KH02", true);
        String result = service.updateKhachHang(updatedKhachHang);
        assertEquals("Mã khách hàng không được bỏ trống.", result);  // Kiểm tra nếu mã khách hàng bị trùng
    }




    //Delete
    @Test
    void testDeleteKhachHangSuccess() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang); // Giả sử có phương thức add để thêm khách hàng vào danh sách
        boolean result = service.deleteKhachHang(1);
        assertTrue(result);  // Kiểm tra kết quả xóa thành công
    }


    @Test
    void testDeleteKhachHangNotFound() {
        boolean result = service.deleteKhachHang(999);
        assertFalse(result);  // Kiểm tra không tìm thấy khách hàng với ID này
    }


    @Test
    void testDeleteKhachHangInvalidId() {
        // Kiểm tra xóa khách hàng với ID không hợp lệ (ID âm)
        boolean result = service.deleteKhachHang(-1);
        assertFalse(result);  // Kiểm tra không thể xóa khách hàng với ID âm
    }

    @Test
    void testDeleteKhachHangEmptyList() {
        boolean result = service.deleteKhachHang(1);
        assertFalse(result);  // Kiểm tra khi danh sách khách hàng trống
    }



    @Test
    void testDeleteKhachHangAlreadyDeleted() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);  // Thêm khách hàng
        service.deleteKhachHang(1);  // Xóa khách hàng
        boolean result = service.deleteKhachHang(1);  // Cố gắng xóa lại khách hàng đã xóa
        assertFalse(result);  // Kiểm tra không thể xóa lại khách hàng đã xóa
    }


    @Test
    void testDeleteKhachHangDuplicateId() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        KhachHang khachHang2 = new KhachHang(1, "Nguyen Thi Lan", "0907654321", "KH02", true);  // ID trùng
        service.addKhachHang(khachHang1);  // Thêm khách hàng 1
        service.addKhachHang(khachHang2);  // Thêm khách hàng 2 với ID trùng
        boolean result = service.deleteKhachHang(1);
        assertTrue(result);  // Kiểm tra xóa thành công, mặc dù có ID trùng
    }



    @Test
    void testDeleteKhachHangListModified() {
        // Giả sử phương thức delete sẽ bị ảnh hưởng bởi sự thay đổi trong cấu trúc danh sách
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang); // Thêm khách hàng vào danh sách ban đầu
        service.deleteKhachHang(1);  // Xóa khách hàng khỏi danh sách
        service.addKhachHang(new KhachHang(2, "Tran Thi Lan", "0987654321", "KH02", true)); // Thêm khách hàng khác vào danh sách

        // Giả sử danh sách đã được sửa đổi, không thể xóa lại khách hàng với ID 1
        boolean result = service.deleteKhachHang(1);
        assertFalse(result);  // Kiểm tra nếu không thể xóa khách hàng sau khi danh sách đã bị sửa đổi
    }


    @Test
    void testDeleteKhachHangConcurrencyIssue() {
        // Giả sử có vấn đề đồng bộ hóa khi xóa trong môi trường đa luồng
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang); // Thêm khách hàng vào danh sách

        // Mô phỏng một vấn đề về đồng bộ hóa trong môi trường đa luồng
        Thread thread1 = new Thread(() -> service.deleteKhachHang(1));
        Thread thread2 = new Thread(() -> service.deleteKhachHang(1));

        thread1.start();
        thread2.start();

        try {
            thread1.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        boolean result = service.deleteKhachHang(1);  // Sau khi cả hai luồng đã thực hiện xóa
        assertFalse(result);  // Kiểm tra xem có thể xóa được khách hàng hay không sau khi gặp vấn đề đồng bộ hóa
    }



    @Test
    void testDeleteKhachHangInactiveStatus() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", false);  // Trạng thái không hoạt động
        service.addKhachHang(khachHang);  // Thêm khách hàng
        boolean result = service.deleteKhachHang(1);
        assertTrue(result);  // Kiểm tra xóa khách hàng dù trạng thái không hoạt động
    }



    @Test
    void testDeleteKhachHangActiveStatus() {
        KhachHang khachHang = new KhachHang(2, "Nguyen Thi Lan", "0907654321", "KH02", true);  // Trạng thái hoạt động
        service.addKhachHang(khachHang);  // Thêm khách hàng
        boolean result = service.deleteKhachHang(2);
        assertTrue(result);  // Kiểm tra xóa khách hàng có trạng thái hoạt động
    }








    //1. Test lấy tất cả khách hàng khi danh sách không trống
    @Test
    void testGetAllKhachHangSuccess() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        KhachHang khachHang2 = new KhachHang(2, "Nguyen Thi Lan", "0907654321", "KH02", true);
        service.addKhachHang(khachHang1);
        service.addKhachHang(khachHang2);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(2, result.size());  // Kiểm tra có 2 khách hàng trong danh sách
    }

    //2. Test lấy tất cả khách hàng khi danh sách rỗng
    @Test
    void testGetAllKhachHangEmptyList() {
        List<KhachHang> result = service.getAllKhachHang();
        assertTrue(result.isEmpty());  // Kiểm tra danh sách rỗng
    }

    //3. Test lấy tất cả khách hàng với 1 khách hàng
    @Test
    void testGetAllKhachHangSingleItem() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(1, result.size());  // Kiểm tra có 1 khách hàng trong danh sách
    }


    //4. Test lấy tất cả khách hàng sau khi xóa một khách hàng
    @Test
    void testGetAllKhachHangAfterDelete() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        KhachHang khachHang2 = new KhachHang(2, "Nguyen Thi Lan", "0907654321", "KH02", true);
        service.addKhachHang(khachHang1);
        service.addKhachHang(khachHang2);
        service.deleteKhachHang(1);  // Xóa khách hàng 1

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(1, result.size());  // Kiểm tra chỉ còn 1 khách hàng sau khi xóa
    }

    //5. Test lấy tất cả khách hàng khi tất cả khách hàng không hoạt động
    @Test
    void testGetAllKhachHangInactiveStatus() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", false);
        KhachHang khachHang2 = new KhachHang(2, "Nguyen Thi Lan", "0907654321", "KH02", false);
        service.addKhachHang(khachHang1);
        service.addKhachHang(khachHang2);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(2, result.size());  // Kiểm tra lấy tất cả khách hàng không hoạt động
    }

    //6. Test lấy tất cả khách hàng với ID trùng
    @Test
    void testGetAllKhachHangDuplicateId() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        KhachHang khachHang2 = new KhachHang(1, "Nguyen Thi Lan", "0907654321", "KH02", true);  // ID trùng
        service.addKhachHang(khachHang1);
        service.addKhachHang(khachHang2);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(2, result.size());  // Kiểm tra có 2 khách hàng dù ID trùng
    }

    //7. Test lấy tất cả khách hàng sau khi sửa thông tin khách hàng
    @Test
    void testGetAllKhachHangAfterUpdate() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang1);
        khachHang1.setTenkh("Nguyen Thi Hoa");  // Sửa tên khách hàng
        service.updateKhachHang(khachHang1);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(1, result.size());  // Kiểm tra có 1 khách hàng sau khi sửa
        assertEquals("Nguyen Thi Hoa", result.get(0).getTenkh());  // Kiểm tra tên khách hàng đã sửa
    }


    //8. Test lấy tất cả khách hàng với khách hàng có thông tin null
    @Test
    void testGetAllKhachHangWithNullData() {
        KhachHang khachHang1 = new KhachHang(1, null, "0901234567", "KH01", true);  // Tên null
        service.addKhachHang(khachHang1);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(1, result.size());  // Kiểm tra có 1 khách hàng
        assertNull(result.get(0).getTenkh());  // Kiểm tra tên khách hàng là null
    }

    //9. Test lấy tất cả khách hàng với khách hàng có số điện thoại null
    @Test
    void testGetAllKhachHangWithNullPhone() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", null, "KH01", true);  // Số điện thoại null
        service.addKhachHang(khachHang1);

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(1, result.size());  // Kiểm tra có 1 khách hàng
        assertNull(result.get(0).getSdt());  // Kiểm tra số điện thoại là null
    }


    //10. Test lấy tất cả khách hàng khi có khách hàng đã bị xóa
    @Test
    void testGetAllKhachHangAfterDeleteInactive() {
        KhachHang khachHang1 = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang1);
        service.deleteKhachHang(1);  // Xóa khách hàng

        List<KhachHang> result = service.getAllKhachHang();
        assertEquals(0, result.size());  // Kiểm tra không còn khách hàng nào sau khi xóa
    }



    @Test
    void testGetKhachHangByIdSuccess() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);

        KhachHang result = service.getKhachHangById(1);
        assertNotNull(result);  // Kiểm tra khách hàng không null
        assertEquals(1, result.getId());  // Kiểm tra ID đúng
    }


    @Test
    void testGetKhachHangByIdNotFound() {
        KhachHang result = service.getKhachHangById(999);
        assertNull(result);  // Kiểm tra khi không tìm thấy khách hàng, kết quả là null
    }


    @Test
    void testGetKhachHangByIdEmptyList() {
        KhachHang result = service.getKhachHangById(1);
        assertNull(result);  // Kiểm tra khi danh sách khách hàng trống
    }


    @Test
    void testGetKhachHangByIdAfterDelete() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);
        service.deleteKhachHang(1);  // Xóa khách hàng

        KhachHang result = service.getKhachHangById(1);
        assertNull(result);  // Kiểm tra khi khách hàng đã bị xóa, kết quả là null
    }



    @Test
    void testGetKhachHangByIdNegativeId() {
        // Giả sử chúng ta thêm một khách hàng với ID dương
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);

        // Thử tìm khách hàng với ID âm, giả sử không có khách hàng nào có ID âm
        KhachHang result = service.getKhachHangById(-1);
        assertNull(result);  // Kiểm tra kết quả là null khi ID âm không hợp lệ
    }

    // Done id

    @Test
    void testGetKhachHangByNameSuccess() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);

        List<KhachHang> result = service.getKhachHangByName("Nguyen Thi Mai");
        assertEquals(1, result.size());  // Kiểm tra có đúng 1 khách hàng với tên này
        assertEquals("Nguyen Thi Mai", result.get(0).getTenkh());  // Kiểm tra tên khách hàng đúng
    }

    @Test
    void testGetKhachHangByNameNotFound() {
        List<KhachHang> result = service.getKhachHangByName("Nguyen Thi Lan");
        assertTrue(result.isEmpty());  // Kiểm tra không có khách hàng nào với tên này
    }


    @Test
    void testGetKhachHangByNameEmptyList() {
        List<KhachHang> result = service.getKhachHangByName("Nguyen Thi Mai");
        assertTrue(result.isEmpty());  // Kiểm tra danh sách trống, không có khách hàng nào
    }


    @Test
    void testGetKhachHangByNameIgnoreCase() {
        KhachHang khachHang = new KhachHang(1, "Nguyen Thi Mai", "0901234567", "KH01", true);
        service.addKhachHang(khachHang);

        List<KhachHang> result = service.getKhachHangByName("nguyen thi mai");
        assertEquals(1, result.size());  // Kiểm tra tìm kiếm không phân biệt chữ hoa chữ thường
    }



    @Test
    void testGetKhachHangByNameNullName() {
        List<KhachHang> result = service.getKhachHangByName(null);
        assertTrue(result.isEmpty());  // Kiểm tra khi tên là null, không có kết quả
    }




}