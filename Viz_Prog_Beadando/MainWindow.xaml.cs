using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using vasut_adatbazis;
using vasut_adatbazis.Model;

namespace Viz_Prog_Beadando
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        vasut_adatbazis.cnVasut cnVasut;

        public MainWindow()
        {

            InitializeComponent();
            cnVasut = new cnVasut();
        }

        private void dataShow_Click(object sender, RoutedEventArgs e)
        {
            //a grHelyseg grid elrejtése a formon. Mivel alapból rejtett ezért ez akkor érdekes, ha előtte látható volt
            adatok.Visibility = Visibility.Hidden;
            //a dgAdatracs láthatóvá tétele
            dgAdatok.Visibility = Visibility.Visible;
            //var tipusú változó létrehozása SzemélyesAdatok generikus tipussal
            var er = new List<Vonat>();
            //Az összes személy feldolgozása ciklusban
            foreach (var x in cnVasut.enVonatok)
            {
                //egy új SzemelyesAdatok változónak értékül adjuk az aktuális személy adatait és ezt az er listában letároljuk. Értékadás 2. lehetősége
                er.Add(new Vonat()
                {
                    Id = x.Id,
                    Gyartas = x.Gyartas,
                    Nev=x.Nev,
                });
            }
            //a dgAdatracs forrásának beállítása a Binding property-n keresztül
            dgAdatok.ItemsSource = er;
        }
    }
}
