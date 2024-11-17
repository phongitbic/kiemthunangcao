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
            <h3>Thêm Khách Hàng</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addkh" method="post" modelAttribute="khachhang">
<%--                <div class="mb-3">--%>
<%--                    <label for="id" class="form-label">Id</label>--%>
<%--                        &lt;%&ndash;                    <input type="text" class="form-control" id="id" name="idkh">&ndash;%&gt;--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Tên Khách Hàng</label>
                        <%--                    <input type="text" class="form-control" id="ten" name="tenkh">--%>
                    <form:input class="form-control" path="tenkh"/>
                    <form:errors path="tenkh"/>
                </div>
                <div class="mb-3">
                    <label for="sdt" class="form-label">Số Điện thoại</label>
                        <%--                    <input type="text" class="form-control" id="sdt" name="sdt">--%>
                    <form:input class="form-control" path="sdt"/>
                    <form:errors path="sdt"/>
                </div>
                <div class="mb-3">
                    <label for="maKH" class="form-label">Mã Khách Hàng</label>
                        <%--                    <input type="text" class="form-control" id="maKH" name="makh">--%>
                    <form:input class="form-control" path="makh"/>
                    <form:errors path="makh"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiThanhToan" name="trangThai" value="true" checked>--%>
                            <label class="form-check-label">hoạt động</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaThanhToan" name="trangThai" value="false">--%>
                            <label class="form-check-label">không hoạt động</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit" class="btn btn-primary">add</form:button>

            </form:form>


            <%--            <form action="/asm/addkh" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="id" class="form-label">Id</label>--%>
            <%--                    <input type="text" class="form-control" id="id" name="idkh">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ten" class="form-label">Tên Khách Hàng</label>--%>
            <%--                    <input type="text" class="form-control" id="ten" name="tenkh">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="sdt" class="form-label">Số Điện thoại</label>--%>
            <%--                    <input type="text" class="form-control" id="sdt" name="sdt">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="maKH" class="form-label">Mã Khách Hàng</label>--%>
            <%--                    <input type="text" class="form-control" id="maKH" name="makh">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiThanhToan" name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiThanhToan">hoạt động</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaThanhToan" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiChuaThanhToan">không hoạt động</label>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--                <button type="submit" class="btn btn-primary">Thêm</button>--%>
            <%--            </form>--%>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>