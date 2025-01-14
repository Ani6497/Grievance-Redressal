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

        <!--Navbar-->

        <jsp:include page="navbar.jsp"/> 

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Complaints Details</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">View all Complaint details</li>
                    </ol>

                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

                        <div class="btn-group me-2">
                   
                            <a href="showdeletedproducts"><button type="button" class="btn btn-sm btn-outline-success"><i class='fa fa-check'></i> Resolved Complaints</button></a>
                            <a href="showdeletedproducts"><button type="button" class="btn btn-sm btn-outline-warning"><i class='fa fa-clock'></i> Unresolved Complaints</button></a>
                        </div>
                        <div class="btn-toolbar mb-2 mb-md-0">

                            <!--<a href="addTechnician.jsp"><button type="button" class="btn btn-sm btn-outline-secondary">Add Product</button></a>-->
                        </div>
                    </div>
                    <s:if test="ctr>0">
                        <div class = "alert alert-success mt-2" role = "alert"><s:property value="msg" /></div>
                    </s:if>
                    <s:elseif test= "ctr==-1">
                        <div class = "alert alert-danger mt-2" role = "alert"><s:property value="msg" /></div>
                    </s:elseif>

                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Complaint List
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>Complaint id</th>
                                        <th>Complaint Time</th>
                                        <th>Subject</th>
                                        <th>Description</th>
                                        <th>Customer id</th> 
                                        <th>Customer Name</th> 
                                        <th>Product Name</th> 
                                        <th>Product Model</th>
                                        <th>Technician Id</th>
                                        <th>Technician Name</th> 
                                        <th>Complaint Status</th>
                                        <th>Resolution Status</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Complaint id</th>
                                        <th>Complaint Time</th>
                                        <th>Subject</th>
                                        <th>Description</th>
                                        <th>Customer id</th> 
                                        <th>Customer Name</th> 
                                        <th>Product Name</th> 
                                        <th>Product Model</th>
                                        <th>Technician Id</th>
                                        <th>Technician Name</th> 
                                        <th>Complaint Status</th>
                                        <th>Resolution Status</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <s:iterator value="complaintList">
                                        <tr>
                                            <td><s:property value="complid"/></td>
                                            <td><s:property value="compltime"/></td>
                                            <td><s:property value="subject"/></td>
                                            <td><s:property value="description"/></td>
                                            <td><s:property value="pid"/></td>
                                            <td><s:property value="firstname"/> <s:property value="lastname"/></td>
                                            <td><s:property value="prodname"/></td>
                                            <td><s:property value="prodmodel"/></td>
                                            <td><s:property value="techid"/></td>
                                            <td><s:property value="techname"/></td>
                                            <td><s:property value="compl_status"/></td>
                                            <td><s:property value="res_status"/></td>
                                            <td>
                                                <a href = "fetchtechniciandetails.action?submitType=updatedata&techid=<s:property value="techid"/>"><i class="fa fa-edit"></i></a>

                                                <a href="deletetech.action?techid=<s:property value="techid"/>"><i class="fa fa-archive"></i></a>
                                            </td>

                                        </tr>
                                    </s:iterator>

                                </tbody>
                            </table>
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
