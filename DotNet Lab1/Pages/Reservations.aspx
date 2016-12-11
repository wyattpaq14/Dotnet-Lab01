<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" MasterPageFile="~/lab01.Master" Inherits="DotNet_Lab1.Pages.Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="col-lg-12">Reservation List</h3>
        <br />
        <br />
        <br />
        <asp:GridView ID="gvReservations" runat="server" AutoGenerateColumns="false" DataSourceID="sdsReservations">

            <Columns>



                <asp:BoundField DataField="user_id" HeaderText="User ID" />
                <asp:BoundField DataField="res_date" HeaderText="Reservation Date" />
                <asp:BoundField DataField="res_time" HeaderText="Reservation Time" />
                <asp:BoundField DataField="res_guest_cnt" HeaderText="Guest Count" />
                <asp:BoundField DataField="res_spec_req" HeaderText="Reservation Requirements" />
                <asp:HyperLinkField Text="view/edit" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="~/Admin/Res-Mgmt/{0}" />

            </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="sdsReservations" runat="server"
            ConnectionString="<%$ ConnectionStrings:SQL Server %>"
            SelectCommand="res_getAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>



        <div class="row">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <div>
                <asp:Label ID="lblHour" runat="server" Text="Hour: "></asp:Label>
                <asp:DropDownList ID="ddlHour" runat="server"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="lblMin" runat="server" Text="Minnute: "></asp:Label>
                <asp:DropDownList ID="ddlMin" runat="server"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="lblAmPm" runat="server" Text="AM/PM: "></asp:Label>
                <asp:DropDownList ID="ddlAmPm" runat="server"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="lblNumGuest" runat="server" Text="Guests: "></asp:Label>
                <asp:DropDownList ID="ddlNumGuest" runat="server"></asp:DropDownList>
            </div>
        </div>

        <%--firstName validator, textbox and label--%>
        <div class="form-group col-lg-8 col-md-offset-2">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" Display="None" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <br />

        <%--lastName validator, textbox and label--%>
        <div class="form-group col-lg-8 col-md-offset-2">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" Display="None" ControlToValidate="txtLastName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <br />

        <%--email validator, textbox and label--%>
        <div class="form-group col-lg-8 col-md-offset-2">
            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="None" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email is invalid!" Display="None" ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <br />
        <%--email confirm validator, textbox and label--%>
        <div class="form-group col-lg-8 col-md-offset-2">
            <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm Email" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtEmailConfirm" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailConfirm" runat="server" Display="None" ControlToValidate="txtEmailConfirm" ErrorMessage="Email confirm is required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Emails aren't the same!" ControlToCompare="txtEmail" Display="None" ControlToValidate="txtEmailConfirm"> </asp:CompareValidator>
            </div>
        </div>
        <br />
        <br />

        <%--phone validator, textbox and label--%>
        <div class="form-group col-lg-8 col-md-offset-2">
            <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Display="None" ControlToValidate="txtPhone" ErrorMessage="Phone Number is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone number is invalid!" Display="None" ControlToValidate="txtPhone" ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$"></asp:RegularExpressionValidator>
            </div>
            <br />
            <br />

        </div>


        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" CssClass="col-lg-4 btn btn-default col-md-offset-2" OnClick="btnSubmit_Click" Text="Create Reservation" />
        <asp:Button ID="btnCancel" runat="server" CssClass="col-lg-4 btn btn-default" Text="Cancel" CausesValidation="false" PostBackUrl="~/Home" />
        <asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />
        <br />
        <br />
    </div>
</asp:Content>
