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
<div class="container mt-">
    <div class="card">
        <div class="card-header">
            <h3>Thêm Sản Phẩm</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addSP" method="post" modelAttribute="sanpham">
<%--                <div class="mb-3">--%>
<%--                    <label for="ma" class="form-label">id</label>--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>

<%--                </div>--%>
                <div class="mb-3">
                    <label for="ma" class="form-label">Mã</label>
                    <form:input class="form-control" path="ma"/>
                    <form:errors path="ma"/>
                </div>
                <div class="mb-3">
                    <label for="ten" class="form-label">Tên</label>
                    <form:input class="form-control" path="ten"/>
                    <form:errors path="ten"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" value="true" checked="true"/>
                            <label class="form-check-label">Còn hàng</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" value="false"/>
                            <label class="form-check-label">Hết hàng</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit" class="btn btn-primary">add</form:button>


            </form:form>


            <%--            <form action="/asm/addSP" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ma" class="form-label">id</label>--%>
            <%--                    <input type="text" class="form-control" id="id" name="id">--%>

            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ma" class="form-label">Mã</label>--%>
            <%--                    <input type="text" class="form-control" id="ma" name="ma">--%>

            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ten" class="form-label">Tên</label>--%>
            <%--                    <input type="text" class="form-control" id="ten" name="ten">--%>

            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiConHang" name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiConHang">Còn hàng</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiHetHang" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiHetHang">Hết hàng</label>--%>
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