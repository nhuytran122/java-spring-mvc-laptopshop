<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="/" class="navbar-brand">
                        <h1 class="text-primary display-6">Laptopshop</h1>
                    </a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white justify-content-between mx-5" id="navbarCollapse">
                        <div class="navbar-nav">
                            <a href="/" class="nav-item nav-link active">Trang Chủ</a>
                            <a href="/products" class="nav-item nav-link">Sản Phẩm</a>

                        </div>
                        <div class="d-flex m-3 me-0">
                            <!-- <button
                                class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4"
                                data-bs-toggle="modal" data-bs-target="#searchModal"><i
                                    class="fas fa-search text-primary"></i></button> -->
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span
                                    class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
                                    style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>

                            <div class="dropdown my-auto">
                                <a href="#" class="dropdown" role="button" id="dropdownMenuLink"
                                    data-bs-toggle="dropdown" aria-expanded="false" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    <i class="fas fa-user fa-2x"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end p-4" arialabelledby="dropdownMenuLink">
                                    <li class="d-flex align-items-center flex-column"
                                        style="min-width: 300px; height: 150px; border-radius: 50%; overflow: hidden;">
                                        <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;"
                                            src="/images/product/1711078092373-asus-01.png" />
                                        <div class="text-center my-3">
                                            Như Ý Trần
                                        </div>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Quản lý tài khoản</a></li>
                                    <li><a class="dropdown-item" href="#">Lịch sử mua hàng</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->