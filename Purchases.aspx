<%@ Page Title="Purchases" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeFile="Purchases.aspx.cs" Inherits="Purchases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row" align="center">
    <div class="col-sm-12">
        
            
            <asp:DropDownList ID="dlVendor" runat="server" CssClass="form-control-static" Width="600px" DataTextField="Vendor" DataSourceID="odsVendorSelect"></asp:DropDownList>
            <asp:ObjectDataSource ID="odsVendorSelect" runat="server" SelectMethod="VENDOR_Select" TypeName="poDll.PurchaseOrder"></asp:ObjectDataSource>
        <div align="right">
            <asp:Label ID="lblPoLabel" runat="server" Text="PO Number: "></asp:Label>
            <asp:Label ID="lblPoNumber" runat="server" Text=""></asp:Label>
            <br />
            </div>
        </div>
        </div>

<%--    <div class="table-responsive">--%>
        <div class="table table-condensed">
            <table>
                <tr>
                    <th align ="right">Line No</th>
                    <th align ="center">Item</th>
                    <th align ="right">Quantity</th>
                    <th align ="center">Description</th>
                    <th align ="center">Unit Price</th>
                    <th align ="center">Estimated Amount</th>
                    <th align ="center">Final Amount</th>
                </tr>
                <tr>
                    <%--Row 1--%>
                    <th>
                        <asp:Label ID="lblLine1" runat="server" Text="1"></asp:Label>
                    </th>
                    <th>
                        <asp:TextBox ID="tbItem1" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbQuantity1" runat="server" ></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbDescription1" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbUnitPrice1" runat="server" ></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbEstimatedAmount1" runat="server" ></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbFinalAmount1" runat="server"></asp:TextBox>
                    </th>
                </tr>
                <tr>
                    <%--Row 2--%>
                    <th>
                        <asp:Label ID="lblLine2" runat="server" Text="2"></asp:Label>
                    </th>
                    <th>
                        <asp:TextBox ID="tbItem2" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbQuantity2" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbDescription2" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbUnitPrice2" runat="server" ></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbEstimatedAmount2" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbFinalAmount2" runat="server"></asp:TextBox>
                    </th>
                </tr>
                <tr>
                    <%--Row 3--%>
                    <th>
                        <asp:Label ID="lblLine3" runat="server" Text="3"></asp:Label>
                    </th>
                    <th>
                        <asp:TextBox ID="tbItem3" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbQuantity3" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbDescription3" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbUnitPrice3" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbEstimatedAmount3" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbFinalAmount3" runat="server"></asp:TextBox>
                    </th>
                </tr>
                <tr>
                    <%--Row 4--%>
                    <th>
                        <asp:Label ID="lblLine4" runat="server" Text="4"></asp:Label>
                    </th>
                    <th>
                        <asp:TextBox ID="tbItem4" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbQuantity4" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbDescription4" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbUnitPrice4" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbEstimatedAmount4" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbFinalAmount4" runat="server"></asp:TextBox>
                    </th>
                </tr>
                <tr>
                    <%--Row 5--%>
                    <th>
                        <asp:Label ID="lblLine5" runat="server" Text="5"></asp:Label>
                    </th>
                    <th>
                        <asp:TextBox ID="tbItem5" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbQuantity5" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbDescription5" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbUnitPrice5" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbEstimatedAmount5" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:TextBox ID="tbFinalAmount5" runat="server"></asp:TextBox>
                    </th>
                </tr>
            </table>
            </div>

            <div class="row">
                    <div align="center">
                        <asp:Button ID="btnSummate" runat="server" Text="" CssClass="btn btn-success btn-lg" OnClick="btnSummate_Click" />
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="" CssClass="btn btn-success btn-lg" OnClick="btnSubmit_Click" />
                    </div>
            </div>
            <div class="row" align="center">
                <div class="col-sm-12">
                    <asp:Label ID="lblMessage" runat="server" CssClass="h3 text-success"></asp:Label>
                </div>
            </div>
    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="g"
                                ControlToValidate="tbItem1"
                                ErrorMessage="Please Enter Item to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>
    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="g"
                                ControlToValidate="tbQuantity1"
                                ErrorMessage="Please Enter Quantity to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>
    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="g"
                                ControlToValidate="tbUnitPrice1"
                                ErrorMessage="Please Enter Price to continue"
                                ForeColor="Orange" BorderStyle="None" Font-Bold="true" Font-Italic="true"></asp:RequiredFieldValidator>
        
    

</asp:Content>

