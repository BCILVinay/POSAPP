using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Practice.WinApp
{
    public partial class frmmain : Form
    {
        private static string AppMode = string.Empty;
        private static Form1 fm = default(Form1);

        public frmmain()
        {
            InitializeComponent();
        }

        private void frmmain_Load(object sender, EventArgs e)
        {
            //Thread th = new Thread(Test1);
            //th.Start();
            //Thread th1 = new Thread(new ParameterizedThreadStart(Test));
            //th1.Start(1);
            //if (string.IsNullOrEmpty(AppMode))
            //{

            //    fm= new Form1();
            //    fm.evs += o_evs;
            //    fm.ShowDialog();
            //}

            var total = 100d;
            var batchSize = 10;
            List<int> finalData = new List<int>();

            int count = (int)Math.Ceiling(total / batchSize);

            var mainWork = new Task<List<int>>[count];
            for (int i = 0; i < count; i++)
            {
                var start = (batchSize * i) + 1;
                var end = start + batchSize;
                Task<List<int>> task = new Task<List<int>>(() => { return Data(start, end); });
                //Task<List<int>> task = Task<List<int>>.Factory.StartNew(() => { return Data(start, end); });
                task.Start();
                mainWork[i] = (task);
            }

            Task.WaitAll(mainWork);

            for (int i = 0; i < mainWork.Length; i++)
            {
                finalData.AddRange(mainWork[i].Result);
            }
            //tatati
        }


        private List<int> Data(int start, int end)
        {
            List<int> data = new List<int>();
            for (int i = start; i < end; i++)
            {
                data.Add(i);
            }

            return data;
        }




        private void Test(object x)
        {
            int a = (int)x;
            while (a <= 10)
            {
                a = a + 1;
                if (a == 10)
                {
                    a = 1;
                }
                if (label1.InvokeRequired)
                {
                    label1.BeginInvoke(new Action(() =>
                    {
                        label1.Text = "" + a;
                    }));

                }

            }
        }
        private void Test1()
        {
            while (true)
            {
                int i = 0;
            }
        }
        void o_evs(string Appmode)
        {
            label1.Text = Appmode;
        }
    }
}
