connect hr/123456;

CREATE TABLE NhanVien
(
  maNV NCHAR(10),
  hoTen NVARCHAR2(100),
  diaChi NVARCHAR2(100),
  dienThoai CHAR(15),
  email NVARCHAR2(50),
  maPhong NCHAR(10),
  chiNhanh NCHAR(10),
  luong INT,
  PRIMARY KEY (maNV)
);

CREATE TABLE ChiNhanh
(
  maCN NCHAR(10),
  tenCN NVARCHAR2(100),
  truongChiNhanh NCHAR(10),
  PRIMARY KEY (maCN)
);

CREATE TABLE ChiTieu
(
  maChiTieu NCHAR(10),
  tenChTieu NVARCHAR2(100),
  soTien INT,
  duAn NCHAR(10),
  PRIMARY KEY (maChiTieu)
);

CREATE TABLE DuAn
(
  maDA NCHAR(10),
  tenDA NVARCHAR2(100),
  kinhPhi INT,
  phongChuTri NCHAR(10),
  truongDA NCHAR(10),
  PRIMARY KEY (maDA)
);

CREATE TABLE PhongBan
(
  maPhong NCHAR(10),
  tenPhong NVARCHAR2(100),
  truongPhong NCHAR(10),
  ngayNhanChuc DATE,
  soNhanVien INT,
  chiNhanh NCHAR(10),
  PRIMARY KEY (maPhong)
);

