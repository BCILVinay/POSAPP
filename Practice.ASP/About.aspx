<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Practice.ASP_MultiLanguageApp.About" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <Triggers>
            <asp:AsyncPostBackTrigger ControlID ="TextBox1" EventName ="TextChanged" />
             <%--<asp:AsyncPostBackTrigger ControlID ="Button1" EventName ="Click" />--%>
        </Triggers>
        <ContentTemplate>
            <div id="dvUpdatePanel">
                <asp:TextBox ID="TextBox1"  runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                
            </div>

        </ContentTemplate>
      

    </asp:UpdatePanel>
    <asp:Button ID="Button1" runat="server" Text="OK " OnClick ="Button1_Click" />
    <input type ="text"  id ="txt1" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="OrderId">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("OrderId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderDate">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("OrderDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustomerId">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("CustomerId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CompanyName">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Bind("CompanyName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EmmployeeName">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("EmployeeName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <PagerStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />

    </asp:GridView>

    <div>
        <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView2_RowDataBound"></asp:GridView>
        <div id="dvGridEmployee">


            <asp:GridView ID="gridEmployee" runat="server" AutoGenerateColumns="False" EmptyDataText="N/A" GridLines="Horizontal" OnRowDataBound="gridEmployee_RowDataBound" ShowFooter="True" OnRowCreated="gridEmployee_RowCreated">
                <Columns>
                    <asp:TemplateField HeaderText="EmployeeId">
                        <ItemTemplate>
                            <asp:Label ID="lblEmployeeId" runat="server" Text='<%# Bind("EmployeeId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmployeeName">
                        <ItemTemplate>
                            <asp:Label ID="lblEmployeeName" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Job">
                        <ItemTemplate>
                            <asp:Label ID="lblJob" runat="server" Text='<%# Bind("Job") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary">
                        <ItemTemplate>
                            <asp:Label ID="lblSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#CCCCCC" />
                <EmptyDataRowStyle BackColor="#FFFF99" />
                <EmptyDataTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("EmployeeId") %>'></asp:Label>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#999999" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
                <PagerSettings Position="Top" />
            </asp:GridView>
        </div>
    </div>
    <div>
        <input type="button" id="btnPrint" name="btnPrint" value="Print Employee Grid" />
    </div>
   





    <script type="text/javascript">
        $(document).ready(function () {

            $("#btnPrint").click(function () {
                var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
                var tables = createTables(10);
                prtwin.document.write()
                prtwin.document.write(tables);
                prtwin.document.close();
                document.getElementsByTagName("table").style, pageBreakInside = "always";
                prtwin.focus();
                prtwin.print();

                prtwin.close();
            });

            function printTable() {
                var tables = createTables(10);
                $("#printTables").html(tables);
            }

            function createTables(rowsPerTable) {
                //var rowsInParentTable = $("MainContent_gridEmployee table tbody tr").toArray();
                var rowsInParentTable = $("#MainContent_gridEmployee > tbody ");
                var table = document.getElementById("MainContent_gridEmployee");
                console.clear();
                console.log(rowsInParentTable.html());

                var subTable = "<table>", subRows = [], sr = 0;

                for (i = 0; i < table.rows.length; i++) {
                    if (i == 0) {
                        subTable += "<thead><tr>" + table.rows[i].innerHTML + "</tr></thead>";
                    }
                    else {
                        subTable += "<tr>" + table.rows[i].innerHTML + "</tr>";
                    }


                    if (i % rowsPerTable === 0 && (i > rowsPerTable || i + 1 > rowsPerTable)) {
                        subTable += "</table> <hr />" + "<table><thead> <tr> " + table.rows[0].innerHTML + "</tr></thead>";


                    }
                }
                return subTable;
            }

        });

    </script>
    <style type="text/css">
        @page {
            size: auto; /* auto is the initial value */
            margin: 2mm 4mm 6mm 6mm; /* this affects the margin in the printer settings */
        }

        thead {
            display: table-header-group;
        }
    </style>
</asp:Content>
