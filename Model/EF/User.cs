namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        public long ID { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên đăng nhập")]
        public string UserName { get; set; }

        [StringLength(32)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [Display(Name = "Nhập lại mật khẩu mới")]
        [StringLength(32)]

        [Compare(otherProperty: "Password", ErrorMessage = "Mật khẩu xác nhận sai.")]
        public string ConfirmNewPassword { set; get; }

        [StringLength(20)]
        [Display(Name = "Nhóm tài khoản")]
        public string GroupID { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên người dùng")]
        public string Name { get; set; }

        [StringLength(50)]
        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }

        [StringLength(50)]

        public string Email { get; set; }

        [StringLength(50)]
        [Display(Name = "Số điện thoại")]
        public string Phone { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreateDate { get; set; }

        [StringLength(50)]
        [Display(Name = "Tạo bởi")]
        public string CreateBy { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(50)]
        public string ModifiedBy { get; set; }

        [StringLength(250)]
        public string MetaDescriptions { get; set; }

        [Display(Name = "Trạng thái")]
        public bool Status { get; set; }
    }
}
