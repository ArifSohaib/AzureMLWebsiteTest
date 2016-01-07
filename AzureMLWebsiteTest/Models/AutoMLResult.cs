using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AzureMLWebsiteTest.Models
{
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

    public class AutoMLResult
    {
        public Results Results { get; set; }
        public int ContainerAllocationDurationMs { get; set; }
        public int ExecutionDurationMs { get; set; }
        public bool IsWarmContainer { get; set; }
    }
}