using QuanLyKhachSan.Models;
using QuanLyKhachSan.ViewModels;
using QuanLyKhachSan.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Linq;
using System.Linq;
using System.Runtime.CompilerServices;
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

namespace QuanLyKhachSan.UserControls
{
    /// <summary>
    /// Interaction logic for PhongTrangChuUC.xaml
    /// </summary>
    public partial class PhongTrangChuUC : UserControl, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public ICommand Command { get; set; }


        private phong _Phong;
        public phong Phong { get => _Phong; set { _Phong = value; OnPropertyChanged(); } }

        public PhongTrangChuUC() 
        {
            InitializeComponent();
            this.DataContext = this;
        }

        public PhongTrangChuUC(phong p)
        {
            InitializeComponent();
            this.DataContext = this;

            Phong = p;

            var bc = new BrushConverter();

            if (Phong.TinhTrang == "Sẵn sàng") InfoArea.Background = (Brush)bc.ConvertFrom("#27cf6f");
            else if (Phong.TinhTrang == "Đang có khách") InfoArea.Background = (Brush)bc.ConvertFrom("#d6413e");

            Command = new RelayCommand<object>((m) => { return true; }, (m) =>
            {
                ThemPhongView PayWindow = new ThemPhongView();
                PayWindow.ShowDialog();
                //String x = CommandsListbox.SelectedValue.ToString();
                //if (x == "Thanh toán")
                //{
                //    if (Phong.TinhTrang == "Đang có khách")
                //    {
                //        ThemPhongView PayWindow = new ThemPhongView();
                //        PayWindow.ShowDialog();
                //    }
                //    else if (Phong.TinhTrang == "Sẵn sàng")
                //    {
                //        ThemPhongView PayWindow = new ThemPhongView();
                //        PayWindow.ShowDialog();
                //    }
                //}
            }
           );

        }

        //private void Command_MouseDown(object sender, MouseButtonEventArgs e)
        //{
            
        //    String x = CommandsListbox.SelectedValue.ToString();
        //    if (x == "Thanh toán")
        //    {
        //        if (Phong.TinhTrang == "Đang có khách")
        //        {
        //            ThemPhongView PayWindow = new ThemPhongView();
        //            PayWindow.ShowDialog();
        //        }
        //        else if (Phong.TinhTrang == "Sẵn sàng")
        //        {
        //            ThemPhongView PayWindow = new ThemPhongView();
        //            PayWindow.ShowDialog();
        //        }
        //    }
        //}
    }
}
