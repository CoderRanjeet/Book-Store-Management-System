<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.Master" AutoEventWireup="true" CodeBehind="BooksDescription.aspx.cs" Inherits="BookStore.BooksDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="sweetalert2.min.css"/>
    <script type="text/javascript">
        function AlertMessage(Title, message, MessageType)
        {
            Swal.fire
            (
                Title, message, MessageType
            )
        }
    </script>

    <asp:Repeater runat="server" ID="RptBook" OnItemCommand="RptBook_ItemCommand">
        <ItemTemplate>
            <div class="col-md-4 mb-4 offset-3">
                <div class="card h-100 border-0">
                    <img src='<%# Eval("Book_Image") %>' class="card-img-top mx-auto d-block" style="width: 225px;" />
                    <div class="card-body text-center">
                        <h5 class="card-title"><%# Eval("Book_Name") %></h5>
                        <p class="card-text"><span>$</span> <%# Eval("Price") %></p>
                        <p class="card-text"><%# Eval("Description") %></p>
                        
                    </div>
                    <div class="row offset-2">
                                                                   
                    <asp:LinkButton runat="server" class="btn btn-primary" CommandArgument='<%# Eval("Book_Name") +"," + Eval("Price") +","+ Eval("Book_Image") %>' CommandName="AddToCart">Add To Cart</asp:LinkButton>
                    <asp:LinkButton runat="server" class="btn btn-info ml-5" CommandArgument='<%# Eval("Book_Name") +"," + Eval("Price") +","+ Eval("Book_Image") %>' CommandName="Buy">Buy Now</asp:LinkButton>

                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
