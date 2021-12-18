namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Slide")]
    public partial class Slide
    {
        public int ID { get; set; }
        [StringLength(250)]
        [Display(Name = "Tiêu đề")]

        public string Name { get; set; }
        [StringLength(350)]
        [Display(Name = "Chi tiết")]
        public string Detail { get; set; }

        [StringLength(250)]
        [Display(Name = "Thêm ảnh")]

        public string Image { get; set; }


        [Display(Name = "Thứ tự hiển thị")]
        public int? DisplayOrder { get; set; }

        [StringLength(250)]
        [Display(Name = "Link chi tiết")]
        public string Link { get; set; }

        [StringLength(50)]
        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreateDate { get; set; }

        [StringLength(50)]
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
