<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uiemploydetails.aspx.cs" Inherits="_3tierka14employdetailsv2.uiemploydetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server"></asp:ScriptManager>
    <div>
        <fieldset style="width=400px">
            <legend style="border-radius=35px" >Employee Details</legend>
            <table>
                <tr>
                    <td><asp:Label ID="lblid" runat="server" Text="" ForeColor="Blue"></asp:Label></td>
                    <td><asp:Label ID="lblname" runat="server" Text="" ForeColor="Blue" ></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <br />
                <tr>
                    <td>
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
                        &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbltime" runat="server" Text="" ForeColor="DeepSkyBlue"></asp:Label> 
                    </td>
                    
                </tr>
                <tr>
                    <td><asp:Timer  ID="sestimer" runat="server" Interval="65000" ></asp:Timer></td>
                </tr>



            </table>

        </fieldset>
    
    </div>
    </form>
</body>
</html>
