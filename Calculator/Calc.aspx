<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Calculator.Calc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #minus
        {
            width: 23px;
        }
        #div
        {
            width: 23px;
        }
        #sqrt
        {
            width: 29px;
        }
        #multiply
        {
            width: 25px;
        }
        #mod
        {
            width: 28px;
        }
        #equal
        {
            height: 25px;
            width: 27px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <input id="result" type="text" runat="server" align="left" value="0"
            style="text-align: right" maxlength="16" readonly="readonly" /><br />
        <br />
        <asp:Button id="num1" Text="1" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num2" Text="2" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num3" Text="3" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="plus" Text="+" runat="server" OnClick="GetOperand"/>
        &nbsp;<asp:Button id="mod" Text="mod" runat="server" OnClick="GetOperand"/>
        <br />
        <asp:Button id="num4" Text="4" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num5" Text="5" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num6" Text="6" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="minus" Text="-" runat="server" OnClick="GetOperand"/>
        &nbsp;<asp:Button id="sqrt" Text="sqrt" runat="server" OnClick="GetOperand"/>
        <br />
        <asp:Button id="num7" Text="7" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num8" Text="8" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="num9" Text="9" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="multiply" Text="*" runat="server" onclick="GetOperand"/>
        &nbsp;<asp:Button id="C" Text="C" runat="server" OnClick="Clear"/>
        <br />
        <asp:Button id="num0" Text="0" runat="server" OnClick="NumberClicked"/>
        &nbsp;<asp:Button id="comma" Text="," runat="server" OnClick="CommaClicked"/>
        &nbsp;<asp:Button id="equal" Text="=" runat="server" OnCLick="Equals"/>
        &nbsp;<asp:Button id="div" Text="/" runat="server" OnClick="GetOperand"/></form>
</body>
</html>
