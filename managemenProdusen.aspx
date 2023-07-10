<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="managemenProdusen.aspx.cs" Inherits="Vaksinku.managemenbpmn" %>
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
                           <h4>Input Detail Produksi Vaksin</h4>
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
                        <label>Kode Produksi</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="kodeProduksiVaksin" runat="server" placeholder="Kode Produksi Vaksin"></asp:TextBox>
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
                      <div class="col-md-6">
                        <label>Negara Asal Vaksin</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="asalNegaraVaksin" runat="server" placeholder="Asal Negara"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>Penanggung Jawab</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="penanggungJawabVaksin" runat="server" placeholder="Penanggung Jawab Produksi"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-3">
                        <label>Jumlah Yang Didistribusikan</label>
                        <div class="form-group">
                           <asp:TextBox TextMode="Number" CssClass="form-control" ID="totalVaksin" runat="server" placeholder="Jumlah Distribusi Vaksin"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Kota Tujuan</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="kotaTujuanVaksin" runat="server" placeholder="Kota Tujuan"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Provinsi Tujuan</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="provinsiTujuanVaksin" runat="server" placeholder="Provinsi Tujuan"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Rumah Sakit Tujuan</label>
                        <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="rumahSakitTujuan" runat="server" placeholder="Rumah Sakit Tujuan"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" OnClick="addVaksin" Text="Tambah"/>
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" OnClick="updateVaksin" runat="server"  Text="Edit"  />
                     </div>
                     <div class="col-4">
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
                           <h4>List Detail Produksi Vaksin</h4>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vaksinkuDBConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_Produksi_Vaksin]"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="gridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                         <Columns>
                             <asp:BoundField DataField="kode_produksi" HeaderText="Kode" SortExpression="kode_produksi" />
                             <asp:BoundField DataField="nama_Vaksin" HeaderText="Nama" SortExpression="nama_Vaksin" />
                             <asp:BoundField DataField="negaraAsal_Vaksin" HeaderText="Asal" SortExpression="negaraAsal_Vaksin" />
                             <asp:BoundField DataField="penanggung_jawab" HeaderText="Penanggung Jawab" SortExpression="penanggung_jawab" />
                             <asp:BoundField DataField="jumlah" HeaderText="Jumlah" SortExpression="jumlah" />
                             <asp:BoundField DataField="kota_tujuan" HeaderText="Kota Tujuan" SortExpression="kota_tujuan" />
                             <asp:BoundField DataField="provinsi_tujuan" HeaderText="Provinsi Tujuan" SortExpression="provinsi_tujuan" />
                             <asp:BoundField DataField="rumahsakit_tujuan" HeaderText="Rumah Sakit Tujuan" SortExpression="rumahsakit_tujuan" />
                         </Columns>
                     </asp:GridView>
               </div>
            </div>
         </div>
      </div>

</asp:Content>
