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
    public partial class Form1 : Form
    {

        TCPClient m_client = new TCPClient();

        Thread m_thread;
        Thread m_connectThread;
        bool m_running = true;
        
        public Form1()
        {
            InitializeComponent();
            Control.CheckForIllegalCrossThreadCalls = false;
            string res;
            if ((res = m_client.Connect("192.168.1.102")) != "ok")
            {
                m_connectThread = new Thread(Connect);
                m_connectThread.Start();
            }
            else
            {
                m_thread = new Thread(Receiver);
                m_thread.Start();
            }
        }
        void Connect()
        {
            while (m_running)
            {
                string res;
                if ((res = m_client.Connect("192.168.1.102")) == "ok")
                {
                    if (m_thread == null || m_thread.IsAlive == false)
                    {
                        m_thread = new Thread(Receiver);
                        m_thread.Start();
                    }
                }
            }

        }
        void Receiver()
        {
            try
            {
                while (m_running)
                {
                    String response;
                    if (m_client.Receive(out response) == "ok")
                    {
                        textBox2.Text = response;
                    }
                }
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
                return;
            }
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != string.Empty)
            {
                string res;
                textBox2.Text = string.Empty;
                if ((res = m_client.Send(textBox1.Text)) != "ok")
                {
                    MessageBox.Show(res);
                }
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            m_running = false;
            if (m_client != null)
                m_client.Close();
            if (m_thread != null)
                m_thread.Join();
        }
    }
}
