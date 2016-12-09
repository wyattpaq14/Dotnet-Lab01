<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Directions.aspx.cs" MasterPageFile="~/lab01.Master" Inherits="DotNet_Lab1.Pages.Directions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="col-lg-12">Directions</h3>

        <br />
        <br />
        <br />

        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <h3>Welcome to Zebra Pizzia</h3>
                <p>
                    Below is a map of Zebra Pizzia's location.
                </p>
                <br />
                <br />
            </div>
        </div>

        <div class="col-lg-6 col-lg-offset-3">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1213.4650627867436!2d-93.3165903701879!3d45.17883168329021!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x52b33c832141c0f9%3A0xdd4b72e2a7653092!2sZebra+Pizza!5e0!3m2!1sen!2sus!4v1481249645948" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </div>

    </div>
</asp:Content>
