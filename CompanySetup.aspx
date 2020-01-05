<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompanySetup.aspx.cs" Inherits="StockProduct.CompanySetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div style="text-align: center; background-color: royalblue; color: white; border-radius: 24px;">
            <h3 style="padding: 8px 0px"><i>Company Setup</i></h3>
        </div>
        <br/>
        <div style="padding-left: 400px; background-color: darkkhaki; border-radius: 24px;">
            <br/>
    
                    <table>
                        <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Company Name" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompany" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>

                        </td>
                            </tr>
                   
                        <tr>
                            <td>

                            </td>
                            <td>
                                <br/>
                                <asp:Button ID="btnSave" class="btn btn-success" runat="server" Text="Save" style="width: 100px" OnClick="btnSave_Click"  />
                            </td>
                        </tr>

                       <tr>
                           <td>

                           </td>
                           <td>
                               <asp:Label ID="lblmsg" runat="server" Text=" " ForeColor="black"></asp:Label>

                           </td>
                       </tr>
            
            
                    </table>
            <br/>
            </div>
        <br/>
        <div style="background-color: aqua; border-radius: 24px;padding-left: 400px">
            <br/>
            <asp:GridView ID="CompanyGridview" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="361px" AutoGenerateColumns="False">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <%#Eval("CompanyId") %>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Name">
                        <ItemTemplate>
                            <%#Eval("CompanyName") %>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br>
        </div>

    </div>
    <br/>
</asp:Content>
