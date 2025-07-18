# 📚 DỰ ÁN: Website Bán Sách - **LIBRO**

---

## 🛒 Giới thiệu

**Libro** là một website thương mại điện tử đơn giản hỗ trợ người dùng:

- 🔍 Tìm kiếm sách theo **thể loại**, **tên sách**, hoặc **tác giả**
- 🛒 Thêm sách vào **giỏ hàng**, cập nhật và xóa
- 👤 Đăng ký / Đăng nhập tài khoản
- 📦 Đặt hàng và theo dõi đơn hàng
- 🧑‍💼 Quản trị viên: Quản lý sách, người dùng và đơn hàng

---

## 🖥️ Giao diện

### 💻 Giao diện người dùng (Client)

<img width="1193" height="2048" alt="trangchur" src="https://github.com/user-attachments/assets/9a957612-b167-48a1-9653-46db8f9ff888" />


### 🧑‍💼 Giao diện quản trị (Admin)

<img width="1920" height="954" alt="admin" src="https://github.com/user-attachments/assets/d31e4ff1-0cce-4dca-b42e-038eb9d8d43d" />

---


Báo cáo:
[WD-19_DATN2025.pdf](https://github.com/user-attachments/files/21320003/WD-19_DATN2025.pdf)

## ⚙️ Hướng dẫn cài đặt

### 📋 Yêu cầu môi trường:
- PHP >= 7.4 hoặc 8.x
- Composer
- MySQL / MariaDB
- Node.js + npm (nếu dùng build frontend)
- Laravel (nếu dự án dùng Laravel)
- Web server (XAMPP, Laragon, Valet, ...)

### 📥 Các bước cài đặt:

```bash
# 1. Clone source code
git clone https://github.com/luuhoang-star/web_book_libro.git
cd web_book_libro

# 2. Cài đặt Composer packages
composer install

# 3. (Nếu dùng npm)
npm install
npm run dev

# 4. Tạo file .env
cp .env.example .env

# 5. Tạo APP_KEY
php artisan key:generate

# 6. Cấu hình database trong file .env

# 7. Migrate và seed database
php artisan migrate --seed

# 8. Chạy dự án
php artisan serve
