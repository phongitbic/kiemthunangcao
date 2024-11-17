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
            <h3>Thêm Màu Sắc</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addms" method="post" modelAttribute="mausac">
<%--                <div>--%>
<%--                    <label class="form-label">id mau sac</label>--%>
<%--                        &lt;%&ndash;                    <input type="text" class="form-control" name="idms">&ndash;%&gt;--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Mã</label>
                        <%--                    <input type="text" class="form-control" id="ma" name="mams">--%>
                    <form:input class="form-control" path="mams"/>
                    <form:errors path="mams"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tên</label>
                        <%--                    <input type="text" class="form-control" id="ten" name="tenms">--%>
                    <form:input class="form-control" path="tenms"/>
                    <form:errors path="tenms"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai" value="true" checked>--%>
                            <label class="form-check-label">hết màu</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton class="form-check-input" path="trangThai" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai" value="false">--%>
                            <label class="form-check-label">còn màu</label>
                        </div>
                    </div>
                </div>
                <form:button class="btn btn-primary" type="submit">save</form:button>

            </form:form>


            <%--            <form action="/asm/addms" method="post">--%>

            <%--                <div>--%>
            <%--                    <label class="form-label">id mau sac</label>--%>
            <%--                    <input type="text" class="form-control" name="idms">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ma" class="form-label">Mã</label>--%>
            <%--                    <input type="text" class="form-control" id="ma" name="mams">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="ten" class="form-label">Tên</label>--%>
            <%--                    <input type="text" class="form-control" id="ten" name="tenms">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiKichHoat">hết màu</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiChuaKichHoat">còn màu</label>--%>
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