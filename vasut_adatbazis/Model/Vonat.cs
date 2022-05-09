using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace vasut_adatbazis.Model
{
    public class Vonat
    {
        public int Id { get; set; }
        public string Nev { get; set; }
        public DateTime Gyartas { get; set; }
        public int Vagonszam { get; set; }
    }
}
