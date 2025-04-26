namespace PreLaboratorioDiegoAlbizuris01VB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string usuario = "Diego";
            string contraseña = "12345";

            if (textBox1.Text == usuario && textBox2.Text == contraseña)
            {
                MessageBox.Show("Bienvenido " + usuario);
                Form2 form2 = new Form2();
                form2.Show();
            }
            else
            {
                MessageBox.Show("Usuario o contraseña incorrectos");
            }
        }
    }
}
