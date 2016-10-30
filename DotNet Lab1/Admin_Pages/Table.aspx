<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.Table" %>

<asp:Content ID="tableForm" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--name validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
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


    <%--section validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblSection" runat="server" Text="Section" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlSection" runat="server" CssClass="form-control" DataSourceID="NEITSQL" DataTextField="sect_desc" DataValueField="sect_id"></asp:DropDownList>
            <asp:SqlDataSource ID="NEITSQL" runat="server" ConnectionString="<%$ ConnectionStrings:SQL Server %>" SelectCommand="sections_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvSection" runat="server" Display="None" ControlToValidate="ddlSection" ErrorMessage="Menu is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />
   

    <%--seat count validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblSeatCount" runat="server" Text="Seat Count" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlSeatCount" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:Label ID="lblDescIsActive" runat="server" Text="Is Active"></asp:Label>
            <asp:CheckBox ID="cbDescIsActive" runat="server" />
            <asp:RequiredFieldValidator ID="rfvDdlSeatCount" runat="server" Display="None" ControlToValidate="ddlSeatCount" ErrorMessage="Menu is required"></asp:RequiredFieldValidator>
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

