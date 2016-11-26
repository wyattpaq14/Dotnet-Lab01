<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.Tables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvTables" runat="server" AutoGenerateColumns="false" DataSourceID="sdsTabels">

        <Columns>

            <asp:TemplateField>

                <ItemTemplate>

                    <asp:HiddenField ID="hdnUsrID" runat="server" Value="12" />

                </ItemTemplate>

            </asp:TemplateField>

            <asp:BoundField DataField="tbl_name" HeaderText="Tabel Name" />
            <asp:BoundField DataField="tbl_desc" HeaderText="Tabel Description" />
            <asp:BoundField DataField="tbl_seat_cnt" HeaderText="Tabel Seat Count" />
            <asp:BoundField DataField="tbl_active" HeaderText="Is Active" />

        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="sdsTabels" runat="server"
        ConnectionString="<%$ ConnectionStrings:SQL Server %>"
        SelectCommand="tables_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


</asp:Content>
