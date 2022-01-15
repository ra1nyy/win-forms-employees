
namespace testTask
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.button1 = new System.Windows.Forms.Button();
            this.PostComboBox = new System.Windows.Forms.ComboBox();
            this.DepComboBox = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.StatusesComboBox = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SecondNameFilterTextBox = new System.Windows.Forms.TextBox();
            this.dataGridViewListOfEmp = new System.Windows.Forms.DataGridView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.label7 = new System.Windows.Forms.Label();
            this.StatusesComboBox2 = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.DateToPicker = new System.Windows.Forms.DateTimePicker();
            this.DateFromPicker = new System.Windows.Forms.DateTimePicker();
            this.GetStatistic = new System.Windows.Forms.Button();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.DataGridViewStatistic = new System.Windows.Forms.DataGridView();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewListOfEmp)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridViewStatistic)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(38, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1214, 626);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.DimGray;
            this.tabPage1.Controls.Add(this.button1);
            this.tabPage1.Controls.Add(this.PostComboBox);
            this.tabPage1.Controls.Add(this.DepComboBox);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.StatusesComboBox);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.SecondNameFilterTextBox);
            this.tabPage1.Controls.Add(this.dataGridViewListOfEmp);
            this.tabPage1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1206, 600);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Список сотрудников";
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button1.Location = new System.Drawing.Point(498, 549);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(222, 36);
            this.button1.TabIndex = 9;
            this.button1.Text = "Сбросить фильтры";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.ResetFilter_Click);
            // 
            // PostComboBox
            // 
            this.PostComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.PostComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.PostComboBox.FormattingEnabled = true;
            this.PostComboBox.Location = new System.Drawing.Point(891, 499);
            this.PostComboBox.Name = "PostComboBox";
            this.PostComboBox.Size = new System.Drawing.Size(267, 28);
            this.PostComboBox.TabIndex = 8;
            this.PostComboBox.SelectedIndexChanged += new System.EventHandler(this.PostComboBox_SelectedIndexChanged);
            // 
            // DepComboBox
            // 
            this.DepComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.DepComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DepComboBox.FormattingEnabled = true;
            this.DepComboBox.Location = new System.Drawing.Point(608, 499);
            this.DepComboBox.Name = "DepComboBox";
            this.DepComboBox.Size = new System.Drawing.Size(251, 28);
            this.DepComboBox.TabIndex = 7;
            this.DepComboBox.SelectedIndexChanged += new System.EventHandler(this.DepComboBox_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label4.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.label4.Location = new System.Drawing.Point(887, 470);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(121, 24);
            this.label4.TabIndex = 6;
            this.label4.Text = "Должность";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label3.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.label3.Location = new System.Drawing.Point(604, 470);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(73, 24);
            this.label3.TabIndex = 5;
            this.label3.Text = "Отдел";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label2.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.label2.Location = new System.Drawing.Point(314, 470);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 24);
            this.label2.TabIndex = 4;
            this.label2.Text = "Статус";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // StatusesComboBox
            // 
            this.StatusesComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.StatusesComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.StatusesComboBox.FormattingEnabled = true;
            this.StatusesComboBox.Items.AddRange(new object[] {
            "fsd"});
            this.StatusesComboBox.Location = new System.Drawing.Point(316, 500);
            this.StatusesComboBox.Name = "StatusesComboBox";
            this.StatusesComboBox.Size = new System.Drawing.Size(249, 28);
            this.StatusesComboBox.TabIndex = 3;
            this.StatusesComboBox.SelectedIndexChanged += new System.EventHandler(this.StatusesComboBox_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.label1.Location = new System.Drawing.Point(27, 472);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(243, 25);
            this.label1.TabIndex = 2;
            this.label1.Text = "Фамилия сотрудника";
            this.label1.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // SecondNameFilterTextBox
            // 
            this.SecondNameFilterTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SecondNameFilterTextBox.Location = new System.Drawing.Point(24, 500);
            this.SecondNameFilterTextBox.Name = "SecondNameFilterTextBox";
            this.SecondNameFilterTextBox.Size = new System.Drawing.Size(246, 29);
            this.SecondNameFilterTextBox.TabIndex = 1;
            this.SecondNameFilterTextBox.TextChanged += new System.EventHandler(this.SecondNameTextBox_TextChanged);
            // 
            // dataGridViewListOfEmp
            // 
            this.dataGridViewListOfEmp.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewListOfEmp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewListOfEmp.Location = new System.Drawing.Point(0, 0);
            this.dataGridViewListOfEmp.Name = "dataGridViewListOfEmp";
            this.dataGridViewListOfEmp.Size = new System.Drawing.Size(1206, 454);
            this.dataGridViewListOfEmp.TabIndex = 0;
            this.dataGridViewListOfEmp.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewListOfEmp_CellContentClick);
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.DimGray;
            this.tabPage2.Controls.Add(this.label7);
            this.tabPage2.Controls.Add(this.StatusesComboBox2);
            this.tabPage2.Controls.Add(this.label6);
            this.tabPage2.Controls.Add(this.label5);
            this.tabPage2.Controls.Add(this.DateToPicker);
            this.tabPage2.Controls.Add(this.DateFromPicker);
            this.tabPage2.Controls.Add(this.GetStatistic);
            this.tabPage2.Controls.Add(this.radioButton2);
            this.tabPage2.Controls.Add(this.radioButton1);
            this.tabPage2.Controls.Add(this.DataGridViewStatistic);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1206, 600);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Статистика";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label7.ForeColor = System.Drawing.SystemColors.Window;
            this.label7.Location = new System.Drawing.Point(47, 290);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(72, 24);
            this.label7.TabIndex = 10;
            this.label7.Text = "Статус";
            // 
            // StatusesComboBox2
            // 
            this.StatusesComboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.StatusesComboBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.StatusesComboBox2.FormattingEnabled = true;
            this.StatusesComboBox2.Location = new System.Drawing.Point(51, 318);
            this.StatusesComboBox2.Name = "StatusesComboBox2";
            this.StatusesComboBox2.Size = new System.Drawing.Size(196, 28);
            this.StatusesComboBox2.TabIndex = 9;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label6.ForeColor = System.Drawing.SystemColors.Window;
            this.label6.Location = new System.Drawing.Point(47, 193);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(111, 24);
            this.label6.TabIndex = 8;
            this.label6.Text = "Дата конца";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label5.ForeColor = System.Drawing.SystemColors.Window;
            this.label5.Location = new System.Drawing.Point(47, 125);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(120, 24);
            this.label5.TabIndex = 7;
            this.label5.Text = "Дата начала";
            // 
            // DateToPicker
            // 
            this.DateToPicker.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DateToPicker.Location = new System.Drawing.Point(51, 220);
            this.DateToPicker.Name = "DateToPicker";
            this.DateToPicker.Size = new System.Drawing.Size(200, 26);
            this.DateToPicker.TabIndex = 6;
            // 
            // DateFromPicker
            // 
            this.DateFromPicker.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DateFromPicker.Location = new System.Drawing.Point(51, 152);
            this.DateFromPicker.Name = "DateFromPicker";
            this.DateFromPicker.Size = new System.Drawing.Size(200, 26);
            this.DateFromPicker.TabIndex = 5;
            // 
            // GetStatistic
            // 
            this.GetStatistic.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.GetStatistic.Location = new System.Drawing.Point(95, 459);
            this.GetStatistic.Name = "GetStatistic";
            this.GetStatistic.Size = new System.Drawing.Size(208, 54);
            this.GetStatistic.TabIndex = 4;
            this.GetStatistic.Text = "Вывод";
            this.GetStatistic.UseVisualStyleBackColor = true;
            this.GetStatistic.Click += new System.EventHandler(this.GetStatistic_Click);
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.radioButton2.ForeColor = System.Drawing.SystemColors.Window;
            this.radioButton2.Location = new System.Drawing.Point(51, 80);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(302, 28);
            this.radioButton2.TabIndex = 3;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Кол-во принятых сотрудников";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.radioButton1.ForeColor = System.Drawing.SystemColors.Window;
            this.radioButton1.Location = new System.Drawing.Point(51, 52);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(312, 28);
            this.radioButton1.TabIndex = 2;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Кол-во уволенных сотрудников";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // DataGridViewStatistic
            // 
            this.DataGridViewStatistic.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.DataGridViewStatistic.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DataGridViewStatistic.Location = new System.Drawing.Point(394, 0);
            this.DataGridViewStatistic.Name = "DataGridViewStatistic";
            this.DataGridViewStatistic.Size = new System.Drawing.Size(812, 600);
            this.DataGridViewStatistic.TabIndex = 0;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1275, 650);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "sirius task";
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewListOfEmp)).EndInit();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridViewStatistic)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dataGridViewListOfEmp;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox SecondNameFilterTextBox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox StatusesComboBox;
        private System.Windows.Forms.ComboBox PostComboBox;
        private System.Windows.Forms.ComboBox DepComboBox;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView DataGridViewStatistic;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Button GetStatistic;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DateTimePicker DateToPicker;
        private System.Windows.Forms.DateTimePicker DateFromPicker;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox StatusesComboBox2;
    }
}

