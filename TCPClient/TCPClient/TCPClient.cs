using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace TCPClient
{
    public class TCPClient
    {
        TcpClient client;
        NetworkStream stream;
        public TCPClient()
        {

        }

        public string Connect(String server)
        {
            try
            {
                
                Int32 port = 80;                
                client = new TcpClient(server, port);
                client.NoDelay = true;
                return "ok";
               
            }            
            catch (SocketException e)
            {
                return e.Message;
            }
        }
        public string Send(String message)
        {

            try
            {
                // Translate the passed message into ASCII and store it as a Byte array.
                Byte[] data = System.Text.Encoding.ASCII.GetBytes(message);
                stream = client.GetStream();
                // Send the message to the connected TcpServer. 
                stream.Write(data, 0, data.Length);
                stream.Flush();
               
               

                return "ok";
            }
            catch (Exception err)
            {
                return err.Message;
            }             
        }

        public string Receive(out String responseData)
        {
            responseData = String.Empty;
            try
            {
                Byte[] data;
                data = new Byte[256];
                stream = client.GetStream();
                // Read the first batch of the TcpServer response bytes.
                Int32 bytes = stream.Read(data, 0, data.Length);
                responseData = System.Text.Encoding.ASCII.GetString(data, 0, bytes);
               
                return "ok";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }
        public void Close()
        {
            stream.Close();
            client.Close();
        }

    }
}
