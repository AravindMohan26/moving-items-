<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS"
    EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:ListBox ID="lstLeft" runat="server" SelectionMode="Multiple" Width="80">
                    <asp:ListItem Text="Apple" Value="Apple" />
                    <asp:ListItem Text="Mango" Value="Mango" />
                    <asp:ListItem Text="Grapes" Value="Grapes" />
                    <asp:ListItem Text="Pineapple" Value="Pineapple" />
                    <asp:ListItem Text="Guava" Value="Guava" />
                    <asp:ListItem Text="Cherry" Value="Cherry" />
                    <asp:ListItem Text="Banana" Value="Banana" />
                    <asp:ListItem Text="Papaya" Value="Papaya" />
                </asp:ListBox>
            </td>
            <td>
                <input type="button" id="left" value="<<" />
                <input type="button" id="right" value=">>" />
            </td>
            <td>
                <asp:ListBox ID="lstRight" runat="server" SelectionMode="Multiple" Width="80"></asp:ListBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="Submit" />
   <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
    <script src="jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#left").bind("click", function () {
                var options = $("[id*=lstRight] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=lstLeft]").append(opt);
                }
            });
            $("#right").bind("click", function () {
                var options = $("[id*=lstLeft] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=lstRight]").append(opt);
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("[id*=btnSubmit]").bind("click", function () {
                $("[id*=lstLeft] option").attr("selected", "selected");
                $("[id*=lstRight] option").attr("selected", "selected");
            });
        });
    </script>
    </form>
</body>
</html>
