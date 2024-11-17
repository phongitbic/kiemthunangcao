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
</head>
<body>
<div class="text-center">
    <h2 class="text-center mb-4">Chi Tiết Hóa Đơn</h2>
    <p class="text-center"><strong>ID:</strong> ${hdct.id}</p>
    <p class="text-center"><strong>ID Sản Phẩm Chi Tiết:</strong>
    <td>${hdct.spChiTiet.id}</td>
    </p>
    <p class="text-center"><strong>ID Hóa Đơn:</strong>
    <td>${hdct.hoaDon.id}</td>
    </p>
    <p class="text-center"><strong>Số Lượng:</strong> ${hdct.soluong}</p>
    <p class="text-center"><strong>Đơn Giá:</strong> ${hdct.dongia}</p>
    <p class="text-center"><strong>Trạng Thái:</strong> ${hdct.trangThai ? "Đã Thanh Toán" : "Chưa Thanh Toán"}</p>
    <a href="/asm/ht-hdct"
       style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">
        Quay lại</a>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>