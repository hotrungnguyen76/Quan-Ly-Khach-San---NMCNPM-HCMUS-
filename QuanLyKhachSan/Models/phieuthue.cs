//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyKhachSan.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class phieuthue
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public phieuthue()
        {
            this.hoadon_phieuthue = new HashSet<hoadon_phieuthue>();
        }
    
        public int MaPhieuThue { get; set; }
        public Nullable<System.DateTime> NgayThue { get; set; }
        public Nullable<int> SoLuongKhach { get; set; }
        public int MaKH { get; set; }
        public int MaPhong { get; set; }
        public int MaNV { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hoadon_phieuthue> hoadon_phieuthue { get; set; }
        public virtual khachhang khachhang { get; set; }
        public virtual nguoidung nguoidung { get; set; }
        public virtual phong phong { get; set; }
    }
}