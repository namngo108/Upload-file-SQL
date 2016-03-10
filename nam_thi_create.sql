-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:53:14.603




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV nvarchar(10)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    Gioitinh nvarchar(10)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    Mucluong nvarchar(50)  NOT NULL,
    MaPhong nvarchar(10)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong nvarchar(10)  NOT NULL,
    Tenphong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