CREATE TABLE  PhanCong
(
  maNV NCHAR(10),
  duAn NCHAR(10),
  vaiTro NVARCHAR2(100),
  phuCap INT,
  PRIMARY KEY (maNV, DuAn)
);
INSERT INTO ChiNhanh  VALUES (N'CN001', N'Quan 1', N'TCN001');
INSERT INTO ChiNhanh  VALUES (N'CN002', N'Quan 2', N'TCN002');
INSERT INTO ChiNhanh  VALUES (N'CN003', N'Quan 3', N'TCN003');
INSERT INTO ChiNhanh  VALUES (N'CN004', N'Quan 4', N'TCN004');
INSERT INTO ChiNhanh  VALUES (N'CN005', N'Quan 5', N'TCN005');
INSERT INTO ChiTieu  VALUES (N'CT001', N'Chi tieu 1', 5000, N'DA001');
INSERT INTO ChiTieu  VALUES (N'CT002', N'Chi tieu 2', 1000, N'DA002');
INSERT INTO ChiTieu  VALUES (N'CT003', N'Chi tieu 3', 600, N'DA003');
INSERT INTO ChiTieu  VALUES (N'CT004', N'Chi tieu 4', 800, N'DA004');
INSERT INTO ChiTieu  VALUES (N'CT005', N'Chi tieu 5', 2000, N'DA005');
INSERT INTO DuAn  VALUES (N'DA001', N'Du an 1', 10000, N'PKD  ', N'TDA001');
INSERT INTO DuAn  VALUES (N'DA002', N'Du an 2', 1000, N'PNS  ', N'TDA002');
INSERT INTO DuAn  VALUES (N'DA003', N'Du an 3', 100000, N'PTCKT', N'TDA003');
INSERT INTO DuAn  VALUES (N'DA004', N'Du an 4', 2000, N'PKDCL', N'TDA004');
INSERT INTO DuAn  VALUES (N'DA005', N'Du an 5', 1200, N'PTCKT', N'TDA005');
INSERT INTO NhanVien  VALUES (N'TCN001', N'Tran A', N'1st Street', N'0123456789', N'TCN001123@gmail.com', N'PCSKH', N'CN001', 1000);
INSERT INTO NhanVien  VALUES (N'TCN002', N'Van B', N'2nd Street', N'0123456789', N'TCN002123@gmail.com', N'PKD  ', N'CN002', 2100);
INSERT INTO NhanVien  VALUES (N'TCN003', N'Ho C', N'3rd Street', N'0123456789', N'TCN003123@gmail.com', N'PKDCL', N'CN003', 2300);
INSERT INTO NhanVien  VALUES (N'TCN004', N'Nguyen D', N'4st Street', N'0123456789', N'TCN004123@gmail.com', N'PNS  ', N'CN004', 2000);
INSERT INTO NhanVien  VALUES (N'TCN005', N'Tran E', N'5th Street', N'0123456789', N'TCN005123@gmail.com', N'PTCKT', N'CN005', 2200);
INSERT INTO NhanVien  VALUES (N'TDA001', N'Nguyen F', N'6th Street', N'0123456789', N'TDA001123@gmail.com', N'PCSKH', N'CN001', 2900);
INSERT INTO NhanVien  VALUES (N'GD002', N'Thach Van Ngoc Tanh', N'7th Street', N'0123456789', N'GD002123@gmail.com', N'PKD  ', N'CN002', 4500);
INSERT INTO NhanVien  VALUES (N'GD003', N'Doan Van Quy', N'8th Street', N'0123456789', N'GD003123@gmail.com', N'PKDCL', N'CN003', 4800);
INSERT INTO NhanVien  VALUES (N'GD004', N'Dao Y', N'9th Street', N'0123456789', N'GD004123@gmail.com', N'PNS  ', N'CN004', 4700);
INSERT INTO NhanVien  VALUES (N'GD005', N'Dinh Mong Long', N'10th Street', N'0123456789', N'GD005123@gmail.com', N'PTCKT', N'CN005', 4600);
INSERT INTO NhanVien  VALUES (N'NV001', N'Van Ngoc', N'11th Street', N'0123456789', N'NV001123@gmail.com', N'PCSKH', N'CN001', 1200);
INSERT INTO NhanVien  VALUES (N'NV002', N'Tuan Anh', N'12th Street', N'0123456789', N'NV002123@gmail.com', N'PCSKH', N'CN001', 900);
INSERT INTO NhanVien  VALUES (N'NV003', N'Ba Tai', N'13th Street', N'0123456789', N'NV003123@gmail.com', N'PKD  ', N'CN002', 1000);
INSERT INTO NhanVien  VALUES (N'TDA002', N'Phan G', N'14th Street', N'0123456789', N'TDA002123@gmail.com', N'PKD  ', N'CN002', 2800);
INSERT INTO NhanVien  VALUES (N'TDA003', N'Ha H', N'15th Street', N'0123456789', N'TDA003123@gmail.com', N'PKDCL', N'CN003', 2700);
INSERT INTO NhanVien  VALUES (N'TDA004', N'Mac Thi Van', N'16th Street', N'0123456789', N'TDA004123@gmail.com', N'PNS  ', N'CN004', 2950);
INSERT INTO NhanVien  VALUES (N'TDA005', N'Ngoc Nhan', N'17th Street', N'0123456789', N'TDA005123@gmail.com', N'PTCKT', N'CN005', 3000);
INSERT INTO NhanVien  VALUES (N'TP001', N'Hong Ngoc An', N'18th Street', N'0123456789', N'TP001123@gmail.com', N'PCSKH', N'CN001', 1500);
INSERT INTO NhanVien  VALUES (N'TP002', N'Thien Cam', N'19th Street', N'0123456789', N'TP002123@gmail.com', N'PKD  ', N'CN002', 1600);
INSERT INTO NhanVien  VALUES (N'TP003', N'Quyet Thang', N'20th Street', N'0123456789', N'TP003123@gmail.com', N'PKDCL', N'CN003', 1700);
INSERT INTO NhanVien  VALUES (N'TP004', N'Mai Van Man', N'21th Street', N'0123456789', N'TP004123@gmail.com', N'PNS  ', N'CN004', 1600);
INSERT INTO NhanVien  VALUES (N'TP005', N'Tham Hong', N'22th Street', N'0123456789', N'TP005123@gmail.com', N'PTCKT', N'CN005', 1900);
INSERT INTO NhanVien  VALUES (N'GD001', N'Vo Vinh', N'23th Street', N'0123456789', N'GD001123@gmail.com', N'PCSKH', N'CN001', 5000);
INSERT INTO NhanVien  VALUES (N'NV004', N'Ho Thi Huong', N'24th Street', N'0123456789', N'NV004123@gmail.com', N'PKD  ', N'CN002', 800);
INSERT INTO NhanVien  VALUES (N'NV005', N'Mac Van Ty', N'25th Street', N'0123456789', N'NV005123@gmail.com', N'PKDCL', N'CN003', 1100);
INSERT INTO NhanVien  VALUES (N'NV006', N'Huynh Viet', N'26th Street', N'0123456789', N'NV006123@gmail.com', N'PKDCL', N'CN003', 700);
INSERT INTO NhanVien  VALUES (N'NV007', N'Thai Phien', N'27th Street', N'0123456789', N'NV007123@gmail.com', N'PNS  ', N'CN004', 800);
INSERT INTO NhanVien  VALUES (N'NV008', N'Tran Ngoc Viet', N'28th Street', N'0123456789', N'NV008123@gmail.com', N'PNS  ', N'CN004', 1000);
INSERT INTO NhanVien  VALUES (N'NV009', N'Ngoc Nam', N'29th Street', N'0123456789', N'NV009123@gmail.com', N'PTCKT', N'CN005', NULL);
INSERT INTO NhanVien  VALUES (N'NV010', N'Nguyen Van A', N'30th Street', N'0123456789', N'NV010123@gmail.com', N'PTCKT', N'CN005', NULL);

