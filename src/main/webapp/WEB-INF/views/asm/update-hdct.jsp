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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h3>update Hóa Đơn Chi Tiết</h3>
        </div>
        <div class="card-body">
            <form action="/asm/updatehdct" method="post">
                <div class="mb-3">
                    <label for="id" class="form-label">ID hoa don chi tiet</label>
                    <input type="text" class="form-control" id="id" name="id" value="${hdct.id}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label">ID Hóa Đơn</label>
                    <select class="form-select" name="hoaDon">
                        <c:forEach items="${listhd}" var="hd">
                            <option value="${hd.id}" label="${hd.id}" ${hd.id == hdct.hoaDon.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">ID Sản Phẩm Chi Tiết</label>
                    <select class="form-select" name="spChiTiet">
                        <c:forEach items="${listSPCT}" var="sp">
                            <option value="${sp.id}" label="${sp.ma}" ${sp.id == hdct.spChiTiet.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="soLuong" class="form-label">Số Lượng</label>
                    <input type="text" class="form-control" id="soLuong" name="soluong" value="${hdct.soluong}">
                </div>
                <div class="mb-3">
                    <label for="donGia" class="form-label">Đơn Giá</label>
                    <input type="text" class="form-control" id="donGia" name="dongia" value="${hdct.dongia}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai"
                                   value="true" ${hdct.trangThai?"checked":""} checked>
                            <label class="form-check-label">Đã Thanh Toán</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai"
                                   value="false" ${!hdct.trangThai?"checked":""}>
                            <label class="form-check-label">Chưa Thanh Toán</label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>