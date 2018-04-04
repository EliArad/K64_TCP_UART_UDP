using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TCPClient
{

    public class StateObject {  
    // Client socket.  
    public Socket workSocket = null;  
    // Size of receive buffer.  
    public const int BufferSize = 256;  
    // Receive buffer.  
    public byte[] buffer = new byte[BufferSize];  
    // Received data string.  
    public StringBuilder sb = new StringBuilder();  
}

    public class AsynchronousClient
    {

        public delegate void Callback(int code, string msg);
        Callback pCallback;
        Socket m_client;
        // The port number for the remote device.  
        private const int port = 11000;

        // ManualResetEvent instances signal completion.  
        private  ManualResetEvent connectDone =
            new ManualResetEvent(false);
        private  ManualResetEvent sendDone =
            new ManualResetEvent(false);


        // The response from the remote device.  
        private  String response = String.Empty;

        public  void StartClient()
        {
            // Connect to a remote device.  
            try
            {

                IPAddress ipAddress = IPAddress.Parse("192.168.1.102");
                IPEndPoint remoteEP = new IPEndPoint(ipAddress, 80);

                // Create a TCP/IP socket.  
                Socket client = new Socket(ipAddress.AddressFamily,
                    SocketType.Stream, ProtocolType.Tcp);

                // Connect to the remote endpoint.  
                client.BeginConnect(remoteEP,
                    new AsyncCallback(ConnectCallback), client);
                connectDone.WaitOne();
                /*
                // Send test data to the remote device.  
                Send( "This is a test<EOF>");
                sendDone.WaitOne();

                // Receive the response from the remote device.  
                Receive();
                */


            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
        public void Close()
        {
            m_client.Shutdown(SocketShutdown.Both);
            m_client.Close();
        }

        private void ConnectCallback(IAsyncResult ar)
        {
            try
            {
                // Retrieve the socket from the state object.  
                m_client = (Socket)ar.AsyncState;

                // Complete the connection.  
                m_client.EndConnect(ar);

                Console.WriteLine("Socket connected to {0}", m_client.RemoteEndPoint.ToString());

                // Signal that the connection has been made.  
                connectDone.Set();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                pCallback(1, e.Message);
            }
        }

        public void Receive(Callback p)
        {
            try
            {
                pCallback = p;
                // Create the state object.  
                StateObject state = new StateObject();
                state.workSocket = m_client;

                // Begin receiving the data from the remote device.  
                m_client.BeginReceive(state.buffer, 0, StateObject.BufferSize, 0,
                    new AsyncCallback(ReceiveCallback), state);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }

        private  void ReceiveCallback(IAsyncResult ar)
        {
            try
            {
                // Retrieve the state object and the client socket   
                // from the asynchronous state object.  
                StateObject state = (StateObject)ar.AsyncState;
                Socket client = state.workSocket;

                // Read data from the remote device.  
                int bytesRead = client.EndReceive(ar);

                if (bytesRead > 0)
                {
                    // There might be more data, so store the data received so far.  
                    response = Encoding.ASCII.GetString(state.buffer, 0, bytesRead);

                    pCallback(2, response);
                    // Get the rest of the data.  
                    client.BeginReceive(state.buffer, 0, StateObject.BufferSize, 0,
                        new AsyncCallback(ReceiveCallback), state);
                }
                else
                {
                    // All the data has arrived; put it in response.  
                    if (state.sb.Length > 1)
                    {
                        response = state.sb.ToString();
                    }
                    // Signal that all bytes have been received.  
                    pCallback(2, response);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                pCallback(1, e.Message);
            }
        }

        public  void Send(String data)
        {
            // Convert the string data to byte data using ASCII encoding.  
            byte[] byteData = Encoding.ASCII.GetBytes(data);

            // Begin sending the data to the remote device.  
            m_client.BeginSend(byteData, 0, byteData.Length, 0,
                new AsyncCallback(SendCallback), m_client);
        }

        private  void SendCallback(IAsyncResult ar)
        {
            try
            {
                // Retrieve the socket from the state object.  
                Socket client = (Socket)ar.AsyncState;

                // Complete sending the data to the remote device.  
                int bytesSent = client.EndSend(ar);
                Console.WriteLine("Sent {0} bytes to server.", bytesSent);

                // Signal that all bytes have been sent.  
                sendDone.Set();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

}