INSERT INTO PhanCong  VALUES (N'NV001', N'DA001', N'Phan cong 1', 400);
INSERT INTO PhanCong  VALUES (N'NV003', N'DA002', N'Phan cong 2', 20);
INSERT INTO PhanCong  VALUES (N'NV005', N'DA003', N'Phan cong 3', 100);
INSERT INTO PhanCong  VALUES (N'NV007', N'DA004', N'Phan cong 4', 500);
INSERT INTO PhanCong  VALUES (N'NV009', N'DA005', N'Phan cong 5', 300);
INSERT INTO PhanCong  VALUES (N'TDA001', N'DA001', N'Phan cong 6', 220);
INSERT INTO PhanCong  VALUES (N'TDA002', N'DA002', N'Phan cong 7', 90);
INSERT INTO PhanCong  VALUES (N'TDA003', N'DA003', N'Phan cong 8', 40);
INSERT INTO PhanCong  VALUES (N'TDA004', N'DA004', N'Phan cong 9', 200);
INSERT INTO PhanCong  VALUES (N'TDA005', N'DA005', N'Phan cong 10', 100);
INSERT INTO PhongBan  VALUES (N'PCSKH', N'Phong ban 1', N'TP004', N'01/02/2017' , 30, N'CN004');
INSERT INTO PhongBan  VALUES (N'PKD  ', N'Phong ban 2', N'TP001', N'01/07//2015', 20, N'CN001');
INSERT INTO PhongBan  VALUES (N'PKDCL', N'Phong ban 3', N'TP005', N'02/03/2014', 10, N'CN005');
INSERT INTO PhongBan  VALUES (N'PNS  ', N'Phong ban 4', N'TP003', N'04/06/2017', 5, N'CN003');
INSERT INTO PhongBan  VALUES (N'PTCKT', N'Pong ban 5', N'TP002', N'12/05/2016', 8, N'CN002');

ALTER TABLE NhanVien
ADD CONSTRAINT NhanVienThuocMaPhong
FOREIGN KEY (maPhong)
REFERENCES PhongBan(maPhong);

ALTER TABLE NhanVien
ADD CONSTRAINT NhanVienThuocChiNhanh
FOREIGN KEY (chiNhanh)
REFERENCES ChiNhanh(maCN);

ALTER TABLE ChiNhanh
ADD CONSTRAINT NhanVienLamTruongChiNhanh
FOREIGN KEY (truongChiNhanh)
REFERENCES NhanVien(maNV);

ALTER TABLE ChiTieu
ADD CONSTRAINT ChiTieuCuaDuAn
FOREIGN KEY (duAn)
REFERENCES DuAn(maDA);

ALTER TABLE DuAn
ADD CONSTRAINT DuAnThuocPhongBan
FOREIGN KEY (phongChuTri)
REFERENCES PhongBan(maPhong);

ALTER TABLE DuAn
ADD CONSTRAINT NhanVienLamTruongDuAn
FOREIGN KEY (truongDA)
REFERENCES NhanVien(maNV);

ALTER TABLE PhongBan
ADD CONSTRAINT PhongBanThuocChiNhanh
FOREIGN KEY (chiNhanh)
REFERENCES ChiNhanh(maCN);

ALTER TABLE PhongBan
ADD CONSTRAINT PhongBan
FOREIGN KEY (truongPhong)
REFERENCES NhanVien(maNV);

ALTER TABLE PhanCong
ADD CONSTRAINT PhanCongNhanVien
FOREIGN KEY (maNV)
REFERENCES NhanVien(maNV);

ALTER TABLE PhanCong
ADD CONSTRAINT PhanCongCuaDuAn
FOREIGN KEY (duAn)
REFERENCES DuAn(maDA);