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
            <h3>Thêm Kích Thước</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addkt" method="post" modelAttribute="kichthuoc">
<%--                <div class="mb-3">--%>
<%--                    <label class="form-label">Id</label>--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                        &lt;%&ndash;                    <input type="text" class="form-control" id="id" name="idkt">&ndash;%&gt;--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Mã</label>
                    <form:input class="form-control" path="makt"/>
                    <form:errors path="makt"/>
                        <%--                    <input type="text" class="form-control" id="ma" name="makt">--%>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tên</label>
                    <form:input class="form-control" path="tenkt"/>
                    <form:errors path="tenkt"/>
                        <%--                    <input type="text" class="form-control" id="ten" name="tenkt">--%>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai" value="true" checked>--%>
                            <label class="form-check-label">Kích Hoạt</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai" value="false">--%>
                            <label class="form-check-label">Chưa Kích Hoạt</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit" class="btn btn-primary">save</form:button>
            </form:form>


            <%--            <form action="/asm/addkt" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="id" class="form-label">Id</label>--%>
            <%--                    <input type="text" class="form-control" id="id" name="idkt">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ma" class="form-label">Mã</label>--%>
            <%--                    <input type="text" class="form-control" id="ma" name="makt">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ten" class="form-label">Tên</label>--%>
            <%--                    <input type="text" class="form-control" id="ten" name="tenkt">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiKichHoat">Kích Hoạt</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiChuaKichHoat">Chưa Kích Hoạt</label>--%>
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