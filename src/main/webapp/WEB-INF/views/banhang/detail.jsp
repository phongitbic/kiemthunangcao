<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết Hóa Đơn</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="container mt-5">
    <h2> Chi Tiết Hóa Đơn</h2>
            <td>ID:</td>
            <td>${hoaDon.id}</td>
    <br>

            <td>Nhân Viên:</td>
            <td>${hoaDon.nhanVien.manv}</td>
    <br>

            <td>Khách Hàng:</td>
            <td>${hoaDon.khachHang.tenkh}</td>
    <br>

            <td>Ngày Mua:</td>
            <td>${hoaDon.ngaymh}</td>
    <br>

            <td>Trạng Thái:</td>
            <td>
                <span class="badge ${hoaDon.trangThai ? 'badge-success' : 'badge-danger'}">
                    ${hoaDon.trangThai ? "Đã thanh toán" : "Chưa thanh toán"}
                </span>
            </td>




    <!-- Hiển thị chi tiết sản phẩm trong hóa đơn -->
    <h3>Chi Tiết Sản Phẩm</h3>
    <table class="table table-bordered table-hover table-striped">
        <thead>
        <tr>
            <th>ID SPCT</th>
            <th>Tên Sản Phẩm</th>
            <th>Màu Sắc</th>
            <th>Kích Thước</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
        </tr>
        </thead>
        <tbody>

        <!-- Lặp qua danh sách sản phẩm trong hóa đơn -->
        <c:forEach var="hdct" items="${list_HoaDonChiTiet}">
            <tr>
                <td>${hdct.spChiTiet.id}</td>
                <td>${hdct.spChiTiet.sanPham.ten}</td>
                <td>${hdct.spChiTiet.mauSac.tenms}</td>
                <td>${hdct.spChiTiet.kichThuoc.tenkt}</td>
                <td>${hdct.soluong}</td>
                <td>${hdct.dongia}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="/banhang/hien-thi" class="btn btn-primary">
        <i class="fas fa-arrow-left"></i> Quay lại danh sách
    </a>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
