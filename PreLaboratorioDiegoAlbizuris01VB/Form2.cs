﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.DataFormats;

namespace PreLaboratorioDiegoAlbizuris01VB
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            string[] tabla = new string[] {
            textBox1.Text,
            textBox2.Text,
            textBox3.Text,
            textBox4.Text,
            textBox5.Text,
            textBox6.Text,
            };
            for (int i = 0; i < tabla.Length; i++)
            {

                dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[i].Value = tabla[i];
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string[] tabla = new string[] {
            textBox1.Text,
            textBox2.Text,
            textBox3.Text,
            textBox4.Text,
            textBox5.Text,
            textBox6.Text,
            };
            dataGridView1.Rows.Add(tabla);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentRow.Index);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form3 form3 = new Form3();
            form3.Show();
        }
    }
}
