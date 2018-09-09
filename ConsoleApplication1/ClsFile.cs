using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;


namespace ConsoleApplication1
{
   public class ClsFile
    {
        public const string PATH = @"D:\StreamTest.txt";
        public void CreateFile()
        {
            FileInfo info = new FileInfo(@"D:\StreamTest.txt");
            using (FileStream fs = new FileStream(@"D:\StreamTest.txt", FileMode.OpenOrCreate, FileAccess.Write))
            {

                while (info.Length <= 524288000)
                {
                    byte[] bt = File.ReadAllBytes(@"D:\Document\T1.txt");
                    fs.Write(bt, 0, bt.Length);
                }
            }

        }
        public void Readfile()
        {
            //string str = File.read(@"D:\StreamTest.txt");
            //Console.WriteLine("Done");
            //Console.Read();
            var tem = @"D:\Document\T11.txt";
            char[] block = new char[961*1000*100];
            using (var p = File.OpenText(PATH))
            {
                int i = 0;
                while (true)
                {
                    i++;
                    try
                    {
                        p.Read(block, 0, block.Length);

                        File.AppendAllText(tem, new String(block)); 
                        File.AppendAllText(tem,"=====================");
                    }
                    catch (Exception)
                    {
                       
                    }
                    if (p.EndOfStream)
                    {
                        Console.WriteLine("######{0}#####",i);
                        break;
                       
                    }  

                }
            }
            Console.Read();
        }

    }
}
