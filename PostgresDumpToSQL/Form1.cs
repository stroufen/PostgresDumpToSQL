using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace PostgresDumpToSQL
{
    public partial class Form1 : Form
    {
        private string insertedDumpFile;
        public Form1()
        {
            InitializeComponent();
        }

        private void panel1_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                e.Effect = DragDropEffects.Copy;
            }
        }

        private void panel1_DragDrop(object sender, DragEventArgs e)
        {
            string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
            foreach (string file in files)
                Process(file);
        }

        private void panel2_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                e.Effect = DragDropEffects.Copy;
            }
        }

        private void panel2_DragDrop(object sender, DragEventArgs e)
        {
            string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
            foreach (string file in files)
                Process(file);
        }




        void Process(string path)
        {
            MessageBox.Show(path, "");
            //process
            //var contents = File.ReadAllText(s);
            string content = File.ReadAllText(path);
            string[] commaDilimited = content.Split(',');

            MessageBox.Show(GetPosition(path).ToString());

            File.WriteAllText("newFileTest.sql", content.Trim('-'));
            var contentAgain = string.Join(",", commaDilimited);

            set_DumpFile(content);
            //             string attribute_ViewItem_0 = @"vw_all_800xa_tags_ch";
            //             string attribute_ViewItem_1 = @"vw_all_dfi2_ch";
            //             string attribute_ViewItem_2 = @"vw_all_euds_ch";
            //             string attribute_ViewItem_3 = @"vw_all_tags_ch";
            //             string attribute_ViewItem_4 = @"vw_all_tfi_ch";
            // 
            // 
            //             string viewItem = create_Block_ViewItem(attribute_ViewItem_0) + "\n"
            //                 + create_Block_ViewItem(attribute_ViewItem_1) + "\n"
            //                 + create_Block_ViewItem(attribute_ViewItem_2) + "\n"
            //                 + create_Block_ViewItem(attribute_ViewItem_3) + "\n"
            //                 + create_Block_ViewItem(attribute_ViewItem_4) + "\n";
            string viewItem = "";




                         string attribute_FunctionItem_0 = @"fn_add_800xa_recs_td_ch(p_do_log boolean)";
                         string attribute_FunctionItem_1 = @"fn_add_or_update_800xa_tags_ch(p_tags harmonydata.type_800xa_tag_ch[], p_mode text, p_do_update_alm_inh boolean)";
                         string attribute_FunctionItem_2 = @"fn_add_or_update_splus_tags_ch(";
                         //string attribute_FunctionItem_3 = @"vw_all_tags_ch";
                         //string attribute_FunctionItem_4 = @"vw_all_tfi_ch";
             
             
                         string functionItem = create_Block_FunctionItem(attribute_FunctionItem_0) + "\n"
                             + create_Block_FunctionItem(attribute_FunctionItem_1) + "\n"
                             + create_Block_FunctionItem(attribute_FunctionItem_2) + "\n";

            CreateNewSQLFile(viewItem, functionItem);

        }

        // if IDOK (user has selected types,views, functions, etc. to use in new file),
        // create new file and write to it the top and bottom hard-coded features
        void CreateNewSQLFile(string viewItem, string functionItem)
        {
            

            string newFile_Path = @"C:\Users\Engineer1\Desktop\testNew.sql";
            
            //add starting boiler plate code
            if (!File.Exists(newFile_Path))
            {
                // Create upgraded SQL file to write to
                using (StreamWriter upgradedSQL = File.CreateText(newFile_Path))
                {
                    // starting boiler plate code
                    upgradedSQL.WriteLine("CREATE OR REPLACE FUNCTION harmonydata.upgrade701() \n" +
                        "  RETURNS void AS \n" +
                        "$BODY1$ \n" +
                        "BEGIN \n\n\n");

                    //
                    //processView(upgradedSQL, "vw_all_euds_ch");
                    //upgradedSQL.WriteLine(viewItem);
                    upgradedSQL.WriteLine(functionItem);


                    // ending boiler plate code
                    upgradedSQL.WriteLine("END; \n" +
                        "$BODY1$ \n" +
                        "  LANGUAGE plpgsql VOLATILE; \n" +
                        "ALTER FUNCTION harmonydata.upgrade701 () OWNER TO postgres;");
                }
            }
            // open the file to read from.
            using (StreamReader sr = File.OpenText(newFile_Path))
            {
//                 string line = "";
//                 while((line = sr.ReadLine()) != null)
//                 {
//                     Console.WriteLine(line);
//                 }
                while (sr.Peek() > -1)
                {
                    Console.WriteLine(sr.ReadLine());
                }
            }


            //add methods to process each type that needs to be obtained (4 total)
        }

        public string create_Block_ViewItem(string selectedViewItem)
        {
            var sentences = new List<String>();
            //selectedViewItem = @"vw_all_800xa_tags_ch";
            string startingPosition = @"CREATE VIEW harmonydata." + selectedViewItem;
            //string selectedViewItem2 = @"ALTER TABLE harmonydata.vw_all_euds_ch OWNER TO postgres;";

            int index1 = get_DumpFile().IndexOf(startingPosition);
            int index2 = get_DumpFile().IndexOf(startingPosition);

            //MessageBox.Show("index 1: " + index1.ToString());
            //MessageBox.Show("index 2: " + index2.ToString());

            do
            {
                index2 = get_DumpFile().IndexOf(';', index1);
                if (index2 >= 0)
                {
                    sentences.Add(get_DumpFile().Substring(index1, index2 - index1 + 1).Trim('-'));
                    index1 = index2 + 1;
                }
            } while (index2 > 0);

            foreach (var sentence in sentences)
            {
                Console.WriteLine(sentence);
            }

            string firstSentence = sentences.ElementAt(0);
            string secondSentence = sentences.ElementAt(1);
            string viewSentence = firstSentence + secondSentence;

            string viewStart = @"CREATE";
            string viewUpdateFormat = @" OR REPLACE";

            MessageBox.Show(viewSentence.IndexOf(viewStart).ToString());
            //should start at index after "CREATE" for inserting "OR REPLACE"
            int viewInsertIndex = viewSentence.IndexOf(viewStart) + viewStart.Length;
            //MessageBox.Show(viewSentence.Insert(viewInsertIndex, viewUpdateFormat));
            viewSentence = viewSentence.Insert(viewInsertIndex, viewUpdateFormat);
            //MessageBox.Show("content substring: " + content.Substring((int)GetPosition(path), selectedViewItem.Length));
            //MessageBox.Show(contentAgain.Substring((int)GetPosition(path), selectedViewItem2.Length));
            //MessageBox.Show("content substring (index's): " + content.Substring(index1, index2));

            return viewSentence;
        }


        public string create_Block_FunctionItem(string selectedFunctionItem)
        {
            var sentences = new List<String>();
            //selectedFunctionItem = @"fn_add_or_update_800xa_tags_ch(p_tags harmonydata.type_800xa_tag_ch[], p_mode text, p_do_update_alm_inh boolean)";
            //selectedFunctionItem = @"fn_add_or_update_800xa_tags_ch";
            string startingPosition = @"CREATE FUNCTION harmonydata." + selectedFunctionItem;
            string endingPosition = @"ALTER FUNCTION harmonydata." + selectedFunctionItem + @" OWNER TO postgres;";
            //string selectedViewItem2 = @"ALTER TABLE harmonydata.vw_all_euds_ch OWNER TO postgres;";

            int index1 = get_DumpFile().IndexOf(startingPosition);
            int index2 = get_DumpFile().IndexOf(startingPosition);

            //MessageBox.Show("index 1: " + index1.ToString());
            //MessageBox.Show("index 2: " + index2.ToString());

            do
            {
                index2 = get_DumpFile().IndexOf(';', index1);
                if (index2 >= 0)
                {
                    sentences.Add(get_DumpFile().Substring(index1, index2 - index1 + 1).Trim('-'));
                    index1 = index2 + 1;
                }
            } while (index2 > 0);

            foreach (var sentence in sentences)
            {
                Console.WriteLine(sentence);
            }

            // need to concatencate all sentences up to last sentence that contains ALTER FUNCTION
            string sentenceBuild = "";
            for(int i = 0; i < sentences.Count() - 1; i++)
            {
                if (!(sentences.ElementAt(i).ToString().TrimStart()).Equals(endingPosition))
                {
                    do
                    {
                        sentenceBuild += sentences.ElementAt(i);

                    } while (sentences.ElementAt(i).StartsWith(endingPosition));
                }
                else
                {
                    sentenceBuild += sentences.ElementAt(i);
                    break;
                }


            }

            string sentenceBuilt = sentenceBuild;

            string viewStart = @"CREATE";
            string viewUpdateFormat = @" OR REPLACE";

            MessageBox.Show(sentenceBuilt.IndexOf(viewStart).ToString());

            //should start at index after "CREATE" for inserting "OR REPLACE"
            int viewInsertIndex = sentenceBuilt.IndexOf(viewStart) + viewStart.Length;

            sentenceBuilt = sentenceBuilt.Insert(viewInsertIndex, viewUpdateFormat);

            return sentenceBuilt;
        }


        private void set_DumpFile(string dumpFile)
        {
            insertedDumpFile = dumpFile;
        }

        private string get_DumpFile()
        {
            return insertedDumpFile;
        }
        












        private long GetPosition(string path)
        {
            long position = Seek(path, @"CREATE VIEW harmonydata.vw_all_euds_ch");

            return position;
        }

        public static long Seek(FileStream fs,
                        string searchString)
        {
            char[] search = searchString.ToCharArray();
            long result = -1, position = 0, stored = -1,
            begin = fs.Position;
            int c;

            //read byte by byte
            while ((c = fs.ReadByte()) != -1)
            {
                //check if data in array matches
                if ((char)c == search[position])
                {
                    //if character matches first character of 
                    //seek string, store it for later
                    if (stored == -1 && position > 0
                        && (char)c == search[0])
                    {
                        stored = fs.Position;
                    }

                    //check if we're done
                    if (position + 1 == search.Length)
                    {
                        //correct position for array lenth
                        result = fs.Position - search.Length;
                        //set position in stream
                        fs.Position = result;
                        break;
                    }

                    //advance position in the array
                    position++;
                }
                //no match, check if we have a stored position
                else if (stored > -1)
                {
                    //go to stored position + 1
                    fs.Position = stored + 1;
                    position = 1;
                    stored = -1; //reset stored position!
                }
                //no match, no stored position, reset array
                //position and continue reading
                else
                {
                    position = 0;
                }
            }

            //reset stream position if no match has been found
            if (result == -1)
            {
                fs.Position = begin;
            }

            return result;
        }

        public static long Seek(string file, string searchString)
        {
            //open file-stream to perform a seek
            using (System.IO.FileStream fs =
                        System.IO.File.OpenRead(file))
            {
                return Seek(fs, searchString);
            }
        }

        /*static byte[] GetBytes(string str)
        {
            byte[] bytes = new byte[str.Length * sizeof(char)];
            System.Buffer.BlockCopy(str.ToCharArray(), 0, bytes, 0, bytes.Length);
            return bytes;
        }

        // Do NOT use on arbitrary bytes; only use on GetBytes's output on the SAME system
        static string GetString(byte[] bytes)
        {
            char[] chars = new char[bytes.Length / sizeof(char)];
            System.Buffer.BlockCopy(bytes, 0, chars, 0, bytes.Length);
            return new string(chars);
        }*/

    }
}
