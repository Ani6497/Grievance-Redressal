<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title>Add Products</title>
        <style type="text/css">
            .button-register {background-color: green;color: white;}
            .button-report {background-color: #000000;color: white;margin-left: 30%;}
        </style>
    </head>
    <body>
        <%--<jsp:include page="menu.jsp"/>--%>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        

                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group me-2">
                                <a href="showproducts"><button type="button" class="btn btn-sm btn-outline-secondary">Show Products</button></a>
                                
                            </div>
                            
                        </div>
                   
        
        </div>
            <h2>Add User</h2>
            <!--<span style="color: red;"><s:property value="msg" /></span>-->
            
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                        
                              
                        <tr>
                            <th scope ="col">

                                <s:form action="addUser.action" method="post">
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="Username" name="username" />
                                </th>
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="First Name" name="firstname" />
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="Last Name" name="lastname" />
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="Address" name="address" />
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="Email" name="email" />
                            </tr>
                            <tr>
                                <th scope ="col">
                                    <s:textfield label="Phone Number" name="phno" />
                            
                          </th>
                          </tr>
                          
                                <th scope ="col">

                                    <s:submit cssClass="button-register" value="Add Product" />
                                </th>
                            </s:form>
                            <s:if test="ctr>0">
                        <span style="color: green;"><s:property value="msg" /></span>
                    </s:if>
                    <s:else>
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:else>
                    </thead>  
                </table>
            </div>
        </main>
    </body>
</html>