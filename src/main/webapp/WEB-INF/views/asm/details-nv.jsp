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
<div class="text-center">
    <h2 style="margin-bottom: 20px; text-align: center; color: white;">Chi Tiết Nhân Viên</h2>
    <p class="text-center"><strong>ID:</strong> ${nv.id}</p>
    <p class="text-center"><strong>Tên Nhân Viên:</strong> ${nv.tennv}</p>
    <p class="text-center"><strong>Mã Nhân Viên:</strong> ${nv.manv}</p>
    <p class="text-center"><strong>Tên Đăng Nhập:</strong> ${nv.tendn}</p>
    <p class="text-center"><strong>Mật Khẩu:</strong> ${nv.matkhau}</p>
    <p class="text-center"><strong>Trạng Thái:</strong> ${nv.trangThai ? "Hoạt Động" : "Không Hoạt Động"}</p>
    <a class="text-center" href="/asm/ht-nv"
       style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">Quay
        lại
    </a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>