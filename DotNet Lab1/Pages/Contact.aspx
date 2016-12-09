<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" MasterPageFile="~/lab01.Master" Inherits="DotNet_Lab1.Pages.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="col-lg-12">Contact Us</h3>
     
        <br />
        <br />
        <br />

        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <h3>Welcome to Zebra Pizzia</h3>
                <p>
                   Please fill out the fourm to inform us about company operations.
                </p>
            </div>
        </div>

        <form class="form-horizontal">
            <fieldset>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail" placeholder="Email" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Message</label>
                    <div class="col-lg-10">
                        <textarea class="form-control" rows="3" id="textArea"></textarea>

                    </div>
                </div>


                <div class="form-group">

                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="reset" class="btn btn-default">Cancel</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </fieldset>
        </form>

    </div>
</asp:Content>
