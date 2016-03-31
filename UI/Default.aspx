<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       

    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="lblFollowingCount" runat="server" Text="Following"></asp:Label>
            <asp:Label ID="lblFollowersCount" runat="server" Text="Followers"></asp:Label>
            <asp:Label ID="lblTweetsCount" runat="server" Text="Tweets"></asp:Label>
            <h4>Trends · Change</h4>
            <p>             


    #IndvsWI
    256K Tweets
    Ronnie Corbett
    104K Tweets
    #abc730
    Trending for 7 hours now
    #COAG
    Started trending in the last hour
    Zaha Hadid
    52.2K Tweets
    Ivy Park
    39.2K Tweets
    #Miitomo
    25.8K Tweets
    #5SOSFam
    3.52M Tweets
    Kohli
    96.8K Tweets
    April Fools
    127K Tweets


            </p>
        </div>
        <div class="col-md-6">
            <h4>Tweets</h4>
            
            <asp:ListView ID="ListViewZar" runat="server">
           <ItemTemplate>
               <%--<div class="table-responsive">--%>
            <table id="Table1" border="0" runat="server">
            <tr><td><%# Eval("TweetID") %></td><td><%# Eval("UserID") %></td></tr>
            <tr>
                <td>
                    <asp:HyperLink CssClass="link2"
                        ID="lnkName"
                        Text='<%# DataBinder.Eval(Container.DataItem,"Message")%>'
                        NavigateUrl='<%#Eval("TweetID","TweetDetail.aspx?mode=0&id={0}")%>'
                        runat="server" />
                </td>
            </tr>
             </table>
                   <%--</div>--%>
               <%--<div class="table-responsive">--%>
            <table id="Table2" border="0" runat="server">
            <tr>             
                
                <td>&nbsp;Posting Date:&nbsp;<asp:Label ID="lblPostingDate" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PostingDate","{0:yyyy-MM-dd}")%>' />&nbsp;</td>                
            </tr>
        </table>
                   <%--</div>--%>
    </ItemTemplate>
           <ItemSeparatorTemplate>
          <hr />
        </ItemSeparatorTemplate>
       </asp:ListView><%--<br />--%>
                    
       <div id="divPager" runat="server" style="align-items:center; text-align: center;" Class="pager">
       <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListViewZar" OnPreRender="DataPager1_PreRender" PageSize="10">
           <Fields>
               <%--<asp:NumericPagerField />  
               <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="Эхлэл" LastPageText="Төгсгөл" NextPageText="Дараах" PreviousPageText="Өмнөх" ShowFirstPageButton="True" ShowLastPageButton="True" /> 
               <asp:NumericPagerField ButtonCount="10" PreviousPageText="<-" NextPageText="->" />--%>  
               
               <asp:TemplatePagerField>
                  <PagerTemplate>
                    &nbsp;
                    <asp:TextBox ID="CurrentRowTextBox" runat="server"
                         AutoPostBack="true"
                         Text="<%# Container.StartRowIndex + 1%>" 
                         Columns="1" 
                         style="text-align:right" 
                         OnTextChanged="CurrentRowTextBox_OnTextChanged" />
                    -
                    <asp:Label ID="PageSizeLabel" runat="server" Font-Bold="false"
                         Text="<%# Container.StartRowIndex + Container.PageSize > Container.TotalRowCount ? Container.TotalRowCount : Container.StartRowIndex + Container.PageSize %>" />
                    /
                    <asp:Label ID="TotalRowsLabel" runat="server" Font-Bold="false"
                         Text="<%# Container.TotalRowCount %>" />
                  </PagerTemplate>
                </asp:TemplatePagerField>
                <asp:NextPreviousPagerField 
                     ShowFirstPageButton="true" ShowLastPageButton="true"
                     FirstPageText="|&laquo; " LastPageText=" &raquo;|"
                     NextPageText=" › " PreviousPageText=" ‹ " />
           </Fields>
       </asp:DataPager>          
        
        </div>
        </div>
        <div class="col-md-3">
            <h4>Who to follow</h4>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
