<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResMgmt.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.ResMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvReservations" runat="server" AutoGenerateColumns="false" DataSourceID="sdsReservations">

        <Columns>

            <asp:TemplateField>

                <ItemTemplate>

                    <asp:HiddenField ID="hdnUsrID" runat="server" Value="12" />

                </ItemTemplate>

            </asp:TemplateField>

            <asp:BoundField DataField="res_date" HeaderText="Reservation Date" />
            <asp:BoundField DataField="res_time" HeaderText="Reservation Time" />
            <asp:BoundField DataField="res_guest_cnt" HeaderText="Guest Count" />
            <asp:BoundField DataField="res_spec_req" HeaderText="Specifications" />

        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="sdsReservations" runat="server"
        ConnectionString="<%$ ConnectionStrings:SQL Server %>"
        SelectCommand="reservations_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


</asp:Content>
