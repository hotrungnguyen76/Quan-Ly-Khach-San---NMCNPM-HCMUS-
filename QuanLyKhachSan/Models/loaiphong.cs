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
    
    public partial class loaiphong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public loaiphong()
        {
            this.phong = new HashSet<phong>();
        }
    
        public string LoaiPhong1 { get; set; }
        public Nullable<float> DonGia { get; set; }
        public Nullable<int> SLKhachToiDa { get; set; }
    
        public virtual doanhthu doanhthu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<phong> phong { get; set; }
    }
}
