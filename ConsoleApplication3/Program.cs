using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3
{
    class Program
    {
        static void Main(string[] args)
        {
            int PORT = 9876;
            UdpClient udpClient = new UdpClient();
            udpClient.Client.Bind(new IPEndPoint(IPAddress.Any, PORT));
            var from = new IPEndPoint(0, 0); 
            Task.Run(() =>
            {
                while (true)
                {
                    var recvBuffer = udpClient.Receive(ref from);
                    if (string.IsNullOrEmpty(Config.ServerName))
                    {
                        Config.ServerName = Encoding.UTF8.GetString(recvBuffer);
                    }
                    Console.WriteLine(Encoding.UTF8.GetString(recvBuffer));
                }
            });
            Console.ReadLine();
        }
    }

    public static class Config
    {
        public static  string ServerName = string.Empty;
      
    }
}
