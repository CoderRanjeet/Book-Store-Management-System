<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="BookStore.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Book </title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <a href="CheckOrders.aspx">Check Orders</a>

        <main id="main" class="container">

           <div class="mt-3 mb-3 text-center">
            <h3>Welcome  <label runat="server" id="lblname" class="text-primary"></label></h3>
               </div>
            <div class="card mt-4">
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-lg-12">
                            <h4 class="page-title text-center text-decoration-underline">Add Book</h4>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="gender">Select Category : </label>
                                <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control">
                                    <asp:ListItem Text="-- Select Category" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                     <asp:ListItem Text="Science Friction" Value="Science Friction"></asp:ListItem>
                                     <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                     <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                     <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Book Name <span class="text-danger">*</span></label>
                                <asp:TextBox runat="server" ID="txtBookName" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Price <span class="text-danger">*</span></label>
                                <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Photo</label>
                                <input type="file" class="form-control" runat="server" id="txtphoto" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class=" mt-4 text-center">
                        <button class="btn btn-primary submit-btn" id="BtnAddBook" runat="server" onserverclick="BtnAddBook_ServerClick">Add Book</button>
                    </div>
                </div>
            </div>


            <div class="card mt-4">
                <h3 class="card-title text-center">All Books</h3>
                <asp:Repeater runat="server" ID="RptBooks" OnItemCommand="RptBooks_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Sr.No</th>
                                    <th>Category</th>
                                    <th>Book</th>
                                    <th>Price</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <th><%#Eval("Id")%></th>
                                <th><%#Eval("Cat_Name")%></th>
                                <td><%#Eval("Book_Name")%></td>
                                <td><%#Eval("Price")%> </td>
                                <td class="w-50"><%#Eval("Description")%> </td>
                                <td>
                                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-sm" CommandName="Edit" CommandArgument='<%#Eval("Id")%>'>Edit</asp:LinkButton>
                                    <asp:LinkButton runat="server" CssClass="btn btn-danger btn-sm" CommandName="Delete" CommandArgument='<%#Eval("Id")%>'>Delete</asp:LinkButton>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </main>

    </form>
</body>
</html>
