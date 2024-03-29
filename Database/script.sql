USE [QLSHOPAOQUAN]
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 12/12/2023 11:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[iMaQuyen] [int] NOT NULL,
	[sTenQuyen] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_taikhoan]    Script Date: 12/12/2023 11:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_taikhoan](
	[sMaTK] [nvarchar](50) NOT NULL,
	[sTaiKhoan] [nvarchar](50) NOT NULL,
	[sMatKhau] [nvarchar](100) NULL,
	[FK_iMaQuyen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[proc_logic]    Script Date: 12/12/2023 11:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_logic]
@user nvarchar(50),
@pass nvarchar(50)
as
BEGIN
	SELECT * FROM tbl_taikhoan WHERE sTaiKhoan = @user AND sMatKhau = @pass
END
GO
