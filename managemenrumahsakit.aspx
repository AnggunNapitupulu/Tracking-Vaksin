<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="managemenrumahsakit.aspx.cs" Inherits="Vaksinku.managemenrumahsakit" %>
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
                           <h4>Managemen Status Pasien Vaksin</h4>
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
                        <label>NIK</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="NIKMasyarakat" runat="server" placeholder="NIK Masyarakat"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Status Vaksinasi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="StatusVaksinasi" runat="server" placeholder="Status Vaksinasi"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" OnClick="updateVaksin" runat="server"  Text="Update Status"  />
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
                           <h4>List Pendaftaran Vaksin</h4>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vaksinkuDBConnectionString2 %>" SelectCommand="SELECT [nama_lengkap], [email], [jadwal_vaksin], [jenis_vaksin], [NIK], [Pesan], [Status] FROM [tbl_Masyarakat]"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="gridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                         <Columns>
                             <asp:BoundField DataField="nama_lengkap" HeaderText="nama_lengkap" SortExpression="nama_lengkap" />
                             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                             <asp:BoundField DataField="jadwal_vaksin" HeaderText="jadwal_vaksin" SortExpression="jadwal_vaksin" />
                             <asp:BoundField DataField="jenis_vaksin" HeaderText="jenis_vaksin" SortExpression="jenis_vaksin" />
                             <asp:BoundField DataField="NIK" HeaderText="NIK" SortExpression="NIK" />
                             <asp:BoundField DataField="Pesan" HeaderText="Pesan" SortExpression="Pesan" />
                             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                         </Columns>
                     </asp:GridView>
                     </div>
               </div>
            </div>
         </div>
      </div>

</asp:Content>
