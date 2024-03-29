﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="webpageAddExpenses.aspx.cs" Inherits="WalletNET1.webpageAddExpenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-primary">
            <h4>Add Expenses</h4>
        </div>
        <div class="row alert-danger">
            <div class="col-md-2">
                <div class="form-group">

                    <label>Main Category:</label>
                    <asp:DropDownList ID="ddlMainCategory" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMainCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


            <div class="col-md-2">
                <div class="form-group">

                    <label>Sub Category:</label>
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>


            <div class="col-md-5">
                <div class="form-group">

                    <label>Description:</label>
                    <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">

                    <label>Amount:</label>
                    <asp:TextBox ID="txtAmt" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-lg" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>

        <div class="row">
            <h3 class="text-center"> All Expenses List</h3>
            <div class="col-md-1"></div>
            <div class="col-md-10"></div>
            <div class="table-responsive"></div>
            <asp:GridView ID="GridView1" CssClass="table table-responsive table-hover" runat="server"></asp:GridView>
            <div class="col-md-1"></div>
        </div>

    </div>
</asp:Content>
