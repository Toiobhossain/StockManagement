<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cetagory.aspx.cs" Inherits="StockProduct.Cetagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div style="text-align: center; background-color: royalblue; color: white; border-radius: 24px;">
            <h3 style="padding: 8px 0px"><i>Category Setup</i></h3>
        </div>
        <br/>
        <div style="padding-left: 400px; background-color: darkkhaki; border-radius: 24px;">
            <br/>
    
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblcategory" runat="server" Text="Category ID" ForeColor="Black"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcode" runat="server"  Width="250px"></asp:TextBox>

                            </td>

                        </tr>
                        <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Category Name" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCategory" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>

                        </td>
                            </tr>
                   
                        <tr>
                            <td>

                            </td>
                            <td>
                                <br/>
                                <asp:Button ID="btnSave" class="btn btn-success" runat="server" Text="Save" style="width: 100px" OnClick="btnSave_Click" />
                                <asp:Button ID="btnUpdate" class="btn btn-success" runat="server" Text="Update" style="width: 100px;" OnClick="btnUpdate_Click"  />
                                <asp:Button ID="btnUpdateCategory" class="btn btn-success" runat="server" Text="Update" style="width: 100px;" OnClick="btnUpdateCategory_Click"/>
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
            <asp:GridView ID="CategoryGridview" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="361px" AutoGenerateColumns="False">
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
                            <%#Eval("CategoryId") %>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("CategoryName") %>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br>
        </div>

    </div>
    <br/>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script src="scripts/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#form1').validate({
                rules: {
                    category: {
                        required: true
                    }
                    

                },
                messages: {
                    category: {
                        required: "Category File is Required"
                    }
                }
            });

        });
    </script>
</asp:Content>

