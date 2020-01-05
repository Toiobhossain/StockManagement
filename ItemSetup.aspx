<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemSetup.aspx.cs" Inherits="StockProduct.ItemSetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div style="text-align: center; background-color: royalblue; color: white; border-radius: 24px;">
        <h3 style="padding: 8px 0px"><i>Item Setup</i></h3>
    </div>
    <br/>
    <div style="padding-left: 400px; background-color: darkkhaki; border-radius: 24px;">
        <br/>
    
        <table>
            <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Category"></asp:Label>

            </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="250px" DataTextField="CategoryName" DataValueField="CategoryId" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                    
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Company"></asp:Label>
                    </td>
                    <td>
                    <asp:DropDownList ID="ddlCompany" runat="server" Width="250px" DataTextField="CompanyName" DataValueField="CompanyId"></asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Item Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtitem" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Reorder Level"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtReorder" runat="server" value="0" ForeColor="Black" Width="250px"></asp:TextBox>

                </td>
            </tr>
                   
            <tr>
                <td>

                </td>
                <td>
                    <br/>
                    <asp:Button ID="btnSave" class="btn btn-success" runat="server" Text="Save" style="width: 100px" OnClick="btnSave_Click" />
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
    </div>
    <br/>

</asp:Content>
