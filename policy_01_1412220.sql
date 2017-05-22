alter session set "_ORACLE_SCRIPT"=true;
DECLARE CURSOR  c_nhanVien IS
SELECT* FROM NhanVien;
v_nhanVien c_nhanVien%rowtype;
BEGIN
OPEN c_nhanVien;
LOOP
      FETCH c_nhanVien INTO v_nhanVien;
      EXIT WHEN c_nhanVien%notfound;
      EXECUTE IMMEDIATE 'CREATE USER ' || v_nhanVien.maNV || ' IDENTIFIED BY 123456';
      EXECUTE IMMEDIATE 'GRANT CREATE SESSION TO ' || v_nhanVien.maNV;
END LOOP;
CLOSE c_nhanVien;
END;