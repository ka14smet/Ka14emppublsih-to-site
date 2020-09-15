<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uilogin.aspx.cs" Inherits="_3tierka14employdetailsv2.uilogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 390px;
            border-color:blue;
            margin-left:8px;
                
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            width: 428px;
            height: 350px;
            top: 101px;
            bottom: 74px;
            left: 477px;
            right: 380px;
            position: absolute;
        }
        .auto-style5 {
            width: 408px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style4">
        <h1 style="color:darkblue;" class="auto-style2"><img src="WhatsApp Image 2020-08-30 at 11.59.05 AM (2).jpg" class="auto-style13" /><br />&nbsp;Software solutions</h1>
        <fieldset class="auto-style1"  >
            <legend style="border-radius:35px;"><b>Employee login</b>  </legend>
            <table class="auto-style5" >
                
                <tr>
                    <td class="auto-style3">EmployeeID:</td>
                    <td><asp:TextBox ID="txtid" runat="server" OnTextChanged="txtid_TextChanged"></asp:TextBox></td>
                   <td>      <asp:RequiredFieldValidator ID="rfvEmpName" runat="server" 
                                ErrorMessage="Emp ID cant be blank" ControlToValidate="txtid" Display="Dynamic" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password:</td>
                    <td><asp:TextBox ID="txtpswd" runat="server" TextMode="Password"></asp:TextBox></td>
                       <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Emp password cant be blank" ControlToValidate="txtpswd" Display="Dynamic" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click" />
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
