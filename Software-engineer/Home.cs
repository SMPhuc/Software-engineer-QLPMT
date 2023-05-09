using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Software_engineer
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

		private void Home_Load(object sender, EventArgs e)
		{
			string connectionString = "Data Source=MAY-425\\SQLEXPRESS;Initial Catalog=QuanLyPhongMach;Integrated Security=True";
			SqlConnection connection = new SqlConnection(connectionString);
			connection.Open();

			string query = "SELECT HO_TEN FROM BAC_SI WHERE MA_BAC_SI = @Ma_Bac_Si";
			SqlCommand command = new SqlCommand(query, connection);
			command.Parameters.AddWithValue("@Ma_Bac_Si", "BS001");

			SqlDataReader reader = command.ExecuteReader();
			if (reader.Read())
			{
				label1.Text = reader["HO_TEN"].ToString();
			}

			connection.Close();
		
		}
	}
}
