<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ADDSubCategory.aspx.cs" Inherits="WalletNET1.ADDSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Expense Sub Category</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <label class="text-uppercase">Main Expense Category</label>
                    <asp:DropDownList ID="ddlMainCategory" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label class="text-uppercase">Expense Sub Category</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Add" OnClick="Button1_Click" />
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <div class="col-md-8">
                    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>

</asp:Content>
