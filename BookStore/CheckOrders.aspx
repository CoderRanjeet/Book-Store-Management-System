<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOrders.aspx.cs" Inherits="BookStore.CheckOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Status</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card mt-4">
                <h3 class="card-title text-center">All Orders</h3>
                <asp:Repeater runat="server" ID="RptOrders" OnItemCommand="RptOrders_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Order Id</th>
                                    <th>Customer Name</th>
                                    <th>Book Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Order Date</th>
                                    <th>Order Status</th>
                                    <th>Status</th>
                                    <th>Change Status</th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <th><%#Eval("OrderId")%></th>
                                <th><%#Eval("Name")%></th>
                                <th><%#Eval("BookName")%></th>
                                <th><%#Eval("Price")%></th>
                                <td><%#Eval("Qty")%> </td>
                                <td><%#Eval("Total")%></td>
                                <td><%#Eval("CreatedDate")%> </td>
                                <td><b><%#Eval("OrderStatus")%> </b></td>
                                <td>
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="ddlstatus">
                                        <asp:ListItem Text="">-- Select Status --</asp:ListItem>
                                        <asp:ListItem Text="Shippped">Shippped</asp:ListItem>
                                        <asp:ListItem Text="Pending">Pending</asp:ListItem>
                                        <asp:ListItem Text="Returned">Returned</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td>
                                    <asp:LinkButton runat="server" class="btn btn-success" CommandArgument='<%# Eval("OrderId") %>' ID="BtnBook" CommandName="View" Text="Change Status"></asp:LinkButton>
                                </td>

                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

            <asp:Label runat="server" ID="lblmsg" Visible="false"></asp:Label>
        </div>


        <!-- Button trigger modal -->
        <button type="button" id="BtnModal" runat="server" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Launch
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Change Your Order Status</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlstatus">
                            <asp:ListItem Text="">-- Select Status --</asp:ListItem>
                            <asp:ListItem Text="Shippped">Shippped</asp:ListItem>
                            <asp:ListItem Text="Pending">Pending</asp:ListItem>
                            <asp:ListItem Text="Returned">Returned</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" runat="server" id="SaveStatus" onserverclick="SaveStatus_ServerClick">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
