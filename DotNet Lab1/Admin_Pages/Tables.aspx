<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="DotNet_Lab1.Admin_Pages.Tables" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-12">
            <div class="table-responsive">

                <asp:GridView ID="gvTables" runat="server" AutoGenerateColumns="false" DataSourceID="sdsTabels">

                    <Columns>

                        <asp:BoundField DataField="tbl_name" HeaderText="Tabel Name" />
                        <asp:BoundField DataField="tbl_desc" HeaderText="Tabel Description" />
                        <asp:BoundField DataField="tbl_seat_cnt" HeaderText="Tabel Seat Count" />
                        <asp:BoundField DataField="tbl_active" HeaderText="Is Active" />
                        <asp:HyperLinkField Text="view/edit" DataNavigateUrlFields="tbl_id" DataNavigateUrlFormatString="~/tabels/tabele/{0}" />

                    </Columns>

                </asp:GridView>

                <asp:SqlDataSource ID="sdsTabels" runat="server"
                    ConnectionString="<%$ ConnectionStrings:SQL Server %>"
                    SelectCommand="tables_getalll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

            </div>
        </div>
    </div>

</asp:Content>
