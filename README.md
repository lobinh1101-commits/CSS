# Java Web Application: JSP & Servlet Demo (Thời Gian Máy Chủ)

Dự án Java WebApp đơn giản sử dụng **Jakarta EE (Servlet 6.0, JSP 3.1)** tương thích với **Apache Tomcat 10.1+** và quản lý phụ thuộc bằng **Apache Maven**.

## 📌 Tính năng chính
- Hiển thị thời gian hiện tại của máy chủ trực tiếp trên trang JSP (`index.jsp`).
- Xử lý điều hướng URL Routing thông qua Java Servlet (`HelloServlet.java`).
- Sử dụng chuẩn mới `jakarta.servlet` của Jakarta EE 10.

## 📁 Cấu trúc dự án Maven
```
jsp-servlet-demo/
├── pom.xml                        # Cấu hình phụ thuộc Maven & Jakarta EE 10
├── README.md                      # Hướng dẫn sử dụng
└── src/
    └── main/
        ├── java/                  # Mã nguồn Java (Servlets, Logic)
        │   └── com/
        │       └── codegym/
        │           └── HelloServlet.java
        └── webapp/                # Giao diện web (JSP, HTML, Web Configuration)
            ├── index.jsp          # Trang chủ hiển thị thời gian máy chủ
            └── WEB-INF/
                └── web.xml        # Cấu hình Web Application
```

## 🚀 Hướng dẫn biên dịch và khởi chạy

### 1. Biên dịch và Đóng gói file `.war`
Mở Terminal tại thư mục gốc dự án và chạy:
```bash
mvn clean package
```
Sau khi thành công, file `jsp-servlet-demo.war` sẽ xuất hiện trong thư mục `target/`.

### 2. Triển khai lên Tomcat Server 10+
- **Cách 1 (Thủ công):** Copy file `target/jsp-servlet-demo.war` dán vào thư mục `webapps/` của Tomcat 10.1+, sau đó chạy `bin/startup.bat` (hoặc `./bin/startup.sh`).
- **Cách 2 (Trên IDE / Extension):** Sử dụng plugin Tomcat Server trong IntelliJ / VS Code / Eclipse, chọn Tomcat 10+, thêm file WAR / Artifact và khởi chạy.

### 3. Truy cập trình duyệt
- **Trang chủ JSP (Hiển thị thời gian):** `http://localhost:8080/jsp-servlet-demo/`
- **Servlet:** `http://localhost:8080/jsp-servlet-demo/hello`
