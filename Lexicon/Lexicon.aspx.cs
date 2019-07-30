using System;
using System.IO;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lexicon
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void Button1_Click(object sender, EventArgs e)
        { codemethod(); }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          codemethod();
          playsound();
        }

        private void playsound()
        {
            /* System.Diagnostics.Process p = null;
             try
             {
                 p = new Process();
                 string sound; 
                 SoundPlayer mediaSoundPlayer = new SoundPlayer();
                 string a = "";
                 a = GridView1.SelectedRow.Cells[0].Text + " ";
                 int m = Int32.Parse(a);
                 string ok = m.ToString();
                 string b = ok.Replace(" ", "");
                 sound = "http://lexcy.library.ucy.ac.cy/sound/" + b + ".wav";
               p.StartInfo.FileName = sound;
               p.StartInfo.WorkingDirectory = "//";
               p.Start();               
               }
            catch { }
          */
        }
            
        protected void codemethod()
            {
            string key0 = SearchTextBox1.Text;
            string key1 = key0.Replace('\'', '̌');
            string key2 = key1.Replace('*', '%');
            string keyword = key2.Replace('?', '_');
            string GrammCategory = DropDownList1.SelectedItem.Value.ToString();
            string SearchCat = DropDownList2.SelectedItem.Value.ToString();

            if (keyword == "")
            {
                //AccessDataSource1.SelectCommand = "SELECT * FROM [Lexicon] WHERE ([Lemma] LIKE \'%\' AND [Gra] LIKE \'" + GrammCategory + "\')";
                keyword = "%";
            }
      
            AccessDataSource1.SelectCommand = "SELECT * FROM [Lexicon] WHERE ([" + SearchCat +"] LIKE \'" + keyword + "\' AND [Gra] LIKE \'" + GrammCategory + "\')";
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        { codemethod(); }

        protected void GridView1_Sorted(object sender, EventArgs e)
        { codemethod(); }   
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        { }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select1")
            {

                // Convert the row index stored in the CommandArgument
                // property to an Integer.
                int index = Convert.ToInt32(e.CommandArgument);

                // Get the last name of the selected author from the appropriate
                // cell in the GridView control.
                GridViewRow selectedRow = GridView1.Rows[index];
                TableCell cellText = selectedRow.Cells[8];
                string keyword = cellText.Text;
                AccessDataSource1.SelectCommand = "SELECT * FROM [Lexicon] WHERE ([Lemma] LIKE \'" + keyword+"\')";
                // Display the selected author.             
            }
        }
      
        } 
    }