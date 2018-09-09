using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice.ASP_MultiLanguageApp
{
    public partial class About : Page
    {
        public int TotalSalary = 0;
        public int LastRow = 0;
        public int jobWiseRow = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            var x = TestReaderNextResultSetConcept();
            GridView1.DataSource = x;
            GridView1.DataBind(); ;
            this.GridView2.DataSource = GetStudentDetails();
            this.GridView2.DataBind();
            var y = Employee.GetAllEmployee;
            gridEmployee.DataSource = y;
            gridEmployee.DataBind();
        }

        private List<Order> TestReaderNextResultSetConcept()
        {
            List<Order> orders = new List<Order>();
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;

                        cmd.CommandText = "USP_GetOrder";
                        cmd.CommandType = CommandType.StoredProcedure;

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        try
                        {

                            while (reader.Read())
                            {
                                Order order = new Order();
                                order.OrderId = reader["OrderId"] == DBNull.Value ? null : (Int32?)(reader["OrderId"]);
                                order.OrderDate = reader["OrderDate"] == DBNull.Value ? null : (DateTime?)(reader["OrderDate"]);
                                order.CustomerId = reader["CustomerId"] == DBNull.Value ? null : (Int32?)(reader["CustomerId"]);
                                order.CompanyName = reader["CompanyName"] == DBNull.Value ? string.Empty : Convert.ToString(reader["CompanyName"]);
                                order.EmployeeName = reader["EmployeeName"] == DBNull.Value ? string.Empty : Convert.ToString(reader["EmployeeName"]);
                                orders.Add(order);
                            }

                        }
                        catch (Exception)
                        {
                        }
                    }
                }
            }

            catch (Exception ex)
            {
                string str = ex.Message;

            }
            return orders;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label lblOrderDate = (Label)row.FindControl("Label2");
                DateTime dtOrderDate;
                if (DateTime.TryParse(lblOrderDate.Text, out dtOrderDate))
                {
                    lblOrderDate.Text = dtOrderDate.ToString("dd/MM/yyyy");
                }
                else
                {
                    lblOrderDate.Text = string.Empty;
                }

            }
        }

        private static List<Student> GetStudentDetails()
        {
            try
            {
                #region Dtudent Details
                List<Student> students = new List<Student>()
                {
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                    new Student { StudentName ="S1" , Course ="C1" , Country ="India" , StudentAddresh =new Addresh{ State ="M.P." , Distt ="Rewa"} },
                };
                #endregion
                return students;
            }
            catch (Exception ex)
            {

            }
            return new List<Student>();
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            if (row.RowType == DataControlRowType.Header)
            {
                if (row.Cells[0].Text == "StudentId")
                {
                    row.Cells.Remove(row.Cells[0]);
                    GridViewRow gvHeader = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);
                    TableCell headerCell0 = new TableCell()
                     {
                         Text = "Age Group",
                         HorizontalAlign = HorizontalAlign.Center,
                         RowSpan = 2
                     };
                    TableCell headerCell1 = new TableCell()
                     {
                         Text = "No. Of Employees",
                         HorizontalAlign = HorizontalAlign.Center,
                         ColumnSpan = 4
                     };
                    gvHeader.Cells.Add(headerCell0);
                    gvHeader.Cells.Add(headerCell1);
                    GridView1.Controls[0].Controls.AddAt(0, gvHeader);
                }

            }
            if (row.RowType == DataControlRowType.DataRow)
            {

            }

        }


        public class Order
        {
            public int? OrderId { get; set; }

            public DateTime? OrderDate { get; set; }

            public int? CustomerId { get; set; }

            public string CompanyName { get; set; }

            public string EmployeeName { get; set; }
        }

        internal class Student
        {
            private static int _StudentId = 0;
            public Student()
            {
                lock (this)
                {
                    _StudentId = _StudentId + 1;
                    this.StudentId = _StudentId;
                }
            }
            public int StudentId { get; private set; }
            public string StudentName { get; set; }
            public string Course { get; set; }
            public string Country { get; set; }
            public Addresh StudentAddresh { get; set; }
        }
        public class Addresh
        {
            public string State { get; set; }
            public string Distt { get; set; }
        }


        public enum Job
        {
            Software = 1,
            Hardware = 2,
            Networking = 3
        }

        public class Employee
        {
            public int EmployeeId { get; set; }
            public string EmployeeName { get; set; }
            public Job Job { get; set; }
            public decimal Salary { get; set; }
            private static List<Employee> _employees;

            private static List<Employee> Employees()
            {
                _employees = new List<Employee>();
                for (int i = 1; i < 100; i++)
                {
                    if (i <= 45)
                    {
                        _employees.Add(new Employee
                        {
                            EmployeeId = i,
                            EmployeeName = "Emp00" + i,
                            Job = Job.Software,
                            Salary = 100 * i
                        });

                    }
                    else if (i > 45 && i <= 75)
                    {
                        _employees.Add(new Employee
                        {
                            EmployeeId = i,
                            EmployeeName = "Emp00" + i,
                            Job = Job.Hardware,
                            Salary = 100 * i
                        });
                    }
                    else
                    {
                        _employees.Add(new Employee
                      {
                          EmployeeId = i,
                          EmployeeName = "Emp00" + i,
                          Job = Job.Networking,
                          Salary = 100 * i
                      });
                    }

                }
                return _employees;
            }
            public static List<Employee> GetAllEmployee
            {
                get
                {
                    return Employees();
                }
            }
        }

        protected void gridEmployee_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label job = row.FindControl("lblJob") as Label;
                if (job.Text.ToUpper() == "SOFTWARE")
                {
                    Label lblSalary = row.FindControl("lblSalary") as Label;
                    if (lblSalary != null)
                    {
                        TotalSalary = TotalSalary + Convert.ToInt32(lblSalary.Text);
                    }
                }
                else if (job.Text.ToUpper() == "HARDWARE")
                {
                    Label lblSalary = row.FindControl("lblSalary") as Label;
                    if (lblSalary != null)
                    {
                        TotalSalary = TotalSalary + Convert.ToInt32(lblSalary.Text);
                    }
                }
                else if (job.Text.ToUpper() == "NETWORKING")
                {
                    Label lblSalary = row.FindControl("lblSalary") as Label;
                    if (lblSalary != null)
                    {
                        TotalSalary = TotalSalary + Convert.ToInt32(lblSalary.Text);
                    }
                }
            }
            RowCreate(e.Row);

        }


        private void RowCreate(GridViewRow Row)
        {
            GridViewRow row1 = Row;
            Label lblJob = row1.FindControl("lblJob") as Label;

            var JobWiseSalary = from p in Employee.GetAllEmployee
                                group p by p.Job into g
                                select new { Job = g.Key, TotalEmployee = g.Count() };

            var results = Employee.GetAllEmployee.GroupBy(
p => p.Job,
p => p.Salary,
(key, g) => new { Job = key, TotalSalary = g.Count() });

            if (row1.RowType == DataControlRowType.DataRow)
            {
                LastRow = LastRow + 1;
                GridViewRow NewHeader = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                NewHeader.Font.Bold = true;
                NewHeader.CssClass = "heading";
                NewHeader.BorderStyle = BorderStyle.Solid;
                
                //Item#
                TableCell NewHeaderCell1 = new TableCell();
                NewHeaderCell1.Text = "";
                NewHeaderCell1.HorizontalAlign = HorizontalAlign.Left;
                NewHeader.Cells.Add(NewHeaderCell1);

                //Item#
                TableCell NewHeaderCell2 = new TableCell();

                

                NewHeaderCell2.HorizontalAlign = HorizontalAlign.Left;

                //NewHeaderCell2.BorderStyle = BorderStyle.Solid;
                //NewHeaderCell2.BorderWidth = new Unit(2);
                //NewHeaderCell2.BorderColor = System.Drawing.Color.Black;

                //Amount
                TableCell NewHeaderCell3 = new TableCell();

                NewHeaderCell3.HorizontalAlign = HorizontalAlign.Right;

                //NewHeaderCell3.BorderStyle = BorderStyle.Solid;
                //NewHeaderCell3.BorderWidth = new Unit(2);
                //NewHeaderCell3.BorderColor = System.Drawing.Color.Black;

                TableCell NewHeaderCell4 = new TableCell();

                NewHeaderCell4.HorizontalAlign = HorizontalAlign.Right;

                //NewHeaderCell4.BorderStyle = BorderStyle.Solid;
                //NewHeaderCell4.BorderWidth = new Unit(2);
                //NewHeaderCell4.BorderColor = System.Drawing.Color.Black;
                NewHeader.Cells.Add(NewHeaderCell4);
                if ("SOFTWARE" == lblJob.Text.ToUpper())
                {
                    jobWiseRow = jobWiseRow + 1;
                    if (results.Where(p => p.Job.ToString().ToUpper() == "SOFTWARE").Count() > 0 && results.FirstOrDefault(p => Convert.ToString(p.Job).ToUpper() == "SOFTWARE").TotalSalary == jobWiseRow)
                    {
                        NewHeaderCell2.Text = "Total Software Salary:";
                        NewHeaderCell3.Text = Convert.ToString(Employee.GetAllEmployee.FindAll(p => Convert.ToString(p.Job).ToUpper() == "SOFTWARE").Sum(s => s.Salary));
                        NewHeader.Cells.Add(NewHeaderCell2);
                        NewHeader.Cells.Add(NewHeaderCell3);
                        gridEmployee.Controls[0].Controls.Add(NewHeader);
                        jobWiseRow = 0;
                    }
                }
                else if ("HARDWARE" == lblJob.Text.ToUpper())
                {
                    jobWiseRow = jobWiseRow + 1;
                    if (results.Where(p => p.Job.ToString().ToUpper() == "HARDWARE").Count() > 0 && results.FirstOrDefault(p => Convert.ToString(p.Job).ToUpper() == "HARDWARE").TotalSalary == jobWiseRow)
                    {
                        NewHeaderCell2.Text = "Total HARDWARE Salary:";
                        NewHeaderCell3.Text = Convert.ToString(Employee.GetAllEmployee.FindAll(p => Convert.ToString(p.Job).ToUpper() == "HARDWARE").Sum(s => s.Salary));
                        NewHeader.Cells.Add(NewHeaderCell2);
                        NewHeader.Cells.Add(NewHeaderCell3);
                        gridEmployee.Controls[0].Controls.Add(NewHeader);
                        jobWiseRow = 0;
                    }
                }
                else if ("NETWORKING" == lblJob.Text.ToUpper())
                {
                    jobWiseRow = jobWiseRow + 1;

                    if (results.Where(p => p.Job.ToString().ToUpper() == "NETWORKING").Count() > 0 && results.FirstOrDefault(p => Convert.ToString(p.Job).ToUpper() == "NETWORKING").TotalSalary == jobWiseRow)
                    {
                        NewHeaderCell2.Text = "Total NETWORKING Salary:";
                        NewHeaderCell3.Text = Convert.ToString(Employee.GetAllEmployee.FindAll(p => Convert.ToString(p.Job).ToUpper() == "NETWORKING").Sum(s => s.Salary));
                        NewHeader.Cells.Add(NewHeaderCell2);
                        NewHeader.Cells.Add(NewHeaderCell3);
                        gridEmployee.Controls[0].Controls.Add(NewHeader);
                        jobWiseRow = 0;
                    }
                }
                if (Employee.GetAllEmployee.Count == LastRow)
                {
                    GridViewRow newRow = new GridViewRow(0, 0, DataControlRowType.DataRow, DataControlRowState.Insert);
                    newRow.Font.Bold = true;
                    newRow.BorderStyle = BorderStyle.Solid;
                    newRow.BorderWidth = new Unit(1);
                    TableCell tblcell1 = new TableCell();
                    TableCell tblcell2 = new TableCell();
                    TableCell tblcell3 = new TableCell();
                    TableCell tblcell4 = new TableCell();

                    tblcell3.Text = "Total Salary:";
                    tblcell4.Text = Convert.ToString(TotalSalary);
                    newRow.Cells.Add(tblcell1);
                    newRow.Cells.Add(tblcell2);
                    newRow.Cells.Add(tblcell3);
                    newRow.Cells.Add(tblcell4);
                    gridEmployee.Controls[0].Controls.Add(newRow);

                }
            }
        }


        protected void gridEmployee_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            var ccc = 890;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "FFFF";
            string stry = string.Empty;

        }

    }

}
