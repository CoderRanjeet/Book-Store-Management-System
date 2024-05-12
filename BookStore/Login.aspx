<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <style>
        .read_more_btn {
            color: #fff;
            background-color: #de2454;
            border-color: #de2454;
            padding: 8px 22px;
            text-align: center;
            border-radius: 5px;
        }

            .read_more_btn:hover {
                color: white;
            }

        .card.my-5 {
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }

        .text-center p a {
            color: #de2454;
        }

        .col-md-6.col-sm-12.loginform {
            padding: 2rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <img src="https://i.pinimg.com/564x/6b/1b/22/6b1b22573f9f3d4bba11a9fa5cb45652.jpg" class="img-fluid" />
                </div>
                <div class="col-md-6 col-sm-12 loginform">

                    <div class="card my-5">
                        <div class="card-header ">
                            <h3 class="">Login as Existing Customer</h3>
                        </div>

                        <div class="card-body">
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="txtEmail" runat="server" placeholder="Enter email" />
                            </div>

                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="txtpassword" runat="server" placeholder="Password" />
                            </div>

                            <button type="submit" class="btn read_more_btn" runat="server" id="BtnLogin" onserverclick="BtnLogin_ServerClick">Login</button>

                            <div class="text-center">
                                <p>New User ? <a href="SignUp.aspx">Register here </a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
