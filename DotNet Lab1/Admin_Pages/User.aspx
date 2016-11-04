<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" MasterPageFile="~/Admin.Master" Inherits="DotNet_Lab1.Pages.User" %>



<asp:Content ID="userForm" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    <%--Address 1 validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblAddress1" runat="server" Text="Address 1" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" Display="None" ControlToValidate="txtAddress1" ErrorMessage="Address 1 is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Address 2 validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblAddress2" runat="server" Text="Address 2" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control"></asp:TextBox>
            <%--not required--%>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" ControlToValidate="txtAddress2" ErrorMessage="Address 2 is required"></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <br />
    <br />

    <%--city validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblCity" runat="server" Text="City" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="None" ControlToValidate="txtCity" ErrorMessage="City is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />



    <%--state validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblState" runat="server" Text="State" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataSourceID="state" DataTextField="state_full_name" DataValueField="state_id"></asp:DropDownList>
            <asp:SqlDataSource ID="state" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_PaquinConnectionString %>" SelectCommand="states_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" Display="None" ControlToValidate="ddlState" ErrorMessage="State is required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />

    <%--Zip validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblZip" runat="server" Text="Zip Code" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvZip" runat="server" Display="None" ControlToValidate="txtZip" ErrorMessage="Zip Code is required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="Zip code is invalid!" display="None" ControlToValidate="txtZip" ValidationExpression="^\d{5}(?:[-\s]\d{4})?$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />

    <%--password validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="None" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            
        </div>
    </div>
    <br />
    <br />

    <%--password confirm validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPasswordConfirm" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPasswordConfirm" runat="server" Display="None" ControlToValidate="txtPasswordConfirm" ErrorMessage="Password confirm is required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ErrorMessage="Passwords aren't the same!" Display="None" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm"> </asp:CompareValidator>
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
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email is invalid!" display="None" ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
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
            <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Emails aren't the same!" ControlToCompare="txtEmail" display="None" ControlToValidate="txtEmailConfirm"> </asp:CompareValidator>
        </div>
    </div>
    <br />
    <br />

    <%--phone validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="lblIsActive" runat="server" Text="Is Active"></asp:Label>
            <asp:CheckBox ID="cbIsActive" runat="server" />
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Display="None" ControlToValidate="txtPhone" ErrorMessage="Phone Number is required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone number is invalid!" display="None" ControlToValidate="txtPhone" ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />


    <asp:Button ID="btnUpdate" runat="server" CssClass="col-lg-4 btn btn-default col-md-offset-2" Text="Update" />
    <asp:Button ID="btnCancel" runat="server" CssClass="col-lg-4 btn btn-default" Text="Cancel" CausesValidation="false" PostBackUrl="~/Home"/>
    <asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />

    <br />
    <br />

</asp:Content>
