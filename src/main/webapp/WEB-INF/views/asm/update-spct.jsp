<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <h3>Update Sản Phẩm Chi Tiết</h3>
        </div>
        <div class="card-body">
            <form action="/asm/updatespct" method="post">
                <div class="mb-3">
                    <label class="form-label">id Sản Phẩm Chi Tiết</label>
                    <input type="text" class="form-control" name="id" value="${spct.id}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mã Sản Phẩm Chi Tiết</label>
                    <input type="text" class="form-control" id="ma" name="ma" value="${spct.ma}">
                </div>
                <div class="mb-3">
                    <label class="form-label">ID Kích Thước</label>
                    <select class="form-select" name="kichThuoc">
                        <c:forEach items="${listkt}" var="kt">
                            <option value="${kt.id}" label="${kt.id}"  ${kt.id == spct.kichThuoc.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">ID Màu Sắc</label>
                    <select class="form-select" name="mauSac">
                        <c:forEach items="${listms}" var="ms">
                            <option value="${ms.id}" label="${ms.id}" ${ms.id == spct.mauSac.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">ID Sản Phẩm</label>
                    <select class="form-select" name="sanPham">
                        <c:forEach items="${listSP}" var="sp">
                            <option value="${sp.id}" label="${sp.id}" ${sp.id == spct.sanPham.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Số Lượng</label>
                    <input type="text" class="form-control" name="soluong" value="${spct.soluong}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Đơn Giá</label>
                    <input type="text" class="form-control" name="dongia" value="${spct.dongia}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai"
                                   value="true"${spct.trangThai?"checked":""} checked>
                            <label class="form-check-label" for="trangThaiKichHoat">còn hàng</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai"
                                   value="false" ${!spct.trangThai?"checked":""}>
                            <label class="form-check-label" for="trangThaiChuaKichHoat">đã hết hàng</label>
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