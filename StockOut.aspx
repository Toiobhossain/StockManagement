<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockOut.aspx.cs" Inherits="StockProduct.StockOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div style="text-align: center; background-color: royalblue; color: white; border-radius: 24px;">
        <h3 style="padding: 8px 0px"><i>Product Stock Out</i></h3>
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
                    <asp:DropDownList ID="ddlCompany" runat="server" Width="250px" DataTextField="CompanyName" DataValueField="CompanyName"></asp:DropDownList>
                    
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Item"></asp:Label>
                    </td>
                    <td>
                    <asp:DropDownList ID="ddlItems" runat="server" Width="250px" DataTextField="ItemName" DataValueField="ItemName" ></asp:DropDownList>

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
                    
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Stock out Quantity"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtStocOut" runat="server"  ForeColor="Black" Width="250px"></asp:TextBox>

                </td>
            </tr>
                   
            <tr>
                <td>

                </td>
                <td>
                    <br/>
                    <asp:Button ID="btnAdd" class="btn btn-success" runat="server" Text="ADD" style="width: 100px" OnClick="btnSave_Click" />
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
         <div style="background-color: aquamarine; border-radius: 24px;padding-left: 300px">
             <br/>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="671px">
                 <AlternatingRowStyle BackColor="#DCDCDC" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
                 <Columns>
                     <asp:TemplateField HeaderText="SL">
                         <ItemTemplate>
                             <%#Eval("StockId") %>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Company">
                         <ItemTemplate>
                             <%#Eval("Company") %>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Item">
                         <ItemTemplate>
                             <%#Eval("Item") %>
                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Quantity">
                         <ItemTemplate>
                             <%#Eval("Quantity") %>
                         </ItemTemplate>

                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
             <br/>
             <asp:Button ID="btnSell" class="btn btn-success" runat="server" Text="Sell" style="width: 100px" OnClick="btnSell_Click" />
             <asp:Button ID="btnDamage" class="btn btn-success" runat="server" Text="Damage" style="width: 100px" />
             <asp:Button ID="btnLost" class="btn btn-success" runat="server" Text="Lost" style="width: 100px" />
             <br/>
         </div>
    </div>
    <br/>
</asp:Content>
