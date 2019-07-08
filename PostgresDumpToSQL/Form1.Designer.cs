namespace PostgresDumpToSQL
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.run_btn = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.open_db_dump_btn = new System.Windows.Forms.Button();
            this.open_config_file_btn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 77);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "DB Dump File: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 38);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Config File: ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 126);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Output File:";
            // 
            // run_btn
            // 
            this.run_btn.Enabled = false;
            this.run_btn.Location = new System.Drawing.Point(177, 180);
            this.run_btn.Name = "run_btn";
            this.run_btn.Size = new System.Drawing.Size(75, 23);
            this.run_btn.TabIndex = 4;
            this.run_btn.Text = "Run";
            this.run_btn.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(96, 180);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 5;
            this.button2.Text = "Cancel";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // open_db_dump_btn
            // 
            this.open_db_dump_btn.AllowDrop = true;
            this.open_db_dump_btn.Enabled = false;
            this.open_db_dump_btn.Location = new System.Drawing.Point(96, 72);
            this.open_db_dump_btn.Name = "open_db_dump_btn";
            this.open_db_dump_btn.Size = new System.Drawing.Size(75, 23);
            this.open_db_dump_btn.TabIndex = 7;
            this.open_db_dump_btn.Text = "Open File...";
            this.open_db_dump_btn.UseVisualStyleBackColor = true;
            this.open_db_dump_btn.DragDrop += new System.Windows.Forms.DragEventHandler(this.DB_OpenFileDragDrop);
            this.open_db_dump_btn.DragEnter += new System.Windows.Forms.DragEventHandler(this.OpenFileDragEnter);
            // 
            // open_config_file_btn
            // 
            this.open_config_file_btn.AllowDrop = true;
            this.open_config_file_btn.Location = new System.Drawing.Point(96, 33);
            this.open_config_file_btn.Name = "open_config_file_btn";
            this.open_config_file_btn.Size = new System.Drawing.Size(75, 23);
            this.open_config_file_btn.TabIndex = 7;
            this.open_config_file_btn.Text = "Open File...";
            this.open_config_file_btn.UseVisualStyleBackColor = true;
            this.open_config_file_btn.DragDrop += new System.Windows.Forms.DragEventHandler(this.Config_OpenFileDragDrop);
            this.open_config_file_btn.DragEnter += new System.Windows.Forms.DragEventHandler(this.OpenFileDragEnter);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(262, 215);
            this.Controls.Add(this.open_config_file_btn);
            this.Controls.Add(this.open_db_dump_btn);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.run_btn);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button run_btn;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button open_db_dump_btn;
        private System.Windows.Forms.Button open_config_file_btn;
    }
}

