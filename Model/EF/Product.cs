namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public long ID { get; set; }

        [StringLength(250)]
        [Display(Name = "Tên sản phẩm")]
        public string Name { get; set; }

        [StringLength(10)]
        [Display(Name = "Mã hàng")]
        public string Code { get; set; }

        [StringLength(250)]
        [Display(Name = "Link sản phẩm")]
        public string Link { get; set; }

        [StringLength(250)]
        public string MetaTitle { get; set; }

        [StringLength(500)]
        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [StringLength(250)]
        [Display(Name = "Thêm ảnh")]
        public string Image { get; set; }

        [Column(TypeName = "xml")]
        [Display(Name = "Quản lý ảnh")]
        public string MoreImages { get; set; }

        [Display(Name = "Giá sản phẩm")]
        public decimal? Price { get; set; }

        [Display(Name = "Giá khuyến mãi")]
        public decimal? PromotionPrice { get; set; }

        [Display(Name = "Loại sản phẩm")]
        public long? CategoryID { get; set; }

        [Column(TypeName = "ntext")]

        [Display(Name = "Chi tiết sản phẩm")]
        public string Detail { get; set; }

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

        [Display(Name = "Up lên sản phẩm mới")]
        public DateTime? TopHot { get; set; }

        [Display(Name = "Lượt xem")]
        public int? ViewCount { get; set; }
    }
}
