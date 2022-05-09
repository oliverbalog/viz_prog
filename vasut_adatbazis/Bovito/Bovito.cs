using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace vasut_adatbazis.Bovito
{
    public static class Bovito
    {
        //kiegészítő metódus a telefonszámok kezeléséhez. Egy enSzemely entitást kap a konstruktorban ezen fog foreach ciklusban végigmenni.
        public static string Vonatok(this cnVasut enVonat)
        {
            var s = "";
            foreach (var x in enVonat.enVonatok)
            {
                s = s + x.Id;
                //ha nem az ustolsó elem akkor az s változóhoz hozzáad még egy y karaktert. A Last a collection tipusú adatokon értelmezett művelet mint pl. First, Next stb
                if (x != enVonat.enVonatok.Last())
                    s = s + ", ";
            }
            return s;
        }
    }
}
