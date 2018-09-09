using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Practice.WinApp
{
    public delegate void SelectionMode(string Appmode);
    
    public partial class Form1 : Form
    {

        public event SelectionMode evs;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.GetItemText(comboBox1.SelectedItem) != "SELECT APP MODE")
            {
                if (string.IsNullOrEmpty(Config.AppMode))
                {
                    Config c = new Config(comboBox1.GetItemText(comboBox1.SelectedItem));
                    if (evs != null)
                    {
                        evs(comboBox1.GetItemText(comboBox1.SelectedItem));
                    }
                    this.Close();
                }
                
            }
        }

        void Form1_evs(string Appmode)
        {
            
        }

       
    }

   
    public class Config
    {
        private static string _mode = string.Empty;
        public static  string AppMode
        {
            get
            {
                return _mode;
            }
        }
        public Config(string AppMode)
        {
            _mode = AppMode;
        }
    }

    public abstract class Abc
    {
        public int Id { get; set; }
        public string Name { get; set; }
        protected int Total { get; set; }
        public Abc(int a)
        {
            this.Id = a;
            this.Name = "Scott";
        }
    }
    public class ChA : Abc
    {
        public int Id { get; set; }
        public int ChildProperty { get; set; }
        public ChA()
            : base(1)
        {
            this.Id = default(int);
            this.ChildProperty = default(int);

        }
    }

    public class ChB : ChA
    {
        public string Course { get; set; }
        public ChB()
        {
            this.Course = string.Empty;
        }
    }

}
