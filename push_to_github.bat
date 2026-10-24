@echo off
chcp 65001 >nul
echo ======================================================
echo    HƯỚNG DẪN ĐẨY DỰ ÁN POLYSPEAK AI LÊN GITHUB
echo ======================================================
echo.
echo Bước 1: Hãy đăng nhập https://github.com và tạo một Repository mới (để Public).
echo Bước 2: Copy đường link của Repository đó.
echo         (Dạng: https://github.com/<tên-tài-khoản>/<tên-repo>.git)
echo.
set /p REPO_URL="Nhập hoặc dán link GitHub Repository vào đây rồi nhấn Enter: "

if "%REPO_URL%"=="" (
    echo [Lỗi] Bạn chưa nhập link GitHub repository!
    pause
    exit /b
)

echo.
echo Đang cấu hình Git remote origin...
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%
git branch -M main

echo.
echo Đang đẩy mã nguồn lên nhánh main...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ======================================================
    echo [THÀNH CÔNG!] Đã đẩy toàn bộ mã nguồn lên GitHub!
    echo.
    echo BƯỚC CUỐI ĐỂ KÍCH HOẠT WEB CHẠY ONLINE:
    echo 1. Mở trang Repository của bạn trên trình duyệt GitHub.
    echo 2. Vào tab: Settings -^> Pages (ở menu bên trái).
    echo 3. Tại mục "Build and deployment" -^> "Source", chọn: "GitHub Actions".
    echo 4. Chờ khoảng 1-2 phút, GitHub sẽ tự động build và cấp link web chạy trực tuyến!
    echo ======================================================
) else (
    echo.
    echo [LƯU Ý] Nếu gặp lỗi xác thực tài khoản GitHub (Authentication/Permission),
    echo hãy đăng nhập tài khoản GitHub trên máy tính hoặc sử dụng Personal Access Token.
)

pause
