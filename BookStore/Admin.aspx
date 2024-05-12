<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BookStore.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>

    <style>
        .divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        .h-custom {
            height: calc(100% - 73px);
        }

        @media (max-width: 450px) {
            .h-custom {
                height: 100%;
            }
        }
    </style>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="Images/adminbackgroud.png"
                            class="img-fluid" alt="Sample image" />
                    </div>


                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="text-center">Sign In </h2>

                                <label class="form-label">Email address</label>
              
                                <div class="form-outline mb-4">
                                    <input type="email" id="txtEmail" runat="server" class="form-control"
                                        placeholder="Enter a valid email address" />
                                </div>

                                <label class="form-label" for="form3Example4">Password</label>
                    
                                <div class="form-outline mb-3">
                                    <input type="password" id="txtpassword" runat="server" class="form-control"
                                        placeholder="Enter password" />

                                </div>

                                <div class="d-flex justify-content-between align-items-center">
                                    <!-- Checkbox -->
                                    <div class="form-check mb-0">
                                        <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                        <label class="form-check-label">
                                            Remember me
                                        </label>
                                    </div>
                                    <a href="#!" class="text-body">Forgot password?</a>
                                </div>

                                <div class="text-center text-lg-start mt-4 pt-2">
                                    <button type="button" class="btn btn-primary btn-lg" runat="server" id="BtnLogin"
                                        onserverclick="BtnLogin_ServerClick" style="padding-left: 2.5rem; padding-right: 2.5rem;">
                                        Login</button>
                                    <p class="small fw-bold mt-2 pt-1 mb-0">
                                        Don't have an account? <a href="#!"
                                            class="link-danger">Register</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div
                class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
             
                <div class="text-white mb-3 mb-md-0">
                    Copyright © 2023. All rights reserved.
                </div>

            </div>
        </section>
    </form>
</body>
</html>
