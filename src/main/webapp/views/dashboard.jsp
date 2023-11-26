<%--
  Created by IntelliJ IDEA.
  User: dinht
  Date: 11/26/2023
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
            crossorigin="anonymous"
    />
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/dashboard.css"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,700;1,800&family=Readex+Pro:wght@500&family=Roboto:ital,wght@0,400;0,500;0,700;1,500;1,700&display=swap"
            rel="stylesheet"
    />
    <title>Dashboard</title>
</head>
<body>
<section class="dashboard">
    <div
            class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark"
            style="width: 15%; height: 100vh"
    >
        <div class="wrapper-img">
            <img
                    src="data:image/jpeg;base64,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"
                    alt=""
            />
        </div>
        <a href="#" class="text-white text-decoration-none fs-4 text-center"
        >Rikkei Academy
        </a>

        <hr/>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a
                        href="javascript:redirectHome()"
                        class="nav-link active text-center d-flex justify-content-center gap-2 d-flex align-items-center"
                ><i class="fa-solid fa-house"></i>
                    Bảng điều khiển
                </a>
            </li>
            <li>
                <a
                        href="javascript:redirectCourseManagement()"
                        class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center"
                ><i class="fa-solid fa-house-user"></i>
                    Quản lý khóa học
                </a>
            </li>
            <li>
                <a
                        href="javascript:redirectClassManagement()"
                        class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center"
                ><i class="fa-solid fa-school"></i>
                    Quản lý lớp học
                </a>
            </li>
            <li>
                <a
                        href="javascript:redirectStudentManagement()"
                        class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center"
                ><i class="fa-solid fa-graduation-cap"></i>
                    Quản lý sinh viên
                </a>
            </li>
            <li>
                <a
                        href="javascript:redirectAccountManagement()"
                        class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center"
                ><i class="fa-solid fa-file-invoice"></i>
                    Quản lý tài khoản
                </a>
            </li>
        </ul>
        <hr/>
    </div>
    <div class="dashboard-right">
        <div class="dashboard-right-header">
            <p>
                Học là quá trình không ngừng nghỉ. Được học và làm mà phát triển đó
                mới là lẽ sống
            </p>
            <div class="action-header">
                <button class="btn btn-bell">
                    <i
                            class="fa-regular fa-bell"
                            style="color: #080808; font-size: 25px"
                    ></i>
                </button>
                <button class="btn btn-primary">
                    <a id="log-out" href="javascript:logOut()">Đăng xuất</a>
                </button>
            </div>
        </div>
        <div class="wrapper-header-content">
            <div class="centered-text">
                <h1 class="title">
                    Chào mừng đến trang quản trị, <br/>
                    Rikkei Academy
                </h1>
            </div>
            <div class="content-bottom">
                <p class="title-text">Đà Nẵng - Hà Nội - TP.HCM - FUKOUKA</p>
            </div>
        </div>
        <div class="statistic">
            <div>
                <div class="course d-flex gap-2">
                    <i class="fa-solid fa-house-user"></i>
                    <h3 class="statistic-item">Thống kê khóa học</h3>
                </div>
                <div class="course1">
                    <p>Số khóa học</p>
                    <p id="courseNumber">0</p>
                </div>
            </div>
            <div>
                <div class="course d-flex gap-2">
                    <i class="fa-solid fa-school"></i>
                    <h3 class="statistic-item">Thống kê lớp học</h3>
                </div>
                <div class="course1">
                    <p>Số lớp học</p>
                    <p id="classNumber">0</p>
                </div>
                <div class="course1">
                    <p>Số lớp đang học động</p>
                    <p id="classActive">0</p>
                </div>
                <div class="course1">
                    <p>Số lớp đã kết thúc</p>
                    <p id="classFinish">0</p>
                </div>
                <div class="course1">
                    <p>Số lớp đang chờ</p>
                    <p id="classExpect">0</p>
                </div>
            </div>
            <div>
                <div class="course d-flex gap-2">
                    <i class="fa-solid fa-graduation-cap"></i>
                    <h3 class="statistic-item">Thống kê sinh viên</h3>
                </div>
                <div class="course1">
                    <p>Tổng số sinh viên</p>
                    <p id="studentNumber">0</p>
                </div>
                <div class="course1">
                    <p>Số sinh viên chờ lớp</p>
                    <p id="studentExpect">0</p>
                </div>
                <div class="course1">
                    <p>Số sinh viên đang học</p>
                    <p id="studentLearning">0</p>
                </div>
                <div class="course1">
                    <p>Số sinh viên bảo lưu/đình chỉ</p>
                    <p id="studentPending">0</p>
                </div>
                <div class="course1">
                    <p>Số sinh viên tốt nghiệp</p>
                    <p id="studentGraduating">0</p>
                </div>
            </div>
        </div>
        <div class="dashboard-right-footer text-center">
            <p>Copyright:Rikkei Academy - Fukuoka</p>
        </div>
    </div>
</section>
</body>
</body>
</html>
