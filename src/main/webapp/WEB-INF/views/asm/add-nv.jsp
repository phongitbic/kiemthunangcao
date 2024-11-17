<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <h3>Thêm Nhân Viên</h3>
        </div>
        <div class="card-body">

            <form:form action="/asm/addnv" method="post" modelAttribute="nhanvien">
<%--                <div class="mb-3">--%>
<%--                    <label class="form-label">ID Nhân Viên</label>--%>
<%--                        &lt;%&ndash;                    <input type="text" class="form-control" id="id" name="idnv">&ndash;%&gt;--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Tên Nhân Viên</label>
                        <%--                    <input type="text" class="form-control" id="ten" name="tennv">--%>
                    <form:input class="form-control" path="tennv"/>
                    <form:errors path="tennv"/>
                </div>
                <div class="mb-3">
                    <label for="maNV" class="form-label">Mã Nhân Viên</label>
                        <%--                    <input type="text" class="form-control" id="maNV" name="manv">--%>
                    <form:input class="form-control" path="manv"/>
                    <form:errors path="manv"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tên Đăng Nhập Nhân Viên</label>
                        <%--                    <input type="text" class="form-control" id="tenDangNhap" name="tendn">--%>
                    <form:input class="form-control" path="tendn"/>
                    <form:errors path="tendn"/>
                </div>
                <div class="mb-3">
                    <label for="matKhau" class="form-label">Mật Khẩu</label>
                        <%--                    <input type="password" class="form-control" id="matKhau" name="matkhau">--%>
                    <form:input class="form-control" path="matkhau"/>
                    <form:errors path="matkhau"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiHoatDong" name="trangThai" value="true" checked>--%>
                            <label class="form-check-label">Hoạt Động</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiKhongHoatDong" name="trangThai" value="false">--%>
                            <label class="form-check-label">Không Hoạt Động</label>
                        </div>
                    </div>
                </div>
                <form:button class="btn btn-primary" type="submit">save</form:button>

            </form:form>
            <%--            <form action="/asm/addnv" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="id" class="form-label">ID Nhân Viên</label>--%>
            <%--                    <input type="text" class="form-control" id="id" name="idnv">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ten" class="form-label">Tên Nhân Viên</label>--%>
            <%--                    <input type="text" class="form-control" id="ten" name="tennv">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="maNV" class="form-label">Mã Nhân Viên</label>--%>
            <%--                    <input type="text" class="form-control" id="maNV" name="manv">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="tenDangNhap" class="form-label">Tên Đăng Nhập Nhân Viên</label>--%>
            <%--                    <input type="text" class="form-control" id="tenDangNhap" name="tendn">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="matKhau" class="form-label">Mật Khẩu</label>--%>
            <%--                    <input type="password" class="form-control" id="matKhau" name="matkhau">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng Thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiHoatDong" name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiHoatDong">Hoạt Động</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiKhongHoatDong" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiKhongHoatDong">Không Hoạt Động</label>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--                <button type="submit" class="btn btn-primary">Save</button>--%>
            <%--            </form>--%>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>