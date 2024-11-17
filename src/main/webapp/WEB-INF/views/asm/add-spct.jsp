<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <h3>Thêm Sản Phẩm Chi Tiết</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addspct" method="post" modelAttribute="SPCT">
<%--                <div class="mb-3">--%>
<%--                    <label class="form-label">id Sản Phẩm Chi Tiết</label>--%>
<%--                    <form:input class="form-control" path="id"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Mã Sản Phẩm Chi Tiết</label>
                    <form:input class="form-control" path="ma"/>
                    <form:errors path="ma"/>

                </div>
                <div class="mb-3">
                    <label class="form-label">ID Kích Thước</label>
                    <form:select path="kichThuoc" class="form-select">
                        <option selected hidden disabled> vui long chon</option>
                        <c:forEach items="${listkt}" var="kt">
                            <option value="${kt.id}" label="${kt.id}">

                            </option>
                        </c:forEach>
                    </form:select>
                        <%--                    <form:errors path="kichThuoc"/>--%>


                </div>
                <div class="mb-3">
                    <label class="form-label">ID Màu Sắc</label>
                    <form:select path="mauSac" class="form-select">
                        <c:forEach items="${listms}" var="ms">--%>
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${ms.id}" label="${ms.id}">

                            </option>
                        </c:forEach>
                    </form:select>
                        <%--                    <form:errors path="mauSac"/>--%>

                </div>

                <div class="mb-3">
                    <label class="form-label">ID Sản Phẩm</label>
                    <form:select path="sanPham" class="form-select">
                        <c:forEach items="${listSP}" var="sp">
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${sp.id}" label="${sp.id}">

                            </option>
                        </c:forEach>
                    </form:select>
                        <%--                    <form:errors path="sanPham"/>--%>
                </div>
                <div class="mb-3">
                    <label class="form-label">Số Lượng</label>
                    <form:input class="form-control" path="soluong"/>
                    <form:errors path="soluong"/>

                </div>
                <div class="mb-3">
                    <label class="form-label">Đơn Giá</label>
                    <form:input class="form-control" path="dongia"/>
                    <form:errors path="dongia"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" value="true" checked="true"/>

                            <label class="form-check-label">còn hàng</label>
                        </div>
                        <div class="form-check form-check-inline">

                            <form:radiobutton path="trangThai" value="false"/>
                            <label class="form-check-label">đã hết hàng</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit">save</form:button>


            </form:form>


            <%--            <form action="/asm/addspct" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="idspct" class="form-label">id Sản Phẩm Chi Tiết</label>--%>
            <%--                    <input type="text" class="form-control" id="idspct" name="idspct">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Mã Sản Phẩm Chi Tiết</label>--%>
            <%--                    <input type="text" class="form-control" id="ma" name="ma">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">ID Kích Thước</label>--%>
            <%--                    <select class="form-select" name="idKichThuoc">--%>
            <%--                        <option selected hidden disabled> vui long chon</option>--%>
            <%--                        <c:forEach items="${listkt}" var="kt">--%>
            <%--                            <option value="${kt.idkt}" label="${kt.idkt}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">ID Màu Sắc</label>--%>
            <%--                    <select class="form-select" name="idMauSac">--%>
            <%--                        <c:forEach items="${listms}" var="ms">--%>
            <%--                            <option selected hidden disabled> vui long chon</option>--%>
            <%--                            <option value="${ms.idms}" label="${ms.idms}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>

            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">ID Sản Phẩm</label>--%>
            <%--                    <select class="form-select" name="idSanPham">--%>
            <%--                        <c:forEach items="${listSP}" var="sp">--%>
            <%--                            <option selected hidden disabled> vui long chon</option>--%>
            <%--                            <option value="${sp.id}" label="${sp.id}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Số Lượng</label>--%>
            <%--                    <input type="text" class="form-control" name="soluong">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Đơn Giá</label>--%>
            <%--                    <input type="text" class="form-control" name="dongia">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng Thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiKichHoat" name="trangThai"--%>
            <%--                                   value="true" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiKichHoat">còn hàng</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaKichHoat" name="trangThai"--%>
            <%--                                   value="false">--%>
            <%--                            <label class="form-check-label" for="trangThaiChuaKichHoat">đã hết hàng</label>--%>
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