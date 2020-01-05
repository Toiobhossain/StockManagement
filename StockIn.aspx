<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockIn.aspx.cs" Inherits="StockProduct.StockIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div style="text-align: center; background-color: royalblue; color: white; border-radius: 24px;">
        <h3 style="padding: 8px 0px"><i>Product Stock In</i></h3>
    </div>
    <br/>
    <div style="padding-left: 400px; background-color: darkkhaki; border-radius: 24px;">
        <br/>
    
        <table>
            <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Company"></asp:Label>

            </td>
                <td>
                    <asp:DropDownList ID="ddlCompany" runat="server" Width="250px" DataTextField="CompanyName" DataValueField="CompanyId" AutoPostBack="True" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged"></asp:DropDownList>
                    
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Item"></asp:Label>
                    </td>
                    <td>
                    <asp:DropDownList ID="ddlItems" runat="server" Width="250px" DataTextField="ItemName" DataValueField="Id" OnSelectedIndexChanged="ddlItems_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>

                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Reorder Level"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtreorder" runat="server" ForeColor="Black" Width="250px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Avaliable Quantity"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server"  ForeColor="Black" Width="250px" ReadOnly="True"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Stock In Quantity"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtStociIn" runat="server"  ForeColor="Black" Width="250px"></asp:TextBox>

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
