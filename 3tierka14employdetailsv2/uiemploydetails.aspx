<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uiemploydetails.aspx.cs" Inherits="_3tierka14employdetailsv2.uiemploydetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server"></asp:ScriptManager>
    <div>
        <fieldset style="width=400px">
            <legend style="border-radius=35px" >Employee Details</legend>
            
                
                   <h3> <asp:Label ID="lblid" runat="server" Text="" ForeColor="Black" Font-Size="Medium" ></asp:Label> 
                        <br />
                        <asp:Label ID="lblname" runat="server" Text="" ForeColor="Black" Font-Size="Large" Style="text-transform:uppercase" ></asp:Label>
                       <br />
                       <asp:Label ID="lbldesgn" runat="server" Text="" ForeColor="black" Font-Size="Small" Style="text-transform:capitalize" ></asp:Label>
                   </h3>
            <fieldset>
                <legend >Personal Detail</legend>
                <table>
                    <tr>
                        <td style="width:140px;text-align:left;">Employee ID :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblid1" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Employee Name :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblname1" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Date of Birth :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lbldob" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Gender :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblgender" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Blood Group :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblbldgrp" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Mobile.no1 :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblmobno1" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Mobile.no2 :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblmobno2" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Email ID :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblmail" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Address :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lbladrs" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Qualification :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblqal" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Designation :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lbldes" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </fieldset>
            <fieldset>
                <legend>Work Details</legend>
                <table>
                    <tr>
                        <td style="width:140px;text-align:left;">Projects Worked :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblprj" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Work Started :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblwrkstrt" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Work Completed :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lblwrkcmplt" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:left;">Training Programs :</td>
                        <td style="width:200px;text-align:center;"><asp:Label ID="lbltraining" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </fieldset>
            
            <table>

               <tr>
                        <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" /></td>
                        &nbsp;<br /><td>
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
