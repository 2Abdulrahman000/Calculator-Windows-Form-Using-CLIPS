using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mommosoft.ExpertSystem;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        private Mommosoft.ExpertSystem.Environment CLIPS;
        public Form1()
        {
            InitializeComponent();
            CLIPS = new Mommosoft.ExpertSystem.Environment();
            CLIPS.Load("Opertions.clp");
            this.StartPosition = FormStartPosition.CenterScreen;

        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }


        private void Button1_Click(object sender, EventArgs e)
        {
            String res = Convert.ToString(CLIPS.Eval("(add " + TextBox1.Text + " " + textBox2.Text + ")"));
            label3.Text = res;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            String res = Convert.ToString(CLIPS.Eval("(sub " + TextBox1.Text + " " + textBox2.Text + ")"));
            label3.Text = res;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            String res = Convert.ToString(CLIPS.Eval("(m " + TextBox1.Text + " " + textBox2.Text + ")"));
            label3.Text = res;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            String res = Convert.ToString(CLIPS.Eval("(d " + TextBox1.Text + " " + textBox2.Text + ")"));
            label3.Text = res;
        }
    }
}
