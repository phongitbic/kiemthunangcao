<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách sản phẩm và thêm mới hóa đơn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <!-- Phần danh sách sản phẩm -->
        <div class="col-md-8">
            <h2 class="text-center mb-4"><i class="fas fa-list"></i> DANH SÁCH CÁC  SẢN PHẨM</h2>
            <!-- Bảng sản phẩm -->
            <div class="table-responsive" style="max-height: 300px; overflow:auto;">
                <table class="table table-bordered table-hover table-striped">
                    <thead >
                    <tr>
                        <th>ID</th>
                        <th>Tên SP</th>
                        <th>Màu sắc</th>
                        <th>Kích thước</th>
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                        <th colspan="3">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="spChiTiet" items="${list_SanPhamChiTiet}">
                        <tr>
                            <td>${spChiTiet.id}</td>
                            <td>${spChiTiet.sanPham.ten}</td>
                            <td>${spChiTiet.mauSac.tenms}</td>
                            <td>${spChiTiet.kichThuoc.tenkt}</td>
                            <td>${spChiTiet.soluong}</td>
                            <td>${spChiTiet.dongia}</td>
                            <td>
                                <form action="/banhang/add-item" method="post">
                                    <input type="hidden" name="sanPhamChiTietId" value="${spChiTiet.id}">
                                    <div class="input-group">
                                        <input style="width: 60px;" type="number" name="soluong" class="form-control" placeholder="Số lượng" min="1" max="${spChiTiet.soluong}" required>
                                        <button type="submit" class="btn btn-info btn-sm ms-2"><i class="fas fa-plus"></i> Thêm vào giỏ </button>
                                    </div>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <h3 class="mt-3 text-center">Giỏ hàng</h3>
            <div class="table-responsive" style="max-height: 220px; overflow:auto;">
                <table class="table table-bordered table-hover">
                    <thead >
                    <tr>
                        <th>ID</th>
                        <th>Tên SP</th>
                        <th>Màu sắc </th>
                        <th>Kích thước</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Tổng</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cartItem" items="${list_CartItem}">
                        <tr>
                            <td>${cartItem.sanPhamChiTietId}</td>
                            <td>${cartItem.tenSanPham}</td>
                            <td>${cartItem.mauSac}</td>
                            <td>${cartItem.kichThuoc}</td>
                            <td>${cartItem.soLuong}</td>
                            <td>${cartItem.donGia}</td>
                            <td>${cartItem.soLuong * cartItem.donGia}</td>
                            <td>
                                <form action="/banhang/update-item" method="post">
                                    <div class="input-group">
                                        <input type="hidden" name="sanPhamChiTietId" value="${cartItem.sanPhamChiTietId}">
<%--                                        <input style="width: 50px;" type="number" name="soLuongGio" class="form-control mx-1" placeholder="Số lượng" min="1" >--%>
<%--                                        <button type="submit" class="btn btn-warning btn-sm mx-1"><i class="fas fa-edit"></i> Sửa SL</button>--%>
                                        <a href="/banhang/remove?id=${cartItem.sanPhamChiTietId}" class="btn btn-danger btn-sm mx-1"> remove</a>
                                        <a href="/banhang/hoadon"><button style="width: 150px" type="submit" name="thanh_toan" value="true" class="btn btn-success" > Thanh toán</button></a>
                                    </div>
                                </form>
<%--                                <a href="/banhang/hoadon"><button style="width: 150px" type="submit" name="thanh_toan" value="true" class="btn btn-success" > Thanh toán</button></a>--%>

<%--    <a href="/banhang/remove?id=${cartItem.sanPhamChiTietId}" class="btn btn-danger btn-sm mx-1"><i class="fas fa-trash-alt"></i> Xóa</a>--%>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <a href="/banhang/hien-thi" class="btn btn-primary"> Quay lại danh sách</a>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
