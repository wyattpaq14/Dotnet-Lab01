﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="DotNet_Lab1.Default" %>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" DataSourceID="sdsUsers">

        <Columns>

            <asp:BoundField DataField="user_email" HeaderText="Email" />
            <asp:BoundField DataField="user_first" HeaderText="First Name" />
            <asp:BoundField DataField="user_last" HeaderText="Last Name" />
            <asp:BoundField DataField="user_phone" HeaderText="Phone Number" />
            <asp:HyperLinkField Text="view/edit" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="~/Admin/User/{0}" />
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="sdsUsers" runat="server"
        ConnectionString="<%$ ConnectionStrings:SQL Server %>"
        SelectCommand="users_getAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


</asp:Content>





