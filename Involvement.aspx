<%@ Page Title="Involvement" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Involvement.aspx.cs" Inherits="SMSU_PO.Involvement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <div class="row" align="center">
            <h3 class="text-center">Add Clubs</h3>
                    <asp:DropDownList ID="dlClubs" CssClass="form-control-static" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Club Name" Width="600px"></asp:DropDownList>

                    <asp:Button ID="btnAddClub" runat="server" Text="Add Club" CssClass="btn btn-success" OnClick="btnAddClub_Click" />

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="CLUBName_Select" TypeName="poDll.PurchaseOrder"></asp:ObjectDataSource>
            <br />
            <asp:Label ID="lblAddError" runat="server" CssClass="h4, text-danger"></asp:Label>
            <asp:Label ID="lblAddSuccess" runat="server" CssClass="h4, text-success"></asp:Label>
            <br />

        </div>

        <div class="row">
            <div align="Center" class="table-responsive">
                <h3 class="text-center">My Involvement</h3>
                <asp:GridView ID="GridView2" runat="server"
                    CssClass=" table" GridLines="None">
                    <EmptyDataTemplate>
                        <div align="center">You Are not part of any clubs yet.</div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>

            <div class="row" align="center">
            <h3 class="text-center">Remove Clubs</h3>
                    <asp:DropDownList ID="dlClubs2" CssClass="form-control-static" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Club Name" Width="600px"></asp:DropDownList>

                    <asp:Button ID="btnRemoveClub" runat="server" Text="Remove Club" CssClass="btn btn-success" OnClick="btnRmClub_Click" />

            <%--<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="CLUBName_Select" TypeName="poDll.PurchaseOrder"></asp:ObjectDataSource>--%>
                <br />

            <asp:Label ID="lblRmError" runat="server" CssClass="h4, text-danger"></asp:Label>
            <asp:Label ID="lblRmSuccess" runat="server" CssClass="h4, text-success"></asp:Label>
            <br />

        </div>

            <div class="row">
                <asp:GridView ID="GridView1" runat="server"
                    OnRowDataBound="gv1_RowDataBound"
                    CssClass="table" GridLines="none">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
