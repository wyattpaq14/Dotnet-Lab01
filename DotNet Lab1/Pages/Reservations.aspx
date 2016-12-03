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


    </div>
</asp:Content>
