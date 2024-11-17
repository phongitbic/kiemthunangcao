<%@page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chi Tiết Khách Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="text-center">
    <h2 style="margin-bottom: 20px;" class="text-center mb-4">Chi Tiết Khách Hàng</h2>
    <p class="text-center"><strong>ID Khách Hàng:</strong> ${kh.id}</p>
    <p class="text-center"><strong>Tên Khách Hàng:</strong> ${kh.tenkh}</p>
    <p class="text-center"><strong>Số Điện Thoại:</strong> ${kh.sdt}</p>
    <p class="text-center"><strong>Mã Khách Hàng:</strong> ${kh.makh}</p>
    <p class="text-center"><strong>Trạng Thái:</strong> ${kh.trangThai ? "hoạt động" : "không hoạt động"}</p>
    <a class="text-center" href="/asm/ht-khachhang"
       style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">Quay
        lại
    </a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>