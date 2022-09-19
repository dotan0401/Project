

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="d" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
//    if (session.getAttribute("email") == null) {
//        response.sendRedirect("Admin/login");
//    }
%>
<html class="no-js" lang="en">
    <head>  

        <jsp:include page="../head.jsp"></jsp:include>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
        </head>


        <body id="page-top">

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar menu  -->


            <jsp:include page="../menu.jsp"></jsp:include>



                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->


                    <jsp:include page="../topbar.jsp"></jsp:include>

                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->


                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">Tables</h1>


                            <!-- DataTales Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Danh sách các hãng </h6>
                                </div>
                                <div>


                                </div>
                                <div style="display: flex">
                                    <div>
                                        <a style="color: white;text-decoration: none" href="${pageContext.request.contextPath}/Admin/hangsanxuat/addnew"><button  style="margin:20px 0 0 20px" class="btn btn-primary" >Thêm mới</button></a>

                                </div>
                            </div>
                             <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table " id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th scope="col">Mã</th>
                                                <th scope="col">Họ Tên</th>
                                                <th scope="col">Địa Chỉ</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Mật khẩu</th>
                                                <th scope="col">Số điện thoại</th>
                                                <th scope="col">Quyền</th>
                                                <th scope="col">Trạng thái</th>
                                                <th scope="col">Ngày tạo</th>
                                                <th scope="col">Ngày cập nhật</th>
                                                <th scope="col"></th>
                                            </tr>
                                        </thead>
                                        <c:forEach items="${taikhoan}" var="nv">
                                            <tbody>
                                                <tr>
                                                    <td>${nv.taiKhoan.id}</td>
                                                    <td>${nv.taiKhoan.hoTen}</td>
                                                    <td>${nv.taiKhoan.diaChi}</td>
                                                    <td>${nv.taiKhoan.email}</td>
                                                    <td>${nv.taiKhoan.password}</td>
                                                    <td>${nv.taiKhoan.sdt}</td>
                                                    <td>${nv.vaiTro.ten}</td>
                                                     <c:if test="${nv.taiKhoan.status==true}">
                                                        <td><h5 style="color: gray;font-size: 12px">Active</h5></td>
                                                    </c:if>
                                                        <c:if test="${nv.taiKhoan.status==false}">
                                                        <td><h5 style="color: red;font-size: 12px">Banned</h5></td>
                                                    </c:if>
                                                    <td><fmt:formatDate value="${nv.taiKhoan.ngayTao}" pattern=" HH:mm (dd-MM-yyyy)" /></td>
                                                    <td><fmt:formatDate value="${nv.taiKhoan.ngayCapNhat}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                                                    <td>
                                                        <button  type="submit" class="btn btn-warning"><a style="text-decoration: none;color: white" href="initupdate?id=${nv.taiKhoan.id}">Cập nhật</a></button>
                                                        <button  type="submit" class="btn btn-danger">Xóa</button>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </c:forEach>

                                    </table>
                                </div>
                            </div>

                        </div>

                    </div>




                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <jsp:include page="../footer.jsp"></jsp:include>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>


    </body>






</html>







