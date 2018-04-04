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

namespace TCPClient
{
    public partial class Form2 : Form
    {
        bool m_running = true;

        AsynchronousClient client = new AsynchronousClient();

        public Form2()
        {
            InitializeComponent();
            Control.CheckForIllegalCrossThreadCalls = false;
         
            client.StartClient();
            AsynchronousClient.Callback p = new AsynchronousClient.Callback(ReceiveCallback);
            client.Receive(p);
            
        }
    
        void ReceiveCallback(int code, string msg)
        {
            switch (code)
            { 
                case 2:
                    textBox2.Text = msg;
                break;
                case 1:
                {
                    client.StartClient();
                    AsynchronousClient.Callback p = new AsynchronousClient.Callback(ReceiveCallback);
                    client.Receive(p);
                }
                break;
            }

        }
        private void btnSend_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != string.Empty)
            {
                client.Send(textBox1.Text);
            }
        }

        private void Form2_FormClosing(object sender, FormClosingEventArgs e)
        {
            m_running = false;
            client.Close();
        }
    }
}
