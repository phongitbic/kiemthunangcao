<%@page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chi Tiết </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container mt-5 d-flex flex-column align-items-center">
    <h2 class="text-center mb-4">Chi Tiết Sản Phẩm</h2>
    <div class="text-center">
        <p><strong>ID:</strong> ${spct.id}</p>
        <p><strong>Mã Sản Phẩm Chi Tiết:</strong> ${spct.ma}</p>
        <p class="text-center"><strong>ID Kích Thước:</strong>
        <td>${spct.kichThuoc.id}</td>
        </p>
        <p><strong>ID Màu Sắc:</strong>
        <td>${spct.mauSac.id}</td>
        </p>
        <p><strong>ID Sản Phẩm:</strong>
        <td>${spct.sanPham.id}</td>
        </p>
        <p><strong>Số Lượng:</strong> ${spct.soluong}</p>
        <p><strong>Đơn Giá:</strong> ${spct.dongia}</p>
        <p><strong>Trạng Thái:</strong> ${spct.trangThai ? "còn hàng" : "hết hàng"}</p>
        <a href="/asm/ht-spct"
           style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">Quay
            lại</a>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>