<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practice.ASP_MultiLanguageApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ddlCity").change(function () {

                alert($(this).val());
                $("#Button1").val("ABCD");
            });


            var prm = Sys.WebForms.PageRequestManager.getInstance();

            prm.add_endRequest(function () {
                // re-bind your jQuery events here

                $("#ddlCity").change(function () {

                    alert($(this).val());
                    $("#Button1").val("ABCD");
                });
            });


        });
    </script>

</head>
<body>
     
    <form id="form1" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div>
  
            <asp:DropDownList ID="ddlCity" ClientIDMode="Static" runat="server" AutoPostBack ="false">

            </asp:DropDownList>
            <asp:Button ID="Button1" ClientIDMode="Static" runat="server" Text="Button" OnClick="Button1_Click"/>
       
    </div>
              </ContentTemplate>
    </asp:UpdatePanel>
    </form>

           
    
</body>
</html>
