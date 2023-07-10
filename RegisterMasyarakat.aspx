<%@ Page Title="Vaksinku - Registrasi Masyarakat" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RegisterMasyarakat.aspx.cs" Inherits="Vaksinku.RegisterMasyarakat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Form Pendaftaran -->
      <div class="page-section">
        <div class="container">
          <h1 class="text-center wow fadeInUp">Daftar Vaksinasi</h1>
            <div class="row mt-5 ">
              <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
                <asp:TextBox ID="nama_masyarakat" runat="server" class="form-control" placeholder="Nama Lengkap"></asp:TextBox>
              </div>
              <div class="col-12 col-sm-6 py-2 wow fadeInRight">
                <asp:TextBox ID="email_masyarakat" runat="server" class="form-control" placeholder="Alamat Email"></asp:TextBox>
              </div>
              <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
                <asp:TextBox ID="jadwal_vaksin_masyarakat" runat="server" class="form-control" TextMode="Date" placeholder="Jadwal Vaksin"></asp:TextBox>
              </div>
              <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
                <asp:DropdownList runat="server" name="departement" id="jenis_vaksin_masyarakat" class="custom-select">
                  <asp:ListItem Text="disabled">Pilih Jenis Vaksin</asp:ListItem>              
                  <asp:ListItem Text="PT Bio Farma (Persero)">PT Bio Farma (Persero)</asp:ListItem>     
                  <asp:ListItem Text="Sinovac Biotech Ltd">Sinovac Biotech Ltd</asp:ListItem>     
                  <asp:ListItem Text="AstraZeneca">AstraZeneca</asp:ListItem>     
                  <asp:ListItem Text="Moderna">Moderna</asp:ListItem>     
                  <asp:ListItem Text="Sinopharm">Sinopharm</asp:ListItem>
                  <asp:ListItem Text="Pfizer and BioNTech">Pfizer and BioNTech</asp:ListItem>     
                </asp:DropdownList>
              </div>
              <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="nik_masyarakat" runat="server" class="form-control" placeholder="NIK (Sesuai KTP)"></asp:TextBox>
              </div>
              <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="pesan_masyarakat" runat="server" class="form-control" rows="6" placeholder="Pesan Khusus"></asp:TextBox>
              </div>
                <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <asp:TextBox ID="password_masyarakat" TextMode="Password" runat="server" class="form-control" rows="6" placeholder="Password"></asp:TextBox>
              </div>
            </div>

            <asp:Button runat="server" ID="RegistrasiButton" OnClick="RegistrasiButton_Click" type="submit" Text="Daftar Vaksin" class="btn btn-primary mt-3 wow zoomIn"/>
        </div>
      </div> 
</asp:Content>
