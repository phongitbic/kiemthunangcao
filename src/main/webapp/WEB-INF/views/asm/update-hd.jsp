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
            <h3>Update Hóa Đơn</h3>
        </div>
        <div class="card-body">
            <form action="/asm/updatehd" method="post">
                <div class="mb-3">
                    <label class="form-label">id hoa don</label>
                    <input type="text" class="form-control" name="id" value="${hd.id}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nhân Viên</label>
                    <select class="form-select" name="nhanVien">
                        <c:forEach items="${listnv}" var="nv">
                            <option value="${nv.id}" label="${nv.tennv}"  ${nv.id == hd.nhanVien.id ?"selected":""} >

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Khách Hàng</label>
                    <select class="form-select" name="khachHang">
                        <c:forEach items="${listkh}" var="kh">
                            <option value="${kh.id}" label="${kh.tenkh}" ${kh.id == hd.khachHang.id ?"selected":""}>

                            </option>
                        </c:forEach>
                    </select>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="ngayMuaHang" class="form-label">Ngày Mua Hàng</label>
                    <input type="date" class="form-control" id="ngayMuaHang" name="ngaymh" value="${hd.ngaymh}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai"
                                   value="true" ${hd.trangThai?"checked":""} >
                            <label class="form-check-label">Đã Thanh Toán</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai"
                                   value="false" ${!hd.trangThai?"checked":""}>
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