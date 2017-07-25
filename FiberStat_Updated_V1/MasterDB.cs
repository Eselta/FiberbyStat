using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace FiberStat_Updated_V1
{
    public class MasterDB
    {
        private static MasterDB instance;

        private MasterDB() { }

        public static MasterDB Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new MasterDB();
                }
                return instance;
            }
        }

        private MySqlConnection Conn { get; set; }
        private String CString { get; set; } = "Server=localhost; uid=root; pwd=rootbeer; database=fiberby;";

        

    }
}