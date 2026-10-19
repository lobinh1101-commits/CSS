<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CodeGym JSP Demo - Thời Gian Máy Chủ</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                text-align: center;
                margin-top: 100px;
                background-color: #f8fafc;
            }
            .card {
                background: white;
                max-width: 500px;
                margin: 0 auto;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            }
            h2 { color: #1b2a7a; font-size: 28px; margin-bottom: 10px; }
            p { font-size: 16px; color: #475569; }
            .time-box {
                background-color: #eff6ff;
                padding: 15px;
                border-radius: 8px;
                margin: 20px 0;
                border: 1px solid #bfdbfe;
            }
            .time-text { color: #f15a24; font-size: 20px; font-weight: bold; }
            .btn {
                background-color: #1b2a7a;
                color: white;
                padding: 10px 20px;
                text-decoration: none;
                border-radius: 6px;
                display: inline-block;
                transition: background-color 0.2s;
            }
            .btn:hover { background-color: #15225c; }
        </style>
    </head>
    <body>
        <div class="card">
            <h2>Chào mừng tới ứng dụng Java Web đầu tiên!</h2>
            <p>Trang JSP động hiển thị thông tin thời gian thực từ Tomcat Server.</p>
            
            <%-- Nhúng mã Java động xử lý thời gian qua JSP Scriptlet --%>
            <%
                java.util.Date date = new java.util.Date();
            %>
            <div class="time-box">
                <p style="margin: 0;">Thời gian máy chủ hiện tại:</p>
                <div class="time-text"><%= date %></div>
            </div>
            
            <a href="hello" class="btn">Đi tới HelloServlet</a>
        </div>
    </body>
</html>
