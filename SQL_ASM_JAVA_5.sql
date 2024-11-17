CREATE
DATABASE ASM_JAVA_5
-- Bảng SanPham
CREATE TABLE SanPham
(
    ID        INT IDENTITY(1,1) PRIMARY KEY,
    Ma        VARCHAR(50),
    Ten       VARCHAR(100),
    TrangThai TINYINT
);

-- Bảng SPChiTiet
CREATE TABLE SPChiTiet
(
    ID          INT IDENTITY(1,1) PRIMARY KEY,
    MaSPCT      VARCHAR(50),
    IdKichThuoc INT,
    IdMauSac    INT,
    IdSanPham   INT,
    SoLuong     INT,
    DonGia      DECIMAL(10, 2),
    TrangThai   TINYINT,
    FOREIGN KEY (IdKichThuoc) REFERENCES KichThuoc (ID),
    FOREIGN KEY (IdMauSac) REFERENCES MauSac (ID),
    FOREIGN KEY (IdSanPham) REFERENCES SanPham (ID)
);

-- Bảng MauSac
CREATE TABLE MauSac
(
    ID        INT IDENTITY(1,1) PRIMARY KEY,
    Ma        VARCHAR(50),
    Ten       VARCHAR(100),
    TrangThai TINYINT
);

-- Bảng KichThuoc
CREATE TABLE KichThuoc
(
    ID        INT IDENTITY(1,1) PRIMARY KEY,
    Ma        VARCHAR(50),
    Ten       VARCHAR(100),
    TrangThai TINYINT
);

-- Bảng KhachHang
CREATE TABLE KhachHang
(
    ID        INT IDENTITY(1,1) PRIMARY KEY,
    Ten       VARCHAR(100),
    SDT       VARCHAR(20),
    MaKH      VARCHAR(50),
    TrangThai TINYINT
);

-- Bảng NhanVien
CREATE TABLE NhanVien
(
    ID          INT IDENTITY(1,1) PRIMARY KEY,
    Ten         VARCHAR(100),
    MaNV        VARCHAR(50),
    TenDangNhap VARCHAR(50),
    MatKhau     VARCHAR(100),
    TrangThai   TINYINT
);

-- Bảng HoaDon
CREATE TABLE HoaDon
(
    ID          INT IDENTITY(1,1) PRIMARY KEY,
    IdNhanVien  INT,
    IdKhachHang INT,
    NgayMuaHang DATE,
    TrangThai   TINYINT,
    FOREIGN KEY (IdNhanVien) REFERENCES NhanVien (ID),
    FOREIGN KEY (IdKhachHang) REFERENCES KhachHang (ID)
);

-- Bảng HoaDonChiTiet
CREATE TABLE HoaDonChiTiet
(
    ID        INT IDENTITY(1,1) PRIMARY KEY,
    IdHoaDon  INT,
    IdSPCT    INT,
    SoLuong   INT,
    DonGia    DECIMAL(10, 2),
    TrangThai TINYINT,
    FOREIGN KEY (IdHoaDon) REFERENCES HoaDon (ID),
    FOREIGN KEY (IdSPCT) REFERENCES SPChiTiet (ID)
);