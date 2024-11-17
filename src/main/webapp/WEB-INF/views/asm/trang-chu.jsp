<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div id="carouselExample" class="carousel slide carousel-fade" data-bs-ride="carousel">

            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="3000">
                    <img src="https://media-cdn-v2.laodong.vn/storage/newsportal/2023/8/26/1233821/Giai-Nhi-1--Nang-Tre.jpg"
                         class="d-block w-100" style="height: 500px; object-fit: cover;" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="3000">
                    <img src="https://bold.vn/wp-content/uploads/2019/05/bold-academy-5.jpg" class="d-block w-100"
                         style="height: 500px; object-fit: cover;" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="3000">
                    <img src="https://cdn3.ivivu.com/2015/11/20-hinh-anh-tuyet-dep-ve-Viet-Nam-ivivu-13.jpg"
                         class="d-block w-100" style="height: 500px; object-fit: cover;" alt="...">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            <nav class="navbar navbar-expand-lg mb-2" style="background-color:rgb(247, 13, 13)">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"><i class="bi bi-house"></i> CellphoneS</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#abc"
                            aria-controls="abc" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="abc">
                        <div class="container-fluid d-flex justify-content-between">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#"><i
                                            class="bi bi-phone-fill"></i>
                                        dien thoai</a>
                                </li>
                                <li class="nav-item">
                                    <%--                                    <a class="nav-link" href="#"><i class="bi bi-laptop"></i>laptop</a>--%>

                                </li>


                            </ul>


                            <ul class="navbar-nav">

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                       aria-expanded="false">
                                        <i class="bi bi-person-fill"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#"><i class="bi bi-box-arrow-in-right"></i>
                                            đăng
                                            nhập</a></li>
                                        <li><a class="dropdown-item" href="#">đăng kí</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="bi bi-search"></i> tra cứu thông
                                            tin</a></li>
                                        <li><a class="dropdown-item" href="#">quên mật khẩu</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </nav>
        </div>
        <nav class="navbar navbar-expand-lg mb-2">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#abc"
                        aria-controls="abc" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="abc">
                    <div class="pt-4 container d-flex justify-content-evenly">
                        <a class="btn btn-warning" href="/asm/hienthi-san-pham">Sản phẩm</a>
                        <a class="btn btn-primary" href="/asm/ht-khachhang">Khách hàng</a>
                        <a class="btn btn-success" href="/asm/ht-nv">Nhân viên</a><br>
                        <a class="btn btn- warning" href="/asm/ht-spct">Sản phẩm chi tiết</a>
                        <a class="btn btn-secondary " href="/asm/ht-hd">Hoá đơn</a><br>
                        <a class="btn btn-primary" href="/asm/ht-hdct">Hoá đơn chi tiết</a>
                        <a class="btn btn-danger" href="/asm/ht-ms">Màu sắc</a>
                        <a class="btn btn-primary" href="/asm/ht-kt">Kích thước</a>
                        <a class="btn btn-primary" href="/banhang/hien-thi">bán hàng</a>
                    </div>
                </div>
            </div>
        </nav>

    </div>
    <div class="mt-5" style="width: 90%; margin: 0 auto">


        <h2 class="mb-4 text-center">
            DANH SÁCH HOÁ ĐƠN
        </h2>
        <form class="d-flex mb-3" role="search" action="/banhang/search" method="get">
            <input class="form-control me-2 w-25 mx-3" type="text"  aria-label="Search" name="idHoaDon">
            <button  type="submit">
                search
            </button>
        </form>
        <div class="table-responsive" style="max-height: 500px; overflow:auto;">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Mã NV</th>
                    <th>Tên KH</th>
                    <th>Ngày mua</th>
                    <th>ID_SPCT</th>
                    <th>Tên SP</th>
                    <th>MS</th>
                    <th>KT</th>
                    <th>SL</th>
                    <th>Đơn giá</th>
<%--                    <th>Trạng thái</th>--%>
                    <th>Hoạt động</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty list_HoaDon}">
                    <tr>
                        <td colspan="12" class="text-center">Không tìm thấy hóa đơn nào!</td>
                    </tr>
                </c:if>
                <c:forEach var="hdct" items="${list_HoaDon}">
                    <tr>
                        <td>${hdct.hoaDon.id}</td>
                        <td>${hdct.hoaDon.nhanVien.manv}</td>
                        <td>${hdct.hoaDon.khachHang.tenkh}</td>
                        <td>${hdct.hoaDon.ngaymh}</td>
                        <td>${hdct.spChiTiet.id}</td>
                        <td>${hdct.spChiTiet.sanPham.ten}</td>
                        <td>${hdct.spChiTiet.mauSac.tenms}</td>
                        <td>${hdct.spChiTiet.kichThuoc.tenkt}</td>
                        <td>${hdct.soluong}</td>
                        <td>${hdct.dongia}</td>
<%--                        <td>--%>
<%--                        <span class="badge ${hdct.hoaDon.trangThai ? 'badge-success' : 'badge-danger'}">--%>
<%--                                ${hdct.hoaDon.trangThai ? "Đã thanh toán" : "Chưa thanh toán"}--%>
<%--                        </span>--%>
<%--                        </td>--%>
                        <td>
                            <a href="/banhang/detail?id=${hdct.hoaDon.id}" class="btn btn-info btn-sm">
                                Chi tiết
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


    <a href="/banhang/add" class="btn btn-primary">
        <i class="fas fa-plus"></i> Thêm hóa đơn mới
    </a>
</div>


</div>
<header class=" d-flex justify-content-center" style="height: 100px; ">
    <img style="height: 100px;"
         src="https://caodang.fpt.edu.vn/wp-content/uploads/18198154_10208600482868814_3469513_n.png" alt="">
</header>
<footer>
    <div class="bg-danger mt-3 text-bg-secondary d-flex justify-content-between" style="height: 60px;">
        <img style="height: 100px;"
             src="https://inkythuatso.com/uploads/images/2021/12/logo-fpt-polytechnic-inkythuatso-09-12-57-46.jpg"
             alt="">
        <%--        <p class="mt-2 ms-2 mb-2">SD19202</p>--%>
        <p class="mt-2 me-2 mb-2">
            <i class="bi bi-youtube"></i>
            <i class="bi bi-facebook"></i>
            <i class="bi bi-instagram"></i>
        </p>
    </div>
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
