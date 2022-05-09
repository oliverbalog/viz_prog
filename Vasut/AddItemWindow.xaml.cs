using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using vasut_adatbazis;
using vasut_adatbazis.Model;

namespace Vasut
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class AddNewWIndow : Window
    {
        private readonly cnVasut _cnVasut;
        public enVonat Vonat;
        public AddNewWIndow()
        {
            InitializeComponent();
            Vonat = new enVonat { Gyartas=DateTime.Now,Vagonszam=1};
            grNewGrid.DataContext = Vonat;
            _cnVasut = new cnVasut();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            _cnVasut.enVonatok.Add(new enVonat
            {
                Gyartas = DateTime.Parse(newMade.Text),
                Nev = newName.Text,
                Vagonszam = Convert.ToInt32(newVagon.Text)
            });
            _cnVasut.SaveChanges();
        }

        private void btCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }

}
