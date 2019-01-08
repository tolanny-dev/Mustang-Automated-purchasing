<%@ Page Title="Home" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SMSU_PO._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="jumbotron">
        <div class="carousel slide" id="carousel-example-generic" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for Slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img alt="SMSU Admission" src="http://www.smsu.edu/resources/webspaces/homepage/slides/newstudentreg2018.jpg" />

                </div>
                <div class="item">
                    <img alt="SMSU Admission" src="http://www.smsu.edu/resources/webspaces/homepage/slides/grd2018.jpg" />

                </div>
                <div class="item">
                    <img alt="SMSU Admission" src="http://www.smsu.edu/resources/webspaces/homepage/slides/mustangdays2018slider.jpg" />

                </div>
                <div class="item">
                    <img alt="SMSU Admission" src="http://www.smsu.edu/resources/webspaces/homepage/slides/99placement.jpg" />

                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>


        </div>

    </section>

    <div class="container">
        <div align="center">
            <div class="row row-eq-height">
                <div class="col-sm-12">
                    <div class="col-sm-6">
                        <h2 class="text-center"><u>Involvement</u></h2>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" GridLines="None">
                            <EmptyDataTemplate>
                                <div align="center">You Are not part of any clubs yet.</div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </div>


                    <div class="col-sm-6">
                        <h2 class="text-center"><u>Purchases</u></h2>
                        <asp:GridView ID="GridView2" runat="server" CssClass=" table" GridLines="None">
                            <EmptyDataTemplate>
                                <div align="center">You have not made any purchases yet.</div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:DropDownList ID="dlPurchases" runat="server" DataSourceID="odsPurchaseSelect" Width="200px" DataTextField="Number"></asp:DropDownList>
                        &nbsp;
                        <asp:Button ID="btnViewPurchase" CssClass="btn btn-xs btn-success" runat="server" Text="View Purchase" OnClick="btnViewPurchase_Click" />
                        <asp:ObjectDataSource runat="server" ID="odsPurchaseSelect" SelectMethod="PURCHASE_Select" TypeName="poDll.PurchaseOrder">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="StarID" Name="StarID" Type="String"></asp:SessionParameter>

                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>


                </div>
            </div>
        </div>

    </div>
    <div class="container">
        <div align="center" class="">
            <asp:GridView ID="GridView3" CssClass="table table-hover" GridLines="None" runat="server"></asp:GridView>
            <asp:Button ID="btnDownload" runat="server"  CssClass="btn btn-success" Text="Download" OnClick="btnDownload_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="h3 text-danger" Text=""></asp:Label>
        </div>
        

    </div>

</asp:Content>
