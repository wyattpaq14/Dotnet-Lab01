<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Sections.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.Sections" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvSections" runat="server" AutoGenerateColumns="false" DataSourceID="sdsSections">

        <Columns>

            <asp:BoundField DataField="sect_name" HeaderText="Section Name" />
            <asp:BoundField DataField="sect_desc" HeaderText="Section Description" />
            <asp:BoundField DataField="sect_active" HeaderText="Is Active" />
            <asp:HyperLinkField Text="view/edit" DataNavigateUrlFields="sect_id" DataNavigateUrlFormatString="~/Admin/Section/{0}" />

        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="sdsSections" runat="server"
        ConnectionString="<%$ ConnectionStrings:SQL Server %>"
        SelectCommand="sections_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
