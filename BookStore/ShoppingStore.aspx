<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.Master" AutoEventWireup="true" CodeBehind="ShoppingStore.aspx.cs" Inherits="BookStore.ShoppingStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="container">
        <h2 class="mt-5 mb-4 text-center">New Books</h2>

        <div class="row mb-4 mb-4">
            <div class="col-md-3">
                <h4>Select Category</h4>
            </div>
            <div class="col-md-4">
                <asp:DropDownList runat="server" CssClass="form-control" ID="ddlcategory" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="0">-- Select Category --</asp:ListItem>
                    <asp:ListItem Value="Fantasy">Fantasy</asp:ListItem>
                    <asp:ListItem Value="Science Friction">Science Friction</asp:ListItem>
                    <asp:ListItem Value="Romance">Romance</asp:ListItem>
                    <asp:ListItem Value="Horror">Horror</asp:ListItem>                  
                </asp:DropDownList>
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
    </main>

</asp:Content>
