CREATE DATABASE [Natour]
drop DATABASE [Natour]
GO
USE [Natour]
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](255) NULL,
	[TenKH] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [varchar](50) NULL,
	[MK] [nvarchar](50)
) ON [PRIMARY]
GO
select * from [KhachHangActive]
select * from KhachHangActive
DELETE FROM Tour
delete from KhachHangActive where SoDienThoai = '1'
SELECT * FROM KhachHang WHERE SoDienThoai='1' AND MK='1'
CREATE TABLE [dbo].[KhachHangActive](
	[SoDienThoai] [nvarchar](20) NULL,
	[MK] [nvarchar](50)
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [varchar](20) NOT NULL,
	[TenTour] [nvarchar](255) NULL,
	[DiaDiem] [nvarchar](255) NULL,
	[ChiTietTour] [nvarchar](max) NULL,
	[Gia] [varchar](50) NULL,
	[HinhAnh] [varchar](50) NULL,
    [TuNgay] [datetime] NULL,
    [DenNgay] [datetime] NULL,
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[BangDat](
	[MaDat] [nvarchar](max) NOT NULL,
	[MaKH] [nvarchar](max) NOT NULL,
    [MaTour] [varchar](20) NOT NULL,
	[SoLuongNguoi] [nvarchar](max) NULL,
	[NgayDangKy] [nvarchar](max) NULL,
    [TongTien] [nvarchar](max) NULL,
) ON [PRIMARY]
GO
select * from BangDat
DROP TABLE [BangDat]
ALTER TABLE [dbo].[KhachHang]
ADD CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
ALTER TABLE [dbo].[Tour]
ADD CONSTRAINT PK_Tour PRIMARY KEY (MaTour)
ALTER TABLE [dbo].[BangDat]
ADD CONSTRAINT PK_BangDat PRIMARY KEY (MaDat)
ALTER TABLE BangDat
ADD CONSTRAINT FK_BangDat_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE BangDat
ADD CONSTRAINT FK_BangDat_Tour FOREIGN KEY (MaTour) REFERENCES Tour(MaTour)
GO

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Nguyễn Văn Nam', N'Hà Nội', '05630302321', 'nvnam@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (2, N'Nguyễn Phương Thảo', N'Hà Nội', '05630302321', 'npthao@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (3, N'Dương Thắng Mạnh', N'Hà Nội', '09080302321', 'dtmanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (4, N'Lê Cẩm Nhung', N'Hải Dương', '04534342321', 'lcnhung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (5, N'Lưu Ngọc Linh', N'Hải Dương', '05673402321', 'lnlinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (6, N'Đỗ Tiến Quý', N'Hải Dương', '0875602321', 'dtquy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (7, N'Đồng An Nhi', N'Hải Phòng', '0234324321', 'danhi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (8, N'Bùi Ngọc Dương', N'Hải Phòng', '012343252321', 'bnduong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (9, N'Đặng Thiên Dương', N'Hải Phòng', '01234102321', 'dtduong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (10, N'Phạm Thế Duy', N'Bắc Ninh', '075676502321', 'ptduy@gmail.com')

INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('DN01', N'Tour du lịch Đà Nẵng 5 ngày 4 đêm', N'Đà Nẵng',N'<div class="details">

        <h3>Chương trình du lịch Đà Nẵng 5 ngày 4 đêm là một hành trình đầy thú vị và đa dạng, đưa du khách khám phá vẻ đẹp tự nhiên, di sản văn hóa và ẩm thực độc đáo của thành phố này cùng các điểm đến lân cận.</h3></br>

        <h3>Ngày 1: Đến Đà Nẵng - Khám phá Thành phố</h3></br>

        Buổi sáng: Đến sân bay Đà Nẵng và chuyển đến khách sạn. Check-in và nghỉ ngơi.
        Buổi trưa: Thưởng thức bữa trưa với các món ăn địa phương.
        Buổi chiều: Tham quan các điểm du lịch nổi tiếng như Cầu Rồng, Bãi biển Mỹ Khê, Bà Nà Hills. Dạo bước trên con đường ven biển, tận hưởng không khí trong lành và cảnh quan tuyệt đẹp.
        Buổi tối: Tự do khám phá đời sống về đêm của Đà Nẵng, thưởng thức ẩm thực đường phố hoặc tham gia các hoạt động giải trí tại trung tâm thành phố.
        <h3>Ngày 2: Hành trình khám phá Hội An</h3><br />

        Buổi sáng: Điểm danh tại khách sạn và di chuyển đến Hội An, một trong những di sản văn hóa thế giới của UNESCO.
        Buổi trưa: Tham quan các di tích lịch sử như Cầu Nhật Bản, Chùa Cầu, Phố cổ Hội An. Mua sắm các sản phẩm thủ công mỹ nghệ truyền thống.
        Buổi chiều: Tham gia lớp học nấu ăn để tìm hiểu về ẩm thực Hội An, hoặc thư giãn tại biển An Bàng.
        Buổi tối: Trở về Đà Nẵng, thưởng thức bữa tối với các món ăn đặc sản Đà Nẵng.
        <h3>Ngày 3: Khám phá vùng đất Ba Na Hills và Làng Đá Non Nước</h3></br>

        Buổi sáng: Di chuyển đến Ba Na Hills và tham quan khu du lịch nổi tiếng này. Dạo chơi trên cáp treo, ngắm cảnh từ đỉnh núi, tham quan các công trình kiến trúc ấn tượng.
        Buổi trưa: Dùng cơm trưa tại nhà hàng trên núi.
        Buổi chiều: Ghé thăm làng Đá Non Nước, nơi sản xuất ra các tác phẩm điêu khắc đá nổi tiếng. Khám phá quá trình chế tác và mua sắm các sản phẩm lưu niệm.
        Buổi tối: Tự do thư giãn hoặc thưởng thức các hoạt động giải trí tại khu vực nghỉ dưỡng.
        <h3>Ngày 4: Thưởng ngoạn thiên nhiên và văn hóa</h3></br>

        Buổi sáng: Tham quan vịnh Lăng Cô, một trong những vịnh đẹp nhất Việt Nam, cùng với các bãi biển hoang sơ và địa danh nổi tiếng như đảo Cồn Cỏ.
        Buổi trưa: Dùng cơm trưa tại nhà hàng ven biển.
        Buổi chiều: Trở về Đà Nẵng, tham quan Công viên Văn hóa và Du lịch Asia Park, nơi tổ chức các sự kiện nghệ thuật và giải trí đa dạng.
        Buổi tối: Tự do thưởng thức ẩm thực Đà Nẵng hoặc mua sắm đặc sản làm quà về.
        <h3>Ngày 5: Kết thúc chuyến đi</h3></br>

        Buổi sáng: Check-out khách sạn và di chuyển đến sân bay để về nước hoặc tiếp tục hành trình khám phá các điểm đến khác trong khu vực.
        Chương trình du lịch Đà Nẵng 5 ngày 4 đêm không chỉ mang lại trải nghiệm đầy đủ về văn hóa, thiên nhiên và ẩm thực mà còn là cơ hội tuyệt vời để khám phá và trải nghiệm đất nước Việt Nam đa dạng và phong phú.
    </div>
', '5.000.000đ', '/images/dulichdanang.jpg', CAST(N'2024-07-10T00:00:00.000' AS DateTime), CAST(N'2024-07-15T00:00:00.000' AS DateTime))

INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('TD01', N'Tour du lịch Tam Đảo 3 ngày 2 đêm', N'Vĩnh Phúc',N'<div class="details">
    <h3>Chương trình du lịch Vĩnh Phúc 3 ngày 2 đêm là một hành trình tuyệt vời để khám phá vẻ đẹp tự nhiên, di sản văn hóa và ẩm thực đặc trưng của tỉnh Vĩnh Phúc, một điểm đến yên bình và gần gũi với thiên nhiên.</h3><br/>

    <h3>Ngày 1: Khám phá đèo Tam Đảo và thị trấn Tam Đảo</h3><br />

    Buổi sáng: Đến ga hoặc sân bay Vĩnh Yên và di chuyển đến đèo Tam Đảo. Trên đường đi, tận hưởng cảnh quan thiên nhiên tuyệt đẹp của vùng núi đồi.
    Buổi trưa: Dùng bữa trưa tại một nhà hàng địa phương với các món ăn truyền thống.
    Buổi chiều: Khám phá thị trấn Tam Đảo, thăm quan chùa Tay Thiên, tham gia các hoạt động như leo núi, dạo chơi ở khu du lịch Sun World Tam Đảo.
    Buổi tối: Check-in khách sạn tại thị trấn Tam Đảo và thưởng thức bữa tối địa phương.
    <h3>Ngày 2: Tham quan hồ Đại Lải và Văn Miếu</h3><br />

    Buổi sáng: Thưởng ngoạn bình minh tại thị trấn Tam Đảo trước khi di chuyển đến hồ Đại Lải. Tham quan và thư giãn tại khu du lịch hồ Đại Lải, tham gia các hoạt động như thuyền kayak, đi xe đạp quanh hồ.
    Buổi trưa: Dùng cơm trưa và thưởng thức các món hải sản tươi ngon tại nhà hàng ven hồ.
    Buổi chiều: Thăm Văn Miếu - Ngô Quyền, một di tích lịch sử và văn hóa quan trọng của Vĩnh Phúc. Tìm hiểu về lịch sử và văn hóa của vùng này.
    Buổi tối: Trở về thị trấn Tam Đảo, thưởng thức bữa tối và tận hưởng không khí yên bình của núi rừng.
    <h3>Ngày 3: Kết thúc chuyến đi</h3><br/>

    Buổi sáng: Check-out khách sạn và tham gia các hoạt động cuối cùng tại thị trấn Tam Đảo như mua sắm đặc sản, chụp ảnh lưu niệm.
    Buổi trưa: Dùng bữa trưa và chuẩn bị cho việc di chuyển về nơi bạn ở hoặc tiếp tục hành trình khám phá các điểm đến khác.
    Chương trình du lịch Vĩnh Phúc 3 ngày 2 đêm mang lại trải nghiệm tuyệt vời về thiên nhiên, văn hóa và ẩm thực của vùng đất này, là lựa chọn tuyệt hảo cho những ai muốn tìm kiếm sự bình yên và gần gũi với thiên nhiên.

</div>', '1.300.000đ', '/images/vinhphuc.jpg', CAST(N'2024-07-12T00:00:00.000' AS DateTime), CAST(N'2024-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('H01', N'Tour du lịch Huế 2 ngày 1 đêm', N'Huế',N'<div class="details">
    <h3>Chương trình du lịch Huế 2 ngày 1 đêm mang đến trải nghiệm tuyệt vời về di sản lịch sử và văn hóa của thành phố cổ kính này, là trung tâm của vương quốc Đàng Trong trong lịch sử Việt Nam.</h3><br/>

    <h3>Ngày 1: Khám phá di sản lịch sử và văn hóa</h3><br/>

    Buổi sáng: Đến sân bay Phú Bài hoặc ga Huế và di chuyển đến khách sạn để nghỉ ngơi và chuẩn bị cho ngày hành trình.
    Buổi trưa: Dùng bữa trưa với các món ăn đặc sản Huế như bún bò Huế, bánh bèo, bánh khoái.
    Buổi chiều: Tham quan các điểm du lịch lịch sử và văn hóa nổi tiếng như Cố đô Huế, di tích Hoàng thành và các cung điện như Cần Thanh, Cung Trường Sanh. Khám phá khu vực Phố cổ Huế và thưởng thức ẩm thực đặc sản Huế.
    Buổi tối: Tự do khám phá đời sống về đêm của Huế, có thể tham gia các tour thưởng thức đặc sản về đêm hoặc dạo bước trên các con phố đèn lồng lung linh.
    <h3>Ngày 2: Trải nghiệm thêm văn hóa và nghệ thuật</h3><br/>

    Buổi sáng: Thưởng ngoạn bình minh trên Sông Hương hoặc dạo bước dọc theo Bờ Kè Huế để cảm nhận không khí yên bình của thành phố.
    Buổi trưa: Dùng bữa trưa và thưởng thức các món ăn truyền thống Huế.
    Buổi chiều: Tham quan các điểm du lịch nổi tiếng khác như Lăng Tự Đức, Lăng Khải Định, Làng gốm Thanh Tiên hoặc tham quan các điểm thăm quan ngoại ô như Đèo Hải Vân, Vịnh Lăng Cô.
    Buổi tối: Trả phòng khách sạn và di chuyển đến sân bay hoặc ga để tiếp tục hành trình hoặc về nơi bạn ở.
    Chương trình du lịch Huế 2 ngày 1 đêm không chỉ mang lại trải nghiệm sâu sắc về lịch sử và văn hóa của thành phố cổ này mà còn là cơ hội để du khách khám phá những điểm đẹp và độc đáo của vùng đất miền Trung xinh đẹp.

</div>', '900.000đ', '/images/dulichhue.jpg', CAST(N'2024-06-05T00:00:00.000' AS DateTime), CAST(N'2024-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('DN02', N'Tour du lịch Đà Nẵng 3 ngày 2 đêm', N'Đà Nẵng',N'<div class="details">
    <h3>Chương trình du lịch Đà Nẵng 3 ngày 2 đêm là một hành trình tuyệt vời để khám phá những địa điểm nổi tiếng và trải nghiệm văn hóa độc đáo của thành phố này trong thời gian ngắn.</h3></br>

    <h3>Ngày 1: Khám phá thành phố Đà Nẵng</h3></br>

    Buổi sáng: Đến sân bay Đà Nẵng và chuyển đến khách sạn để thả lỏng và nghỉ ngơi.
    Buổi trưa: Thưởng thức bữa trưa với các món ăn địa phương tại một nhà hàng hay quán ăn truyền thống.
    Buổi chiều: Tham quan các điểm du lịch nổi tiếng của Đà Nẵng như Cầu Rồng, Bãi biển Mỹ Khê, Bà Nà Hills (nếu thời gian cho phép). Dạo bước trên bờ biển, chụp ảnh và tận hưởng không khí biển trong lành.
    Buổi tối: Tự do khám phá đời sống về đêm của Đà Nẵng, thưởng thức ẩm thực đường phố hoặc tham gia các hoạt động giải trí tại trung tâm thành phố.
    <h3>Ngày 2: Hành trình khám phá Hội An</h3><br/>

    Buổi sáng: Xe đưa đoàn khách đến Hội An, một trong những điểm du lịch lịch sử và văn hóa quan trọng của Việt Nam.
    Buổi trưa: Tham quan các di tích lịch sử như Cầu Nhật Bản, Chùa Cầu, Phố cổ Hội An. Mua sắm các sản phẩm thủ công mỹ nghệ truyền thống.
    Buổi chiều: Thưởng thức một bữa trưa đặc sản Hội An hoặc tham gia các hoạt động vui chơi trên bãi biển An Bàng.
    Buổi tối: Trở về Đà Nẵng và thưởng thức một bữa tối ngon với các món ăn đặc sản Đà Nẵng.
    <h3>Ngày 3: Kết thúc chuyến đi</h3></br>

    Buổi sáng: Tham quan một số điểm du lịch cuối cùng ở Đà Nẵng hoặc thưởng ngoạn các bãi biển đẹp trước khi chuẩn bị trở về.
    Buổi trưa: Check-out khách sạn và dùng bữa trưa cuối cùng tại một nhà hàng địa phương.
    Buổi chiều: Trả phòng và di chuyển đến sân bay để tiếp tục hành trình hoặc về nước.
    Chương trình du lịch Đà Nẵng 3 ngày 2 đêm mang lại cơ hội tuyệt vời để khám phá những điểm đến đẹp và trải nghiệm văn hóa phong phú của miền Trung Việt Nam trong thời gian ngắn.

</div>', '3.000.000đ',  '/images/dulichdanang.jpg', CAST(N'2024-05-15T00:00:00.000' AS DateTime), CAST(N'2024-05-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('HL01', N'Tour du lịch Hạ Long 5 ngày 4 đêm', N'Quảng Ninh',N'<div class="details">
    <h3>Chương trình du lịch Quảng Ninh 5 ngày 4 đêm là một hành trình đa dạng và thú vị, đưa du khách khám phá vẻ đẹp tự nhiên hùng vĩ, di sản văn hóa độc đáo và ẩm thực đặc trưng của vùng đất này.</h3><br/>

    <h3>Ngày 1: Khám phá Hạ Long</h3><br/>

    Buổi sáng: Đến sân bay hoặc ga Quảng Ninh và chuyển đến khu vực Hạ Long. Check-in khách sạn và nghỉ ngơi sau chuyến đi.
    Buổi trưa: Thưởng thức bữa trưa với các món hải sản tươi ngon tại nhà hàng địa phương.
    Buổi chiều: Tham quan Vịnh Hạ Long bằng thuyền kayak hoặc thuyền truyền thống. Ghé thăm hang Sung Sot, hang Đầu Gỗ, hoặc hang Thiên Cung để khám phá vẻ đẹp tự nhiên của vịnh.
    Buổi tối: Tự do thưởng thức ẩm thực đặc sản Quảng Ninh và tham gia các hoạt động giải trí về đêm tại khu vực du lịch.
    <h3>Ngày 2: Đảo Tuần Châu và khu du lịch Sun World</h3><br/>

    Buổi sáng: Di chuyển đến Đảo Tuần Châu và tham quan khu du lịch nổi tiếng. Tham gia các hoạt động như thăm Công viên Bãi Dài, thăm Khu du lịch Sun World, tham quan đảo Rồng, và thưởng thức các trò chơi nước.
    Buổi trưa: Dùng cơm trưa tại một nhà hàng trên đảo với các món ăn đa dạng.
    Buổi chiều: Tiếp tục khám phá khu du lịch Sun World, tham gia các trò chơi giải trí hoặc thưởng ngoạn cảnh đẹp từ trên cao bằng cáp treo.
    Buổi tối: Trở về khách sạn và thư giãn, hoặc tham gia các hoạt động vui chơi về đêm tại Hạ Long.
    <h3>Ngày 3: Khám phá thị trấn Cổng Trời</h3><br/>

    Buổi sáng: Di chuyển đến thị trấn Cổng Trời, một trong những điểm du lịch mới nổi của Quảng Ninh.
    Buổi trưa: Dùng bữa trưa và thưởng thức các món ăn đặc sản tại nhà hàng địa phương.
    Buổi chiều: Tham quan khu du lịch Cổng Trời với các công trình kiến trúc ấn tượng, thưởng ngoạn cảnh đẹp từ trên cao, và tham gia các hoạt động giải trí.
    Buổi tối: Tự do thưởng thức ẩm thực và trải nghiệm văn hóa địa phương.
    <h3>Ngày 4: Thăm quan thành phố Uông Bí và Di sản Văn hóa thế giới Hạ Long</h3><br/>

    Buổi sáng: Di chuyển đến thành phố Uông Bí và thăm quan các điểm du lịch và di tích lịch sử ở đây.
    Buổi trưa: Dùng bữa trưa tại một nhà hàng địa phương.
    Buổi chiều: Quay về Hạ Long và thăm quan Di sản Văn hóa thế giới Hạ Long. Khám phá các địa danh nổi tiếng như Hang Sửng Sốt, Vườn Quốc gia Cát Bà.
    Buổi tối: Tự do thư giãn hoặc thưởng thức ẩm thực địa phương tại Hạ Long.
    <h3>Ngày 5: Kết thúc chuyến đi</h3><br/>

    Buổi sáng: Check-out khách sạn và tổ chức các hoạt động cuối cùng trước khi di chuyển đến sân bay hoặc ga để về nước hoặc tiếp tục hành trình.
    Chương trình du lịch Quảng Ninh 5 ngày 4 đêm mang lại trải nghiệm đa dạng về văn hóa, thiên nhiên và ẩm thực của vùng đất này, đồng thời là cơ hội để du khách khám phá những địa danh đẹp và độc đáo của miền Bắc Việt Nam.

</div>', '5.000.000đ', '/images/dulichquangninh.png', CAST(N'2024-04-18T00:00:00.000' AS DateTime), CAST(N'2024-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem],[ChiTietTour], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('HL02', N'Tour du lịch trên du thuyền ở Vịnh Hạ Long 5 ngày 4 đêm', N'Quảng Ninh',N'<div class="details">
    <h3>Chương trình du lịch Quảng Ninh 5 ngày 4 đêm là một hành trình đa dạng và thú vị, đưa du khách khám phá vẻ đẹp tự nhiên hùng vĩ, di sản văn hóa độc đáo và ẩm thực đặc trưng của vùng đất này.</h3><br/>

    <h3>Ngày 1: Khám phá Hạ Long</h3><br/>

    Buổi sáng: Đến sân bay hoặc ga Quảng Ninh và chuyển đến khu vực Hạ Long. Check-in khách sạn và nghỉ ngơi sau chuyến đi.
    Buổi trưa: Thưởng thức bữa trưa với các món hải sản tươi ngon tại nhà hàng địa phương.
    Buổi chiều: Tham quan Vịnh Hạ Long bằng thuyền kayak hoặc thuyền truyền thống. Ghé thăm hang Sung Sot, hang Đầu Gỗ, hoặc hang Thiên Cung để khám phá vẻ đẹp tự nhiên của vịnh.
    Buổi tối: Tự do thưởng thức ẩm thực đặc sản Quảng Ninh và tham gia các hoạt động giải trí về đêm tại khu vực du lịch.
    <h3>Ngày 2: Đảo Tuần Châu và khu du lịch Sun World</h3><br/>

    Buổi sáng: Di chuyển đến Đảo Tuần Châu và tham quan khu du lịch nổi tiếng. Tham gia các hoạt động như thăm Công viên Bãi Dài, thăm Khu du lịch Sun World, tham quan đảo Rồng, và thưởng thức các trò chơi nước.
    Buổi trưa: Dùng cơm trưa tại một nhà hàng trên đảo với các món ăn đa dạng.
    Buổi chiều: Tiếp tục khám phá khu du lịch Sun World, tham gia các trò chơi giải trí hoặc thưởng ngoạn cảnh đẹp từ trên cao bằng cáp treo.
    Buổi tối: Trở về khách sạn và thư giãn, hoặc tham gia các hoạt động vui chơi về đêm tại Hạ Long.
    <h3>Ngày 3: Khám phá thị trấn Cổng Trời</h3><br/>

    Buổi sáng: Di chuyển đến thị trấn Cổng Trời, một trong những điểm du lịch mới nổi của Quảng Ninh.
    Buổi trưa: Dùng bữa trưa và thưởng thức các món ăn đặc sản tại nhà hàng địa phương.
    Buổi chiều: Tham quan khu du lịch Cổng Trời với các công trình kiến trúc ấn tượng, thưởng ngoạn cảnh đẹp từ trên cao, và tham gia các hoạt động giải trí.
    Buổi tối: Tự do thưởng thức ẩm thực và trải nghiệm văn hóa địa phương.
    <h3>Ngày 4: Thăm quan thành phố Uông Bí và Di sản Văn hóa thế giới Hạ Long</h3><br/>

    Buổi sáng: Di chuyển đến thành phố Uông Bí và thăm quan các điểm du lịch và di tích lịch sử ở đây.
    Buổi trưa: Dùng bữa trưa tại một nhà hàng địa phương.
    Buổi chiều: Quay về Hạ Long và thăm quan Di sản Văn hóa thế giới Hạ Long. Khám phá các địa danh nổi tiếng như Hang Sửng Sốt, Vườn Quốc gia Cát Bà.
    Buổi tối: Tự do thư giãn hoặc thưởng thức ẩm thực địa phương tại Hạ Long.
    <h3>Ngày 5: Kết thúc chuyến đi</h3><br/>

    Buổi sáng: Check-out khách sạn và tổ chức các hoạt động cuối cùng trước khi di chuyển đến sân bay hoặc ga để về nước hoặc tiếp tục hành trình.
    Chương trình du lịch Quảng Ninh 5 ngày 4 đêm mang lại trải nghiệm đa dạng về văn hóa, thiên nhiên và ẩm thực của vùng đất này, đồng thời là cơ hội để du khách khám phá những địa danh đẹp và độc đáo của miền Bắc Việt Nam.

</div>', '8.000.000đ', '/images/dulichquangninh.png', CAST(N'2024-08-10T00:00:00.000' AS DateTime), CAST(N'2024-08-15T00:00:00.000' AS DateTime))

INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (1, 1, 'DN01', 3, CAST(N'2024-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (2, 3, 'TD01', 7, CAST(N'2024-04-16T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (3, 10, 'H01', 4, CAST(N'2024-04-17T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (4, 8, 'H01', 9, CAST(N'2024-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (5, 6, 'DN01', 12, CAST(N'2024-04-21T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (6, 7, 'TD01', 9, CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (7, 9, 'HL02', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (8, 1, 'DN01', 5, CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (9, 2, 'HL02', 5, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (10, 5, 'HL01', 2, CAST(N'2024-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (11, 3, 'HL01', 8, CAST(N'2024-04-15T00:00:00.000' AS DateTime))

select * from Tour where TenTour like N'%Tour%'