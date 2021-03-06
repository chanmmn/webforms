<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report1.aspx.cs" Inherits="Webform.report1" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" GroupTreeImagesFolderUrl="" 
                Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />


            <CR:CrystalReportSource runat="server" ID="CrystalReportSource1">
                <Report FileName="CrystalReport1.rpt"></Report>
            </CR:CrystalReportSource>
        </div>
    </form>
</body>
</html>
