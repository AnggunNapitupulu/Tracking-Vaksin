<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Vaksinku.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="page-section">
        <div class="container">
          <h1 class="text-center wow fadeInUp">Login Masyarakat</h1>
            <div class="row mt-5 ">
              <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="nik_masyarakat" runat="server" class="form-control" placeholder="NIK (Sesuai KTP)"></asp:TextBox>
              </div>
                <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="password_masyarakat" TextMode="Password" runat="server" class="form-control" rows="6" placeholder="Password"></asp:TextBox>
              </div>
            </div>

            <asp:Button runat="server" ID="MasyarakatLogin" OnClick="MasyarakatLogin_onclick" type="submit" Text="Login" class="btn btn-primary mt-3 wow zoomIn"/>
        </div>
      </div> 

</asp:Content>
