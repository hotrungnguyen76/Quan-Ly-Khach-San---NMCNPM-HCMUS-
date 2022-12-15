using QuanLyKhachSan.Models;
using QuanLyKhachSan.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyKhachSan.ViewModels
{

    public class PhongVM : BaseViewModel
    {
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        private ObservableCollection<phong> _PhongList;
        public ObservableCollection<phong> PhongList { get => _PhongList; set { _PhongList = value; OnPropertyChanged(); } }

        private phong _SelectedRoom;
        public phong SelectedRoom { get => _SelectedRoom; set { _SelectedRoom = value; OnPropertyChanged(); } }

        private String _SearchedRoom;
        public String SearchedRoom
        {
            get => _SearchedRoom;
            set
            {
                _SearchedRoom = value;
                OnPropertyChanged();
                if (SearchedRoom == "")
                {
                    PhongList = new ObservableCollection<phong>(DataProvider.Ins.DB.phong);
                }
                else
                {
                    int searchRoomId = Int32.Parse(value);
                    var NewList = from p in DataProvider.Ins.DB.phong where p.MaPhong == searchRoomId select p;
                    PhongList = new ObservableCollection<phong>(NewList);
                }
            }
        }
        public PhongVM()
        {
            PhongList = new ObservableCollection<phong>(from p in DataProvider.Ins.DB.phong orderby p.MaPhong select p);
            EditCommand = new RelayCommand<phong>((p) => { return p == null ? false : true; }, (p) =>
            {
                SuaPhongView EditWindow = new SuaPhongView(p);
                EditWindow.ShowDialog();
                PhongList = new ObservableCollection<phong>(DataProvider.Ins.DB.phong);
                //OnPropertyChanged("PhongList");
            }
            );

            AddCommand = new RelayCommand<phong>((p) => { return true; }, (p) =>
            {
                ThemPhongView AddWindow = new ThemPhongView();
                AddWindow.ShowDialog();
                PhongList = new ObservableCollection<phong>(DataProvider.Ins.DB.phong);
                //OnPropertyChanged("PhongList");
            }
            );

        }
        
    }
}
