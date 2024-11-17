<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> hóa đơn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="container mt-5 d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <!-- Phần thêm mới hóa đơn -->
        <div class="col-md-4 p-2 border border-3 rounded">
            <h2 class="text-center mb-5"> HÓA ĐƠN</h2>
            <form action="/banhang/add" method="post">

                <div class="mb-3">
                    <label for="khachHangId" class="form-label">Khách hàng</label>
                    <select name="khachHang.id" class="form-select" id="khachHangId">
                        <option selected disabled hidden>vui lòng chọn khách hàng</option>
                        <c:forEach var="khachHang" items="${listkh}">
                            <option value="${khachHang.id}">${khachHang.tenkh}</option>
                        </c:forEach>
                    </select>
                    <span class="text-danger">${errorkhachHang}</span>
                </div>

                <div class="mb-3">
                    <label for="idSanPham" class="form-label">Sản phẩm</label> <br>
                    <input type="text" class="form-control" id="idSanPham" value="${idSanPhamChiTiet}"  readonly>
                    <span class="text-danger">${error}</span>
                </div>

                <div class="mb-3">
                    <label for="soLuong" class="form-label">Số lượng</label>
                    <input type="text" name="soLuong" class="form-control" id="soLuong" value="${soLuongForm}"  required>
                </div>

                <div class="mb-3">
                    <label for="ngayMua" class="form-label">Ngày mua</label>
                    <input type="text" class="form-control" id="ngayMua" name="hoaDon.ngayMuaHang" value="${ngayHienTai}" readonly>
                </div>

                <div class="mb-3">
                    <label for="nhanVienId" class="form-label">Nhân viên</label>
                    <select name="nhanVien.id" class="form-select" id="nhanVienId">
                        <option selected disabled hidden>Chọn nhân viên</option>
                        <c:forEach var="nhanVien" items="${listnv}">
                            <option value="${nhanVien.id}">${nhanVien.tennv}</option>
                        </c:forEach>
                    </select>
                    <span class="text-danger">${errornhanVien}</span>
                </div>

                <div class="mb-3">
                    <label class="from-label">Tổng tiền</label>
                    <input type="text" class="form-control" value="${tongTien}" readonly placeholder="">
                </div>

                <div class="text-center mt-3 p-3 d-flex justify-content-center">
                    <button style="width: 150px" type="submit" name="thanh_toan" value="true" class="btn btn-success"
            onclick="if(confirm('Xác nhận thanh toán?')) { alert('Thanh toán thành công'); return true; } else { return false; }">
        Thanh toán
    </button>
                    <a href="/banhang/hien-thi" class="btn btn-primary"> Quay lại danh sách</a>
                </div>
            </form>
        </div>
    </div>


</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
