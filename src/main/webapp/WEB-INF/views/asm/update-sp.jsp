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
<div class="container mt-">
    <div class="card">
        <div class="card-header">
            <h3>update Sản Phẩm</h3>
        </div>
        <div class="card-body">
            <form action="/asm/updateSP" method="post">
                <div class="mb-3">
                    <label for="ma" class="form-label">id</label>
                    <input type="text" class="form-control" id="id" name="id" value="${sp.id}" readonly>
                </div>
                <div class="mb-3">
                    <label for="ma" class="form-label">Mã</label>
                    <input type="text" class="form-control" id="ma" name="ma" value="${sp.ma}">
                </div>
                <div class="mb-3">
                    <label for="ten" class="form-label">Tên</label>
                    <input type="text" class="form-control" id="ten" name="ten" value="${sp.ten}">
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiConHang" name="trangThai"
                                   value="true"${sp.trangThai?"checked":""} checked>
                            <label class="form-check-label" for="trangThaiConHang">Còn hàng</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="trangThaiHetHang"
                                   name="trangThai" ${!sp.trangThai?"checked":""} value="false">
                            <label class="form-check-label" for="trangThaiHetHang">Hết hàng</label>
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