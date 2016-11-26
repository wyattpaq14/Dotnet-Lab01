<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItems.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.MenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvSections" runat="server" AutoGenerateColumns="false" DataSourceID="sdsMenuItems">

        <Columns>

            <asp:TemplateField>

                <ItemTemplate>

                    <asp:HiddenField ID="hdnUsrID" runat="server" Value="12" />

                </ItemTemplate>

            </asp:TemplateField>

            <asp:BoundField DataField="item_name" HeaderText="Item Name" />
            <asp:BoundField DataField="item_desc" HeaderText="Item Description" />
            <asp:BoundField DataField="item_allergens" HeaderText="Item Allergens" />
            <asp:BoundField DataField="item_price" HeaderText="Item Price" />

        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="sdsMenuItems" runat="server"
        ConnectionString="<%$ ConnectionStrings:SQL Server %>"
        SelectCommand="menuitems_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


</asp:Content>
