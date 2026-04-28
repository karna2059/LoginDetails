<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerform.aspx.cs" Inherits="LoginDetails.registerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>
                        <h1>Register Form</h1>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblfirstname" runat="server" Text="firstname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfirstname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvfirstname" runat="server" ControlToValidate="txtfirstname" ErrorMessage="please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revfirstname" runat="server" ControlToValidate="txtfirstname" ErrorMessage="please enter in alphabits" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbllastname" runat="server" Text="lastname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlastname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ControlToValidate="txtlastname" ErrorMessage="please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblemail" runat="server" Text="email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="please enter email" ForeColor="Red"></asp:RequiredFieldValidator>


                        <asp:RegularExpressionValidator ID="rfvemail1" runat="server" ControlToValidate="txtemail" ErrorMessage="please enter correctly" ForeColor="#993300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblconformpassword"  runat="server" Text="confrompassword"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconformpassword" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvconformpassword" runat="server" ControlToValidate="txtconformpassword" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmvconformpassword" runat="server" ControlToValidate="txtconformpassword" ControlToCompare="txtpassword" ErrorMessage="please enter same password"></asp:CompareValidator>

                        

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmobilenumber" runat="server" Text="mobile number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmobilenumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvmobilenumber" runat="server" ControlToValidate="txtmobilenumber" ErrorMessage="please enter phonenumber" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="revmobilenumber" runat="server" ControlToValidate="txtmobilenumber" ErrorMessage="please enter correct mobile number" ValidationExpression="^[0-9]{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblgender" runat="server" Text="gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rdbmale" runat="server" Text="male" />
                        <asp:RadioButton ID="rdbfemale" runat="server" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcourses" runat="server" Text="courses"></asp:Label>
                    </td>
                    <td>
                      <asp:CheckBoxList ID="chkcourses" runat="server">
                          <asp:ListItem>java</asp:ListItem>
                          <asp:ListItem>.Net</asp:ListItem>
                          <asp:ListItem>Python</asp:ListItem>
                          <asp:ListItem>c</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlday" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlmonth" runat="server">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlyear" runat="server">
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnbutton" runat="server" Text="submit" OnClick="btnbutton_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grdview" runat="server" AllowPaging="true" PageSize="5" DataKeyNames="uid" AutoGenerateColumns="false" OnPageIndexChanging="grdview_PageIndexChanging" OnRowEditing="grdview_RowEditing" OnRowCancelingEdit="grdview_RowCancelingEdit" OnRowUpdating="grdview_RowUpdating" OnRowDeleting="grdview_RowDeleting">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblfirstname" runat="server" Text='<%# Bind("firstname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtusername" runat="server" Text='<%# Bind("firstname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lbllastname" runat="server" Text='<%# Bind("lastname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                          <asp:TextBox ID="txtlastname" runat="server" Text='<%# Bind("lastname") %>'></asp:TextBox>

                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblemail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblpassword" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtpassword" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblconformpasswoed" runat="server" Text='<%# Bind("conformpassword") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtconfrompassword" runat="server" Text='<%# Bind("conformpassword") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblmobilenumber" runat="server" Text='<%# Bind("mobilenumber") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtmobilenumber" runat="server" Text='<%# Bind("mobilenumber") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblgender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtgender" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblcourses" runat="server" Text='<%# Bind("courses") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtcourses" runat="server" Text='<%# Bind("courses") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lbldob" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtdob" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnedit" runat="server" Text="edit" CommandName="edit" />
                                        <asp:Button ID="btndelete" runat="server" Text="delete" CommandName="delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" Text="update" CommandName="update" />
                                        <asp:Button ID="btncancel" runat="server" Text="cancel" CommandName="cancel" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                    



                            </Columns>




                        </asp:GridView>
                    </td>
                    <td>
                    </td>
                </tr>

            </table>
        </div>
    </form>
        </body>
</html>
