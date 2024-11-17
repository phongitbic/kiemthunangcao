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
            <h3>Thêm Hóa Đơn Chi Tiết</h3>
        </div>
        <div class="card-body">
            <form:form action="/asm/addhdct" method="post" modelAttribute="hdct">
<%--                <div class="mb-3">--%>
<%--                    <label class="form-label">ID hoa don chi tiet</label>--%>
<%--                        &lt;%&ndash;                    <input type="text" class="form-control" id="id" name="idhdct">&ndash;%&gt;--%>
<%--                    <form:input path="id" class="form-control"/>--%>

<%--                </div>--%>
                <div class="mb-3">
                    <label class="form-label">ID Hóa Đơn</label>
                    <form:select path="hoaDon" class="form-select">
                        <c:forEach items="${listhd}" var="hd">
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${hd.id}" label="${hd.id}">

                            </option>
                        </c:forEach>
                    </form:select>


                </div>
                <div class="mb-3">
                    <label class="form-label">ID Sản Phẩm Chi Tiết</label>
                    <form:select path="spChiTiet" class="form-select">
                        <c:forEach items="${listSPCT}" var="sp">
                            <option selected hidden disabled> vui long chon</option>
                            <option value="${sp.id}" label="${sp.ma}">

                            </option>
                        </c:forEach>
                    </form:select>


                </div>

                <div class="mb-3">
                    <label for="soLuong" class="form-label">Số Lượng</label>
                        <%--                    <input type="text" class="form-control" id="soLuong" name="soluong">--%>
                    <form:input path="soluong" class="form-control"/>

                </div>
                <div class="mb-3">
                    <label for="donGia" class="form-label">Đơn Giá</label>
                        <%--                    <input type="text" class="form-control" id="donGia" name="dongia">--%>
                    <form:input path="dongia" class="form-control"/>

                </div>
                <div class="mb-3">
                    <label class="form-label">Trạng Thái</label>
                    <div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" class="form-check-input" value="true" checked="true"/>
                                <%--                            <input class="form-check-input" type="radio"  name="trangThai" value="true" checked>--%>
                            <label class="form-check-label">Đã Thanh Toán</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <form:radiobutton path="trangThai" class="form-check-input" value="false"/>
                                <%--                            <input class="form-check-input" type="radio" name="trangThai" value="false">--%>
                            <label class="form-check-label">Chưa Thanh Toán</label>
                        </div>
                    </div>
                </div>
                <form:button type="submit">save</form:button>
            </form:form>


            <%--            <form action="/asm/addhdct" method="post">--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="id" class="form-label">ID hoa don chi tiet</label>--%>
            <%--                    <input type="text" class="form-control" id="id" name="idhdct">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label  class="form-label">ID Hóa Đơn</label>--%>
            <%--                    <select class="form-select"  name="idHoaDon">--%>
            <%--                        <c:forEach items="${listhd}" var="hd">--%>
            <%--                            <option value="${hd.idhd}" label="${hd.idhd}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label  class="form-label">ID Sản Phẩm Chi Tiết</label>--%>
            <%--                    <select class="form-select"  name="idSPCT">--%>
            <%--                        <c:forEach items="${listSPCT}" var="sp">--%>
            <%--                            <option value="${sp.idspct}" label="${sp.ma}">--%>

            <%--                            </option>--%>
            <%--                        </c:forEach>--%>
            <%--                    </select>--%>
            <%--                    </select>--%>
            <%--                </div>--%>

            <%--                <div class="mb-3">--%>
            <%--                    <label for="soLuong" class="form-label">Số Lượng</label>--%>
            <%--                    <input type="text" class="form-control" id="soLuong" name="soluong">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label for="donGia" class="form-label">Đơn Giá</label>--%>
            <%--                    <input type="text" class="form-control" id="donGia" name="dongia">--%>
            <%--                </div>--%>
            <%--                <div class="mb-3">--%>
            <%--                    <label class="form-label">Trạng Thái</label>--%>
            <%--                    <div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio"  name="trangThai" value="true" checked>--%>
            <%--                            <label class="form-check-label" >Đã Thanh Toán</label>--%>
            <%--                        </div>--%>
            <%--                        <div class="form-check form-check-inline">--%>
            <%--                            <input class="form-check-input" type="radio" name="trangThai" value="false">--%>
            <%--                            <label class="form-check-label">Chưa Thanh Toán</label>--%>
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