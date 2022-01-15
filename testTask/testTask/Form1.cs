using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace testTask
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            // window in center of screen
            StartPosition = FormStartPosition.CenterScreen;

            // init data grid view
            dataGridViewListOfEmp.DataSource = GetDataTableQueryResult($"EXEC get_list_of_employees 'second_name', 'desc'");

            // init comboboxes
            FillComboBox(StatusesComboBox, "EXEC get_status_names");
            FillComboBox(DepComboBox, "EXEC get_deps_names");
            FillComboBox(PostComboBox, "EXEC get_post_names");
            FillComboBox(StatusesComboBox2, "EXEC get_status_names");
        }

        DataBase dataBase = new DataBase();

        private DataTable GetDataTableQueryResult(string query)
        {
            dataBase.OpenConnection();
            DataTable dtEmployees = new DataTable();
            SqlCommand command = new SqlCommand(query, dataBase.GetConnection());
            SqlDataReader reader = command.ExecuteReader();
            dtEmployees.Load(reader);
            return dtEmployees;
        }

        private void FillComboBox(ComboBox cb, string query)
        {
            cb.Items.Clear();
            DataTable dtNames = GetDataTableQueryResult(query);
            foreach (DataRow dr in dtNames.Rows)
            {
                cb.Items.Add(dr["Name"].ToString());
            }
            dataBase.CloseConnection();
        }

        private int GetElementIdByName(string query)
        {
            dataBase.OpenConnection();
            DataTable dtNames = new DataTable();
            SqlCommand command = new SqlCommand(query, dataBase.GetConnection());
            SqlDataReader reader = command.ExecuteReader();
            dtNames.Load(reader);
            return Convert.ToInt32(dtNames.Rows[0]["Id"]); ;
        }

        private void StatusesComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateFilters();
        }

        private void DepComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateFilters();
        }

        private void PostComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateFilters();
        }

        private void SecondNameTextBox_TextChanged(object sender, EventArgs e)
        {
            UpdateFilters();
        }

        private void UpdateFilters()
        {
            var criteria = new List<string>();

            if (StatusesComboBox.Text != "")
            {
                criteria.Add($"status='{StatusesComboBox.Text}'");
            }
            if (DepComboBox.Text != "")
            {
                criteria.Add($"dep='{DepComboBox.Text}'");
            }
            if (PostComboBox.Text != "")
            {
                criteria.Add($"post='{PostComboBox.Text}'");
            }
            if (SecondNameFilterTextBox.Text != "")
            {
                criteria.Add($"second_name LIKE '%{SecondNameFilterTextBox.Text}%'");
            }

            string condition = string.Join(" AND ", criteria);

            (dataGridViewListOfEmp.DataSource as DataTable).DefaultView.RowFilter = condition;
        }

        private void ResetFilter_Click(object sender, EventArgs e)
        {
            StatusesComboBox.SelectedIndex = -1;
            DepComboBox.SelectedIndex = -1;
            PostComboBox.SelectedIndex = -1;
            SecondNameFilterTextBox.Text = "";
        }

        private void GetStatistic_Click(object sender, EventArgs e)
        {
            if ((radioButton1.Checked || radioButton2.Checked) && DateFromPicker.Checked && DateToPicker.Checked && StatusesComboBox2.SelectedIndex != -1)
            {
                if (DateFromPicker.Value > DateToPicker.Value)
                {
                    MessageBox.Show("Некорректно задан интервал дат !");
                }
                else
                {
                    int status_id = GetElementIdByName($"EXEC get_status_id_by_name '{StatusesComboBox2.Text}'");

                    if (radioButton1.Checked)
                    {
                        DataGridViewStatistic.DataSource = GetDataTableQueryResult(
                            $"EXEC get_unemploy_statistic '{DateFromPicker.Value.ToString()}', '{DateToPicker.Value.ToString()}', " + status_id.ToString()
                        );

                    }
                    else if (radioButton2.Checked)
                    {
                        DataGridViewStatistic.DataSource = GetDataTableQueryResult(
                            $"EXEC get_employ_statistic '{DateFromPicker.Value.ToString()}', '{DateToPicker.Value.ToString()}', " + status_id.ToString()
                        );
                    }
                }
            }
            else
            {
                MessageBox.Show("Необходимо выбрать все параметры для статистики !");
            }
        }

        private void dataGridViewListOfEmp_CellContentClick(object sender, DataGridViewCellEventArgs e) { }
        private void label1_Click_1(object sender, EventArgs e) { }
        private void label2_Click(object sender, EventArgs e) { }
        private void tabPage1_Click(object sender, EventArgs e) { }
        private void radioButton1_CheckedChanged(object sender, EventArgs e) { }
        private void radioButton2_CheckedChanged(object sender, EventArgs e) { }
    }
}
