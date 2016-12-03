<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResMgmt.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.ResMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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


</asp:Content>
