<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h3>Thêm Hóa Đơn</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addhd" method="post" modelAttribute="hd">
<%--                <div class="mb-3">--%>
<%--                    <label class="form-label">id hoa don</label>--%>
<%--                    <form:input path="id" class="form-control"/>--%>
<%--                    <form:errors path="id"/>--%>
<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">Nhân Viên</label>
                    <form:select path="nhanVien" class="form-select">
                        <c:forEach items="${listnv}" var="nv">
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${nv.id}" label="${nv.tennv}">

                            </option>
                        </c:forEach>
                    </form:select>

                </div>
                <div class="mb-3">
                    <label class="form-label">Khách Hàng</label>
                    <form:select path="khachHang" class="form-select">
                        <c:forEach items="${listkh}" var="kh">
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${kh.id}" label="${kh.tenkh}">

                            </option>
                        </c:forEach>
                    </form:select>


                </div>

                <div class="mb-3">
                    <label class="form-label">Ngày Mua Hàng</label>
                        <%--                    <input type="date" class="form-control" id="ngayMuaHang" name="ngaymh">--%>
                    <form:input path="ngaymh" class="form-control" type="date"/>
                    <form:errors path="ngaymh"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiDaThanhToan" name="trangThai" value="true" >--%>
                            <label class="form-check-label">Đã Thanh Toán</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaThanhToan" name="trangThai" value="false" checked>--%>
                            <label class="form-check-label">Chưa Thanh Toán</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit">save</form:button>
            </form:form>


            <%--            <form action="/asm/addhd" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label  class="form-label">id hoa don</label>--%>
            <%--                    <input type="text" class="form-control"  name="idhd">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label  class="form-label">Nhân Viên</label>--%>
            <%--                    <select class="form-select"  name="idNhanVien">--%>
            <%--                        <c:forEach items="${listnv}" var="nv">--%>
            <%--                            <option value="${nv.idnv}" label="${nv.tennv}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label  class="form-label">Khách Hàng</label>--%>
            <%--                    <select class="form-select"  name="idKhachHang">--%>
            <%--                        <c:forEach items="${listkh}" var="kh">--%>
            <%--                            <option value="${kh.idkh}" label="${kh.tenkh}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>

            <%--                <div class="mb-3">--%>
            <%--                    <label for="ngayMuaHang" class="form-label">Ngày Mua Hàng</label>--%>
            <%--                    <input type="date" class="form-control" id="ngayMuaHang" name="ngaymh">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng Thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiDaThanhToan" name="trangThai" value="true" >--%>
            <%--                            <label class="form-check-label" for="trangThaiDaThanhToan">Đã Thanh Toán</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" id="trangThaiChuaThanhToan" name="trangThai" value="false" checked>--%>
            <%--                            <label class="form-check-label" for="trangThaiChuaThanhToan">Chưa Thanh Toán</label>--%>
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