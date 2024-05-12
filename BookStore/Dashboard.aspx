<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BookStore.Dashboard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="jumbotron jumbotron-fluid text-white">
                <div class="container-fluid">
                    <h2>Hello,
                        <label runat="server" id="lblname"></label>
                    </h2>
                    <h1 class="display-4">Welcome to our Book Store !</h1>
                    <h3 class="lead">Our bookstore has thousands of titles across all genres. Browse our collection and find your new favorite book today!</h3>
                </div>
            </div>
        </div>



    <div class="row">
            <asp:Repeater runat="server" ID="RptBooks" OnItemCommand="RptBooks_ItemCommand">
                <ItemTemplate>

                    <div class="col-md-4 mb-4">
                        <div class="card h-100 border-0">
                            <img src='<%# Eval("Book_Image") %>' class="card-img-top mx-auto d-block" style="max-width: 225px; max-height: 260px;" />
                            <div class="card-body text-center">
                                <h5 class="card-title"><span style="display: none;"><%# Eval("Id") %></span> <%# Eval("Book_Name") %></h5>
                                <h5 class="card-title"><span>$</span> <%# Eval("Price") %></h5>
                                <p class="card-text" style="display: block; text-overflow: ellipsis; width: 300px; overflow: hidden; white-space: nowrap;"><%# Eval("Description") %></p>

                                <asp:LinkButton runat="server" class="read_more_btn" CommandArgument='<%# Eval("Id") %>' CommandName="View">View Details</asp:LinkButton>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>

</asp:Content>
