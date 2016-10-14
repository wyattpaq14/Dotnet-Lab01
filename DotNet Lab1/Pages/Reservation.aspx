<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" MasterPageFile="~/lab01.Master" Inherits="DotNet_Lab1.Pages.Reservation" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <h3 class="col-lg-12">Create Reservation</h3>
        <br />
        <br />
        <br />
        <form class="form-horizontal">
            <fieldset>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Name</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail" placeholder="John Doe" />
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Head Count</label>
                    <div class="col-lg-10">
                        <select class="form-control" id="select">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6+</option>
                        </select>
                        <br>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Time</label>
                    <div class="col-lg-10">
                        <select class="form-control" id="select">
                            <option>1:00 AM</option>
                            <option>2:00 AM</option>
                            <option>3:00 AM</option>
                            <option>4:00 AM</option>
                            <option>5:00 AM</option>
                            <option>6:00 AM</option>
                            <option>7:00 AM</option>
                            <option>8:00 AM</option>
                            <option>9:00 AM</option>
                            <option>10:00 AM</option>
                            <option>11:00 AM</option>
                            <option>12:00 AM</option>
                            <!-- PM Times !-->
                            <option>1:00 PM</option>
                            <option>2:00 PM</option>
                            <option>3:00 PM</option>
                            <option>4:00 PM</option>
                            <option>5:00 PM</option>
                            <option>6:00 PM</option>
                            <option>7:00 PM</option>
                            <option>8:00 PM</option>
                            <option>9:00 PM</option>
                            <option>10:00 PM</option>
                            <option>11:00 PM</option>
                            <option>12:00 PM</option>
                        </select>
                        <br>
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
