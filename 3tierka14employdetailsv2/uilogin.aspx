<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uilogin.aspx.cs" Inherits="_3tierka14employdetailsv2.uilogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 305px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset class="auto-style1"  >
            <legend style="border-radius:35px">Employee login  </legend>
            <table style="position:center" border-radius="35px" >
                
                <tr>
                    <td>EmployeeID*</td>
                    <td><asp:TextBox ID="txtid" runat="server" OnTextChanged="txtid_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password*</td>
                    <td><asp:TextBox ID="txtpswd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="label1" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </fieldset>
    
    </div>
    </form>

</body>
</html>
