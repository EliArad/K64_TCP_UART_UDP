using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TCPClient
{
    public partial class SerialEchoTest : Form
    {
        SerialPort m_serialPort = new SerialPort();
        Byte[] m_dataReceiveBuffer = new Byte[1000];
        public SerialEchoTest()
        {
            InitializeComponent();
            Control.CheckForIllegalCrossThreadCalls = false;
            OpenPort();
        }

        void OpenPort()
        {

            try
            {
                // Allow the user to set the appropriate properties.
                m_serialPort.PortName = "COM85";
                m_serialPort.BaudRate = 115200;
                m_serialPort.Parity = Parity.None;
                m_serialPort.DataBits = 8;
                m_serialPort.StopBits = StopBits.One;
                m_serialPort.Handshake = Handshake.None;
                m_serialPort.DataReceived += port_OnReceiveData; // Add DataReceived Event Handler
                m_serialPort.Open();

                timer1.Interval = 1;
                timer1.Enabled = true;
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
        private void port_OnReceiveData(object sender,
                                   SerialDataReceivedEventArgs e)
        {
            SerialPort spL = (SerialPort)sender;

            int btr = m_serialPort.BytesToRead;
            int min = Math.Min(btr, m_dataReceiveBuffer.Length);
            spL.Read(m_dataReceiveBuffer, 0, min);

            string response = System.Text.Encoding.ASCII.GetString(m_dataReceiveBuffer, 0, min);
            textBox2.Text = response;
        }
        void ClosePort()
        {
            m_serialPort.Close();
        }

        private void SerialEchoTest_FormClosing(object sender, FormClosingEventArgs e)
        {
            ClosePort();
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != string.Empty)
            {
                if (m_serialPort.IsOpen)
                {
                    Byte[] data = System.Text.Encoding.ASCII.GetBytes(textBox1.Text);
                    m_serialPort.Write(data, 0, data.Length);
                }
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (m_serialPort.IsOpen)
            {
                Byte[] data = System.Text.Encoding.ASCII.GetBytes(textBox1.Text);
                m_serialPort.Write(data, 0, data.Length);
            }
        }
    }
}
