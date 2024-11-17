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
            <h3>update Khách Hàng</h3>
        </div>
        <div class="card-body">
            <form action="/asm/updatekh" method="post">
                <div class="mb-3">
                    <label for="id" class="form-label">Id</label>
                    <input type="text" class="form-control" id="id" name="id" value="${kh.id}" readonly>
                </div>
                <div class="mb-3">
                    <label for="ten" class="form-label">Tên Khách Hàng</label>
                    <input type="text" class="form-control" id="ten" name="tenkh" value="${kh.tenkh}">
                </div>
                <div class="mb-3">
                    <label for="sdt" class="form-label">Số Điện thoại</label>
                    <input type="text" class="form-control" id="sdt" name="sdt" value="${kh.sdt}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Mã Khách Hàng</label>
                    <input type="text" class="form-control" name="makh" value="${kh.makh}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiThanhToan" name="trangThai"
                                   value="true"${kh.trangThai?"checked":""} checked>
                            <label class="form-check-label" for="trangThaiThanhToan">hoạt động</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiChuaThanhToan" name="trangThai"
                                   value="false" ${!kh.trangThai?"checked":""}>
                            <label class="form-check-label" for="trangThaiChuaThanhToan">không hoạt động</label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">update</button>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>