using QuanLyKhachSan.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using QuanLyKhachSan.UserControls;


namespace QuanLyKhachSan.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        #region commands
        public ICommand LoadDashboard { get; set; }
        public ICommand LoadCustomer { get; set; }
        public ICommand LoadHistory{ get; set; }
        public ICommand LoadRoom{ get; set; }
        public ICommand LoadExtra { get; set; }
        public ICommand LoadReport{ get; set; }

        #endregion

        private UserControl _selectedContentVM;
        public UserControl SelectedContentVM
        {
            get { return _selectedContentVM; }
            set
            {
                _selectedContentVM = value;
                OnPropertyChanged(nameof(SelectedContentVM));
            }
        }



        public MainViewModel() {
            SelectedContentVM = new TrangChuUC();
            LoadDashboard = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) => {
                
                SelectedContentVM = new TrangChuUC();
            }
            );
            LoadCustomer = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) => {

                SelectedContentVM = new KhachHangUC();
            }
            );
            LoadRoom = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) => {

                SelectedContentVM = new PhongUC();
            }
            );
        }    
    }
}
