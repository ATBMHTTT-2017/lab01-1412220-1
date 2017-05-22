create role truongchinhanh;
create role truongphong;
create role truongduan;
create role nhanvien;
create role giamdoc;

-- nhanvien
GRANT SELECT on HR.CHINHANH to NHANVIEN;
GRANT SELECT on HR.PHONGBAN to NHANVIEN;
GRANT SELECT,update on HR.NHANVIEN to NHANVIEN;
GRANT SELECT ON HR.DUAN TO NHANVIEN;
GRANT SELECT ON HR.PHANCONG TO NHANVIEN;

-- truongphong
GRANT INSERT,UPDATE ON HR.PHANCONG TO TRUONGPHONG;
GRANT SELECT ON HR.CHITIEU TO TRUONGPHONG;

-- truong du an
GRANT SELECT, INSERT, UPDATE ON HR.CHITIEU TO TRUONGDUAN;

-- truong chi nhanh (thay ko yeu cau)
GRANT SELECT, INSERT, UPDATE ON HR.CHITIEU TO truongchinhanh;
GRANT INSERT,UPDATE ON HR.PHANCONG TO truongchinhanh;


-- grant quyen nay
GRANT NHANVIEN TO "NV001", "NV002", "NV003", "NV004", "NV005", "NV006", "NV007", "NV008", "NV009", "NV010";
GRANT TRUONGDUAN TO "TDA001", "TDA002", "TDA003", "TDA004", "TDA005";
GRANT TRUONGPHONG TO "TP001" , "TP002", "TP003", "TP004", "TP005";
GRANT truongchinhanh TO "TCN001", "TCN002", "TCN003", "TCN004", "TCN005";

create view DUAN_CN as
select maDA, tenDA, kinhPhi, tenPhong, tenCN, hoTen, sum(soTien) as Tongchi
from DuAn a, PhongBan b, ChiNhanh c, NhanVien d, ChiTieu e
where a.phongChuTri = b.maPhong
and b.chiNhanh = c.maCN
and a.truongDA = d.maNV
and a.maDA = e.duAn
group by maDA, tenDA, kinhPhi, tenPhong, tenCN, hoTen

grant select on DUAN_CN to GIAMDOC;
grant GIAMDOC on "1412239";