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
<div class="container">
    <h2 class="mb-4 text-center">Danh Sách Sản Phẩm Chi tiet</h2>
    <a href="/asm/addspct" class="btn btn-primary mb-3">Thêm Mới Sản Phẩm chi tiết</a>


    <form action="/asm/searchspct" method="get">
        <input type="text" name="id">
        <button type="submit">Search</button>
    </form>
</div>
<table border="1" class="table">
    <thead>
    <tr>
        <th>id spct</th>
        <th>mã spct</th>
        <th>id kich thuoc</th>
        <th>id mau sac</th>
        <th>id san pham</th>
        <th>so luong</th>
        <th>don gia</th>
        <th>trang thái</th>
        <th>action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listSPCT}" var="spct">
        <tr>

            <td>${spct.id}</td>
            <td>${spct.ma}</td>
            <td>${spct.kichThuoc.id}</td>
            <td>${spct.mauSac.id}</td>
            <td>${spct.sanPham.id}</td>
            <td>${spct.soluong}</td>
            <td>${spct.dongia}</td>
            <td>${spct.trangThai?"còn hàng":"hết hàng"}</td>
            <td>
                <button type="submit"><a href="/asm/xoaspct?id=${spct.id}">xoá </a></button>
                <button type="submit"><a href="/asm/updatespct?id=${spct.id}">sửa </a></button>
                <button type="submit"><a href="/asm/detailsspct?id=${spct.id}">detail </a></button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/asm/view"
   style="background-color: #007bff; border-color: #007bff; color: #ffffff; padding: 10px 15px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; text-align: center; margin-top: 20px;">Quay
    lại</a>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>