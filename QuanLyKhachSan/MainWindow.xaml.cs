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
using QuanLyKhachSan.ViewModels;

namespace QuanLyKhachSan
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = new MainViewModel();
           
        }

        private void MouseEnter_Btn(object sender, MouseEventArgs e)
        {
            Btn1.Background = Brushes.White;
            Btn1.Foreground = Brushes.Black;
        }

        private void MouseLeave_Btn(object sender, MouseEventArgs e)
        {
            Btn1.Background = Brushes.Black;
            Btn1.Foreground = Brushes.White;
        }
    }
}
