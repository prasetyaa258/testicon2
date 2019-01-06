<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GarudaWEB.Register" MasterPageFile="~/Garuda.Master" %>



<asp:Content ID="register_content" ContentPlaceHolderID="GarudaContent" runat="server">
        <h1>Registrasi FORM</h1>
    <div>
      <table>
            <tr>
                <td style="width: 229px">
                    <asp:Label ID="label1" runat="server" Text="Username"></asp:Label><br/>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
                <td style="width: 255px">
                    <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username Harus Diisi" ControlToValidate="username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 229px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br/>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 255px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Harus Diisi" ControlToValidate="password"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 229px; height: 45px;">
                    <asp:Label ID="Label3" runat="server" Text="Konfirmasi Password"></asp:Label><br/>
                    <asp:TextBox ID="confpasword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 255px; height: 45px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confpasword"
                        ErrorMessage="Konfirmasi Password Harus Diisi" Width="254px"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Tidak Sama" ControlToCompare="password" ControlToValidate="confpasword"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 229px">
                    <asp:Label ID="Label4" runat="server" Text="E-Mail"></asp:Label><br/>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
                <td style="width: 255px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="E-Mail Harus Diisi" ControlToValidate="email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                        ErrorMessage="Masukkan E-Mail yang Benar" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="248px"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 229px">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label><br/>
                    <asp:DropDownList ID="gender" runat="server">
                        <asp:ListItem>Pilih Gender</asp:ListItem>
                        <asp:ListItem>Pria</asp:ListItem>
                        <asp:ListItem>Wanita</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 255px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Pilih Salah Satu Gender" ControlToValidate="gender" InitialValue="Pilih Gender"></asp:RequiredFieldValidator></td>
            </tr>
            
             <tr>
                <td style="width: 229px">
                 <asp:Label ID="Label6" runat="server" Text="Alamat"></asp:Label><br/>
                 <asp:TextBox ID="txtalamat" runat="server"></asp:TextBox>
               <%--   <textarea id="txtalamat" name="alamat" cols="28" rows="8"></textarea>
                   <span id="hitung">100</span> Karakter Tersisa.--%>
                </td>
                <td style="width: 255px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Pilih Salah Satu Gender" ControlToValidate="gender" InitialValue="Pilih Gender"></asp:RequiredFieldValidator></td>
            </tr>
            
            <tr>
                <td style="width: 229px; height: 34px;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Daftar" Text="Daftar" /></td>
                <td style="width: 255px; height: 34px;">
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>
        </table>
    </div>  
    </asp:Content>
