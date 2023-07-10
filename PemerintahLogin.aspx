<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PemerintahLogin.aspx.cs" Inherits="Vaksinku.PemerintahLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="page-section">
        <div class="container">
          <h1 class="text-center wow fadeInUp">Login Pemerintah</h1>

            <div class="row mt-5 ">
              <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="username" runat="server" class="form-control" placeholder="username"></asp:TextBox>
              </div>
                <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" rows="6" placeholder="Password"></asp:TextBox>
              </div>
            </div>

            <asp:Button runat="server" ID="LoginButton" OnClick="PemerintahLogin_Click" type="submit" Text="Login" class="btn btn-primary mt-3 wow zoomIn"/>
        </div>
      </div> 

</asp:Content>
