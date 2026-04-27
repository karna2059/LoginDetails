<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginDetails.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblusername" runat="server" Text="username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>                
<%--                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusername" ErrorMessage="username required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
<%--                  <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnupdate" runat="server" Text="update" OnClick="btnupdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btndelete" runat="server" Text="delete" OnClick="btndelete_Click" />
                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" Text="search" OnClick="btnsearch_Click" />

                        <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>


                    </td>


                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:DataGrid ID="grddata" runat="server"></asp:DataGrid>

                    </td>
                    <td>
                        <asp:GridView ID="grdview" runat="server" AllowPaging="true" PageSize="5" DataKeyNames="uid" AutoGenerateColumns="false" OnPageIndexChanging="grdview_PageIndexChanging1" OnRowCancelingEdit="grdview_RowCancelingEdit1" OnRowEditing="grdview_RowEditing1" OnRowUpdating="grdview_RowUpdating1" >
                            <Columns>
                                <asp:TemplateField HeaderText="username">
                                    <ItemTemplate>
                                        <asp:Label ID="lblusername" runat="server" Text='<%# Bind("username") %>'></asp:Label>

                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtusername" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>

                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpassword" runat="server" Text='<%# Bind("password") %>'></asp:Label>

                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtpassword" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                                    </EditItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                                        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" Text="update" CommandName="update" />
                                        <asp:Button ID="btncancel" runat="server" Text="cancel" CommandName="cancel" />
                                    </EditItemTemplate>


                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
