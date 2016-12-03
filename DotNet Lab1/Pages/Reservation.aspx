<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" MasterPageFile="~/lab01.Master" Inherits="DotNet_Lab1.Pages.Reservation" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <%--reservation ID validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblReservationID" runat="server" Text="Reservation ID" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtReservationID" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReservationID" runat="server" Display="None" ControlToValidate="txtReservationID" ErrorMessage="Reservation ID is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--User ID validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblUserID" runat="server" Text="User ID" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserID" runat="server" Display="None" ControlToValidate="txtUserID" ErrorMessage="User ID is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Reservation Date validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblReservationDate" runat="server" Text="Reservation Date" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtReservationDate" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReservationDate" runat="server" Display="None" ControlToValidate="txtReservationDate" ErrorMessage="Reservation Date is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Reservation Time validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblReservationTime" runat="server" Text="Reservation Time" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtReservationTime" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReservationTime" runat="server" Display="None" ControlToValidate="txtReservationTime" ErrorMessage="Reservation Time is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Guest Count validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblGuestCount" runat="server" Text="Guest Count" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtGuestCount" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGuestCount" runat="server" Display="None" ControlToValidate="txtGuestCount" ErrorMessage="Guest Count is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Reservation Spec Requirements validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblReservationSpecReq" runat="server" Text="Reservation Spec Requirements" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtReservationSpecReq" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvReservationSpecReq" runat="server" Display="None" ControlToValidate="txtReservationSpecReq" ErrorMessage="User ID is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />



    <asp:Button ID="btnUpdate" runat="server" CssClass="col-lg-4 btn btn-default col-md-offset-2" Text="Update" />
    <asp:Button ID="btnCancel" runat="server" CssClass="col-lg-4 btn btn-default" Text="Cancel" CausesValidation="false" PostBackUrl="~/Home" />
    <asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />

</asp:Content>
