﻿namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Category")]
    public partial class Category
    {
        public long ID { get; set; }

        [StringLength(250)]
        [Display(Name = "Tên")]
        public string Name { get; set; }

        [StringLength(250)]
        public string MetaTitle { get; set; }

        [Display(Name = "Tên danh mục con")]
        public long? ParentID { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? DisplayOrder { get; set; }

        [StringLength(250)]
        public string SeoTitle { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreateDate { get; set; }

        [StringLength(50)]
        public string CreateBy { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(50)]
        public string ModifiedBy { get; set; }

        [StringLength(250)]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        public string MetaDescriptions { get; set; }

        [Display(Name = "Trạng thái")]
        public bool Status { get; set; }
    }
}
