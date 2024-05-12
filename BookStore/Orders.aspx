<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="BookStore.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="card mt-4">
                <h3 class="card-title text-center">All Orders</h3>
                <asp:Repeater runat="server" ID="RptOrders">
                    <HeaderTemplate>
                        <table class="table table-bordered table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Book Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Order Date</th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                
                                 <th><%#Eval("Name")%></th>
                                 <th><%#Eval("BookName")%></th>
                                <th><%#Eval("Price")%></th>
                                  <td><%#Eval("Qty")%> </td>
                                <td><%#Eval("Total")%></td>
                                <td><%#Eval("CreatedDate")%> </td>
                              
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
</asp:Content>
