﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLKhachSanEntities16 : DbContext
    {
        public QLKhachSanEntities16()
            : base("name=QLKhachSanEntities16")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<chitiethoadon> chitiethoadon { get; set; }
        public virtual DbSet<chitietphieuthue> chitietphieuthue { get; set; }
        public virtual DbSet<doanhthu> doanhthu { get; set; }
        public virtual DbSet<hoadon> hoadon { get; set; }
        public virtual DbSet<khachhang> khachhang { get; set; }
        public virtual DbSet<loaikhach> loaikhach { get; set; }
        public virtual DbSet<loaiphong> loaiphong { get; set; }
        public virtual DbSet<matdosudung> matdosudung { get; set; }
        public virtual DbSet<phieuthue> phieuthue { get; set; }
        public virtual DbSet<phong> phong { get; set; }
        public virtual DbSet<phuthu> phuthu { get; set; }
        public virtual DbSet<taikhoan> taikhoan { get; set; }
    }
}
