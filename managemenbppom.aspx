<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="managemenbppom.aspx.cs" Inherits="Vaksinku.managemenbppom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <a href="homepage.aspx"><< Back to Home</a><br>
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Input Jenis Vaksin</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Kode Registrasi</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="kodeRegistrasiVaksin" runat="server" placeholder="Kode Registrasi"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Nama Vaksin</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="namaVaksin" runat="server" placeholder="Nama Vaksin"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-8">
                        <label>Negara Asal Vaksin</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="asalNegaraVaksin" runat="server" placeholder="Asal Negara"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-2">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" OnClick="addVaksin" Text="Tambah"/>
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" OnClick="updateVaksin" runat="server"  Text="Edit"  />
                     </div>
                     <div class="col-2">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" OnClick="hapusVaksin" runat="server"  Text="Hapus"/>
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </div>
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>List Vaksin</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  </div>
                <div class="col">
                     <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:vaksinkuDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_Vaksin]"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="gridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                         <Columns>
                             <asp:BoundField DataField="kode_registrasi_vaksin" HeaderText="Kode Registrasi Vaksin" SortExpression="kode_registrasi_vaksin" />
                             <asp:BoundField DataField="merk_vaksin" HeaderText="Merk Vaksin" SortExpression="merk_vaksin" />
                             <asp:BoundField DataField="negara_asal" HeaderText="Negara Asal" SortExpression="negara_asal" />
                         </Columns>
                     </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vaksinkuDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_Vaksin]"></asp:SqlDataSource>
                     </div>
               </div>
            </div>
         </div>
      </div>

</asp:Content>
