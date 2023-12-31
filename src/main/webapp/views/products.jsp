<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: dinht
  Date: 11/20/2023
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/dashboard.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/product.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,700;1,800&family=Readex+Pro:wght@500&family=Roboto:ital,wght@0,400;0,500;0,700;1,500;1,700&display=swap"
          rel="stylesheet"/>
    <title>List Product</title>
</head>
<body>
<section class="dashboard">
    <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 15%; height: 100vh">
        <div class="wrapper-img"><img src="<%=request.getContextPath()%>/resources/assets/Fruit.jpg" alt=""/></div>
        <a href="#" class="text-white text-decoration-none fs-4 text-center">Trái Cây Miền Tây</a>
        <hr/>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="<%=request.getContextPath()%>/dashboardController/dashboard"
                   class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                    <i class="fa-solid fa-house"></i>Bảng điều khiển</a>
            </li>
            <li><a href="<%=request.getContextPath()%>/categoriesController/findCatalog"
                   class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                <i class="fa-solid fa-house-user"></i>Quản trị danh mục</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/productController/findProduct"
                   class="nav-link active text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                    <i class="fa-solid fa-school"></i>Quản trị sản phẩm</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/accountController/findAccount"
                   class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                    <i class="fa-solid fa-graduation-cap"></i>Quản lý tài khoản</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/billController/findBill"
                   class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                    <i class="fa-solid fa-file-invoice"></i>Quản lý đơn hàng</a>
            </li>
            <li>
                <a href="#"
                   class="nav-link text-white text-center d-flex justify-content-center gap-2 d-flex align-items-center">
                    <i class="fa-solid fa-file-invoice"></i>Đơn hàng chi tiết</a>
            </li>
        </ul>
        <hr/>
    </div>
    <div class="dashboard-right">
        <div class="dashboard-right-header">
            <p>Trái Cây Luôn Tươi Sạch, với châm ngôn khách hàng là thượng đế</p>
            <div class="action-header">
                <button class="btn btn-bell">
                    <i class="fa-regular fa-bell" style="color: #080808; font-size: 25px"></i>
                </button>
                <button class="btn btn-primary"><a id="log-out" href="#">Đăng xuất</a></button>
            </div>
        </div>
        <div class="wrapper-header-content">
            <div class="centered-text">
                <h1 class="title">Chào mừng đến trang quản trị, <br/>Trái Cây Miền Tây</h1>
            </div>
            <div class="content-bottom">
                <p class="title-text">Cần Thơ - Tiền Giang - Hồ Chí Minh</p>
            </div>
        </div>
        <div class="productManagement">
            <div class="item">
                <div class="button">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    ><a href="<%=request.getContextPath()%>/productController/initCreate" style="color: white">Thêm mới sản phẩm</a>
                    </button>
                </div>
                <div class="form">
                    <form action="<%=request.getContextPath()%>/productController/findProduct" method="get">
                        <label for="productNameSearch">Tên sản phẩm</label>
                        <input type="text" id="productNameSearch" name="productName" value="${productName}"
                               placeholder="Nhập tên sản phẩm tìm kiếm" aria-label="Username"
                               aria-describedby="basic-addon1"/>
                        <input type="submit" value="Tìm kiếm" class="btn btn-primary"/>
                    </form>
                    <label for="sortBy">Sắp xếp</label>
                    <select aria-label="Default select example" id="sortBy" name="sortBy" onchange="changeSortBy()">
                        <option value="productId" ${sortBy.equals("productId")?'selected':''}>Mã sản phẩm</option>
                        <option value="productName" ${sortBy.equals("productName")?'selected':''}>Tên sản phẩm
                        </option>
                        <option value="price" ${sortBy.equals("price")?'selected':''}>Giá sản phẩm</option>
                    </select>
                    <select aria-label="Default select example" id="direction" name="direction"
                            onchange="changeDirection()">
                        <option value="ASC" ${direction.equals("ASC")?'selected':''}>Sắp xếp tăng dần</option>
                        <option value="DESC" ${direction.equals("DESC")?'selected':''}>Sắp xếp giảm dần</option>
                    </select>
                </div>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá sản phẩm</th>
                    <th>Tên danh mục</th>
                    <th>Tiêu đề sản phẩm</th>
                    <th>Mô tả sản phẩm</th>
                    <th>Ảnh sản phẩm</th>
                    <th>Đơn vị sản phẩm</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="stt" value="0" scope="page"/>
                <c:forEach items="${listProducts}" var="product">
                    <c:set var="stt" value="${stt+1}" scope="page"/>
                    <tr>
                        <td>${stt}</td>
                        <td>${product.productId}</td>
                        <td>${product.productName}</td>
                        <td><fmt:formatNumber type="number" pattern="###,###vnd" value="${product.price*1000}" /></td>
                        <td>${product.catalog.catalogName}</td>
                        <td>${product.title}</td>
                        <td>${product.description}</td>
                        <td><img src="${product.image}" alt="${product.productName}"style="max-width: 50px; max-height: 50px;" /></td>
                        <td>${product.unit}</td>
                        <td>${product.status?"Hoạt động":"Không hoạt động"}</td>
                        <td>
                            <a href="<%=request.getContextPath()%>/productController/initUpdate?productId=${product.productId}">Cập nhập</a>
                            <a href="<%=request.getContextPath()%>/productController/delete?productId=${product.productId}">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <nav aria-label="Page navigation example" class="page">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <c:forEach items="${listPages}" var="page">
                        <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>
                            /productController/findProduct?page=${page}">${page}</a></li>
                    </c:forEach>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>

        </div>
        <div class="dashboard-right-footer text-center">
            <p>Copyright:Trái Cây Miền Tây - Hồ Chí Minh</p>
        </div>
    </div>
</section>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"
></script>
<script src="<%=request.getContextPath()%>/resources/js/product.js"></script>
</body>
</html>
