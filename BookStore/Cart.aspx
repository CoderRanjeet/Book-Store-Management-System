<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BookStore.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="h-100" style="background-color: #eee;">
        <div class="container h-100 py-5">

            <asp:Label runat="server" ID="lblmsg" Visible="false"></asp:Label>

            <div class="row d-flex justify-content-center align-items-center h-100" runat="server" id="DivCart" visible="true">
                <div class="col-10">

                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
                       
                        <div>
                            <p class="mb-0">
                                <span class="text-muted">Sort by:</span> <a href="#!" class="text-body">price <i
                                    class="fas fa-angle-down mt-1"></i></a>
                            </p>
                        </div>
                    </div>
                    <div class="p-4">
                     <div class="row d-flex justify-content-between align-items-center">
                                  <p>Book </p>
                                  <p>Book Name</p>
                                  <p>Quantity</p>
                                  <p>Price</p>
                                  <p>Total</p>
                        </div></div>
                    <asp:Repeater runat="server" ID="RptCart" OnItemCommand="RptCart_ItemCommand">
                        <ItemTemplate>
                            <div class="card rounded-3 mb-4">
                                <div class="card-body p-4">
                                    <div class="row d-flex justify-content-between align-items-center">
                                       
                                        <div class="col-md-1 col-lg-1 col-xl-1">
                                            <img src='<%# Eval("BookImage") %>' class="img-fluid rounded-3">
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">                                            
                                            <p class="lead fw-normal mb-2"><%# Eval("BookName") %></p>
                                        </div>

                                        <div class="col-md-3 col-lg-3 col-xl-2 d-flex">

                                            <asp:LinkButton runat="server" class="btn btn-primary" CommandArgument='<%# Eval("BookName") %>' CommandName="BtnMinus">-</asp:LinkButton>

                                            <input id="txtQty" runat="server" value='<%# Eval("Qty") %>' type="text" readonly="readonly" class="form-control" />

                                            <asp:LinkButton runat="server" class="btn btn-primary" CommandArgument='<%# Eval("BookName") %>' CommandName="BtnPlus">+</asp:LinkButton>

                                        </div>
                                        <div class="col-md-2 col-lg-1 col-xl-1">
                                            <h5 class="mb-0"><%# Eval("Price") %></h5>
                                        </div>
                                          <div class="col-md-3 col-lg-2 col-xl-2">
                                            <h5 class="mb-0"><%# Eval("TotalPrice") %></h5>
                                        </div>
                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                         <asp:LinkButton runat="server" class="btn btn-danger" CommandArgument='<%# Eval("BookName") %>' CommandName="BtnDelete">Delete</asp:LinkButton>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="card">
                        <div class="card-body">
                            <button type="button" class="btn btn-warning btn-block btn-lg w-50" runat="server" id="BtnProceed" onserverclick="BtnProceed_ServerClick">Proceed to Order</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

</asp:Content>
