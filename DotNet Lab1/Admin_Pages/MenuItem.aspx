<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.MenuItem" %>

<asp:Content ID="menuItemForm" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--name validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblName" runat="server" Text="First Name" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="None" ControlToValidate="txtName" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--description validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblDesc" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDesc" runat="server" Display="None" ControlToValidate="txtDesc" ErrorMessage="Description is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--allergens validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblAllergens" runat="server" Text="Allergens" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtAllergens" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <br />
    <br />

    <%--price validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblPrice" runat="server" Text="Price" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPrice" runat="server" Display="None" ControlToValidate="txtPrice" ErrorMessage="Price is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--menu validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblMenu" runat="server" Text="City" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlMenu" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvMenu" runat="server" Display="None" ControlToValidate="ddlMenu" ErrorMessage="Menu is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--category validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblCategory" runat="server" Text="State" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:Label ID="lblCatIsActive" runat="server" Text="Is Active"></asp:Label>
            <asp:CheckBox ID="cbCatIsActive" runat="server" />
            <asp:RequiredFieldValidator ID="rfvCbCatIsActive" runat="server" ControlToValidate="cbCatIsActive" ErrorMessage="Active checkbox is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvCategory" runat="server" Display="None" ControlToValidate="ddlCategory" ErrorMessage="Category is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    


    <asp:Button ID="btnUpdate" runat="server" CssClass="col-lg-4 btn btn-default col-md-offset-2" Text="Update" />
    <asp:Button ID="btnCancel" runat="server" CssClass="col-lg-4 btn btn-default" Text="Cancel" />
    <asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />

    <br />
    <br />

</asp:Content>
