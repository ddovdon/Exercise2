<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTweet.aspx.cs" Inherits="UI.AddTweet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well"><asp:Label ID="lblMessage" runat="server"></asp:Label></div>                      
            <br />
    <div class="row">        
        <div class="col-md-4">
            </div>
        <div class="col-md-4">
    <div class="form-group">
                    <label class="control-label" for="txtDesc">Compose new Tweet</label>
                    <div class="form-group">
                      <asp:TextBox ID="txtDesc" class="form-control" placeholder="Tweet" runat="server" Rows="4" TextMode="MultiLine" MaxLength="140"></asp:TextBox>
                    </div>
                  </div> 

            <asp:Button ID="btnSave" runat="server" Text="Tweet" CssClass="btn btn-info" Width="150px" OnClick="btnSave_Click"/>

            </div>
        <div class="col-md-4">
            </div>
        </div>
</asp:Content>
