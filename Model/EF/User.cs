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
       
        public string UserName { get; set; }

        [StringLength(32)]
       
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu ")]
        public string Password { get; set; }

       
        [StringLength(32)]

        [Compare("Password", ErrorMessage = "Mật khẩu xác nhận sai.")]
        public string ConfirmNewPassword { set; get; }

        [StringLength(20)]
       
        public string GroupID { get; set; }

        [StringLength(50)]
        
        public string Name { get; set; }

        [StringLength(50)]
       
        public string Address { get; set; }

        [StringLength(50)]

        public string Email { get; set; }

        [StringLength(50)]
       
        public string Phone { get; set; }

        
        public DateTime? CreateDate { get; set; }

        [StringLength(50)]
       
        public string CreateBy { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(50)]
       
        public string ModifiedBy { get; set; }

        [StringLength(250)]
        public string MetaDescriptions { get; set; }

       
        public bool Status { get; set; }
    }
}
