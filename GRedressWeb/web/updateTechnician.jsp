<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href="assets/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="navbar.jsp"/> 
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Update Technician</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Update Technician details by filling all the fields.</li>
                    </ol>


                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Update Technician
                        </div>

                        <div class="card-body">
                            <form action ="updatetechnician" method ="post">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="pid" type="text" name ="techid" placeholder="techid" value='<s:property value="techid"/>' readonly/>
                                    <label for="username">Technician id</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="username" type="text" name ="techname" placeholder="techname" value='<s:property value="techname"/>'/>
                                    <label for="username">Technician name</label>
                                </div>        

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="deptid" type="text" name="deptid" placeholder="Department id"value='<s:property value="deptid"/>' />
                                    <label for="emai;">Department Id</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <select class="form-control" name="techstatus" id="userstatus">
                                        <option value="0">Inactive</option>
                                        <option value="1">Active</option>
                                    </select>
                                    <label for="address">Tech Status</label>
                                </div>


                                <div class="mt-4 mb-0">
                                    <div class="d-grid"><input type = "submit" class="btn btn-primary btn-block" name="submitType" value="Update Technician"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </main>
            <jsp:include page="footer.jsp"/>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="assets/js/datatables-simple-demo.js"></script>
</body>
</html>
