<%@ Page Language="C#" Title="Login" AutoEventWireup="false" CodeFile="Login.aspx.cs" Inherits="SMSU_PO.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>SMSU Business Services | <%: Page.Title %></title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body class="no-pad">
    <section class="jumbotron">
        <div class="container">
            <div class="row text-center">
                <div class="jumbotron-wrap">
                    <h2>SMSU Business Services</h2>
                    <h3>Purchase Order Form Automation</h3>
                </div>
            </div>
        </div>
    </section>

    <form id="form1" runat="server">

        <div class="container">
            <div class="col-xs-12">
                <div align="center">
                    <div class="col-xs-6">
                        <asp:Button ID="vwLogin" runat="server" CssClass="btn btn-success btn-lg btn-block mb-1" Text="LOGIN" OnClick="vwLogin_Click" />
                    </div>
                    <div class="col-xs-6">
                        <asp:Button ID="vwSignup" runat="server" CssClass="btn btn-success btn-lg btn-block mb-1-" Text="SIGN UP" OnClick="vwSignup_Click" />
                    </div>
                </div>
            </div>

            <hr />
            <br />
            <asp:MultiView ID="Multiview1" runat="server" ActiveViewIndex="0">

                <asp:View ID="View1" runat="server">
                    <h2 class="text-center">LOGIN</h2>
                    <hr />
                    <div class="row">

                        <div class="col-sm-6 col-sm-offset-3">

                            <asp:Label ID="lblNotFound" runat="server" CssClass="h3 text-center text-danger"></asp:Label>

                            <asp:TextBox ID="txtBoxStarid" runat="server" CssClass="form-control tbox mb1" placeholder="StarID" Wrap="False"></asp:TextBox>
                            <br />

                            <asp:TextBox ID="txtBoxPwd" runat="server" CssClass="form-control tbox mb1" placeholder="Password" Wrap="False" TextMode="Password"></asp:TextBox>
                            <p align="right"><a href="#" class="txt-success">Forgot my Password</a></p>
                            <div align="center">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                            <br />
                            &nbsp;
                        </div>
                    </div>
        </asp:View>

                <asp:View ID="View2" runat="server">
                    <h2 class="text-center">SIGN UP</h2>
                    <hr />
                    <div class="row">
                        <asp:Label ID="lblExists" runat="server" CssClass="text-center h3 text-danger"></asp:Label>

                        <div class="col-sm-6 col-sm-offset-3">
                            <asp:TextBox ID="tBoxStarid" runat="server" CssClass="form-control tbox" placeholder="StarID" Wrap="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="g"
                                ControlToValidate="tBoxStarid"
                                ErrorMessage="Please Enter your StarID to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="tBoxFirstName" runat="server" CssClass="form-control tbox" placeholder="First Name" Wrap="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="g"
                                ControlToValidate="tBoxFirstName"
                                ErrorMessage="Please Enter your First Name to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="tBoxLastName" runat="server" CssClass="form-control tbox" placeholder="Last Name" Wrap="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="g"
                                ControlToValidate="tBoxLastName"
                                ErrorMessage="Please Enter your Last Name to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="tBoxEmail" runat="server" CssClass="form-control tbox" placeholder="Email" Wrap="False" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="g"
                                ControlToValidate="tBoxEmail"
                                ErrorMessage="Please Enter your Email to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="tBoxPwd" runat="server" CssClass="form-control tbox" placeholder="Password" Wrap="False" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="g"
                                ControlToValidate="tBoxPwd"
                                ErrorMessage="Please Enter a Password to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="h2 txt-success"></asp:Label>
                            <div align="center">
                                <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-success" Text="SIGN UP" ValidationGroup="g" OnClick="btnSignUp_Click" />
                            </div>

                        </div>
                        </div>
                </asp:View>

        </asp:MultiView>

        </div>

    </form>
</body>
</html>
