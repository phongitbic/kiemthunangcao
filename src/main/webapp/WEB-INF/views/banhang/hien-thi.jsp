<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="mt-5" style="width: 90%; margin: 0 auto">
    <a href="/asm/view"
       style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">Quay
        lại</a>


    <h2 class="mb-4 text-center">
        DANH SÁCH HOÁ ĐƠN
    </h2>
    <form class="d-flex mb-3" role="search" action="/banhang/search" method="get">
        <input class="form-control me-2 w-25 mx-3" type="text"  aria-label="Search" name="idHoaDon">
        <button  type="submit">
            search
        </button>
    </form>
    <div class="table-responsive" style="max-height: 500px; overflow:auto;">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Mã NV</th>
                <th>Tên KH</th>
                <th>Ngày mua</th>
                <th>ID_SPCT</th>
                <th>Tên SP</th>
                <th>MS</th>
                <th>KT</th>
                <th>SL</th>
                <th>Đơn giá</th>
                <th>Trạng thái</th>
                <th>Hoạt động</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${empty list_HoaDon}">
                <tr>
                    <td colspan="12" class="text-center">Không tìm thấy hóa đơn nào!</td>
                </tr>
            </c:if>
            <c:forEach var="hdct" items="${list_HoaDon}">
                <tr>
                    <td>${hdct.hoaDon.id}</td>
                    <td>${hdct.hoaDon.nhanVien.manv}</td>
                    <td>${hdct.hoaDon.khachHang.tenkh}</td>
                    <td>${hdct.hoaDon.ngaymh}</td>
                    <td>${hdct.spChiTiet.id}</td>
                    <td>${hdct.spChiTiet.sanPham.ten}</td>
                    <td>${hdct.spChiTiet.mauSac.tenms}</td>
                    <td>${hdct.spChiTiet.kichThuoc.tenkt}</td>
                    <td>${hdct.soluong}</td>
                    <td>${hdct.dongia}</td>
                    <td>
                        <span class="badge ${hdct.hoaDon.trangThai ? 'badge-success' : 'badge-danger'}">
                                ${hdct.hoaDon.trangThai ? "Đã thanh toán" : "Chưa thanh toán"}
                        </span>
                    </td>
                    <td>
                        <a href="/banhang/detail?id=${hdct.hoaDon.id}" class="btn btn-info btn-sm">
                             Chi tiết
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<a href="/banhang/add" class="btn btn-primary">
    <i class="fas fa-plus"></i> Thêm hóa đơn mới
</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>