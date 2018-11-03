<%@ Page Title="Tracking" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="ExerciseTracker.Members.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <h2>Tracking Page</h2>
    
        <h3> <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
       <strong> <asp:LoginName ID="LoginName" runat="server" /> </strong>
        (<asp:LoginStatus ID="LoginStatus" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/default.aspx" onloggingout="MasterLoginStatus_LoggingOut"/>)
 </h3>
       <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="table-responsive">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TrackingID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" PageSize="5">
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="Activity" HeaderText="Activity" SortExpression="Activity" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="CaloriesBurned" HeaderText="CaloriesBurned" SortExpression="CaloriesBurned" />
    </Columns>
    </asp:GridView>
     </div>
          </div>
        </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrackerConnectionString2 %>" DeleteCommand="DELETE FROM [TrackingVA] WHERE [TrackingID] = @TrackingID" InsertCommand="INSERT INTO [TrackingVA] ([UserName], [Activity], [Type], [CaloriesBurned]) VALUES (@UserName, @Activity, @Type, @CaloriesBurned)" ProviderName="<%$ ConnectionStrings:TrackerConnectionString2.ProviderName %>" SelectCommand="SELECT [TrackingID], [UserName], [Activity], [Type], [CaloriesBurned] FROM [TrackingVA]" UpdateCommand="UPDATE [TrackingVA] SET [UserName] = @UserName, [Activity] = @Activity, [Type] = @Type, [CaloriesBurned] = @CaloriesBurned WHERE [TrackingID] = @TrackingID">
        <DeleteParameters>
            <asp:Parameter Name="TrackingID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Activity" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="CaloriesBurned" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Activity" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="CaloriesBurned" Type="Int32" />
            <asp:Parameter Name="TrackingID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
        
    <div class="inner">
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="TrackingID" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="TrackingID" HeaderText="TrackingID" InsertVisible="False" ReadOnly="True" SortExpression="TrackingID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Activity" HeaderText="Activity" SortExpression="Activity" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="CaloriesBurned" HeaderText="CaloriesBurned" SortExpression="CaloriesBurned" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
     </asp:DetailsView>
        </div>
   
 

</asp:Content>

