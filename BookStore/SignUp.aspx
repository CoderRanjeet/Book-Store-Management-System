<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BookStore.SignUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        .already p a {
            color: #de2454;
        }

            .already p a:hover {
                color: #de2454;
            }

        button#BtnSubmit {
            background: #de2454;
            border-color: #de2454;
            padding: 8px 22px;
        }

        .already p {
            padding-top: 24px;
        }

        .card.w-50.mt-1 {
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            padding: 1rem;
            margin: 2rem;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">


            <div class="card w-50 mt-1" style="margin: auto">
                <div class="card-header ">
                    <h2 class="text-center ">Sign Up</h2>
                </div>
                <div class="card-body">

                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="txtname" runat="server" placeholder="Enter name" />
                    </div>

                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="txtemail" runat="server" placeholder="Enter email" />
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <label>Mobile Number</label>
                        <input type="number" class="form-control" id="txtmobile" runat="server" placeholder="Enter mobile number" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtmobile" ForeColor="Red" ErrorMessage="Phone number is not valid format , ex. 9678768787"
                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" id="txtAddress" runat="server" placeholder="Enter address" />
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="txtpassword" runat="server" placeholder="Password" />
                    </div>
                    <button type="submit" class="btn btn-primary" runat="server" id="BtnSubmit" onserverclick="BtnSubmit_ServerClick">Sign Up</button>

                    <div class="already">
                        <p><a href="Login.aspx">or Login as Existing user </a></p>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
