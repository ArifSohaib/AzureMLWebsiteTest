using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AzureMLWebsiteTest.Models
{
    /* public class MLResult
     {
         public string ContainerAllocationDurationMs;
         public int ExecutionDurationMs;
         public bool IsWarmContainer;
         public class Results
         {
             public class output1
             {
                 public string type;
                 public class value
             }
         }
     }*/
    public class MLResult
    {
        //public Value val { get; set; }
        //public Results res { get; set; }
        //public Output1 output1 { get; set; }
        public RootObject root { get; set; }
        public class Value
        {
            public List<string> ColumnNames { get; set; }
            public List<string> ColumnTypes { get; set; }
            public List<List<string>> Values { get; set; }
        }

        public class Output1
        {
            public string type { get; set; }
            public Value value { get; set; }
        }

        public class Results
        {
            public Output1 output1 { get; set; }
        }

        public class RootObject
        {
            public Results Results { get; set; }
            public int ContainerAllocationDurationMs { get; set; }
            public int ExecutionDurationMs { get; set; }
            public bool IsWarmContainer { get; set; }
        }
    }
}