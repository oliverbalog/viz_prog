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
using System.Windows.Navigation;
using System.Windows.Shapes;
using vasut_adatbazis;
using vasut_adatbazis.Model;

namespace Vasut
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly cnVasut _cnVasut;
        public MainWindow()
        {
            InitializeComponent();
            _cnVasut = new cnVasut();
        }

        private void dataShow_Click(object sender, RoutedEventArgs e)
        {
            
            DGColumns.Visibility = Visibility.Visible;

            /*_cnVasut.enVonatok.Add(new enVonat
            {
                Id = 0,
                Gyartas = new DateTime(2020, 12, 12, 21, 0, 0),
                Nev = "K30",
                Vagonszam = 25
            });
            _cnVasut.SaveChanges();*/

            var er = new List<Vonat>();
            
            foreach (var x in _cnVasut.enVonatok)
            {
                
                er.Add(new Vonat()
                {
                    Id = x.Id,
                    Gyartas = x.Gyartas,
                    Nev = x.Nev,
                    Vagonszam=x.Vagonszam
                });
            }

            
            
            DGColumns.ItemsSource = er;
        }

        void DG_CellEditENdig(object sender, DataGridCellEditEndingEventArgs e)
        {
            if (e.EditAction == DataGridEditAction.Commit)
            {
                lbLog.Content = "asdf";
                var col = e.Column as DataGridBoundColumn;
                    var bindingPath = (col.Binding as Binding).Path.Path;
                    if (bindingPath == "Col1")
                    {
                        int rowIndex = e.Row.GetIndex();
                        var el = e.EditingElement as TextBox;
                        
                    }
            }

        }

        private void miSave_Click(object sender, RoutedEventArgs e)
        {
            
            _cnVasut.SaveChanges();
        }

        private void miSave_Click_1(object sender, RoutedEventArgs e)
        {

        }


        private void btNew_Click(object sender, RoutedEventArgs e)
        {
            var addWindow = new AddNewWIndow
            {
                Owner = this,
            };
            addWindow.ShowDialog();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var er = new List<Vonat>();

            foreach (var x in _cnVasut.enVonatok)
            {

                er.Add(new Vonat()
                {
                    Id = x.Id,
                    Gyartas = x.Gyartas,
                    Nev = x.Nev,
                    Vagonszam = x.Vagonszam
                });
            }



            DGColumns.ItemsSource = er;
        }
    }
}
