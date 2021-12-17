namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Footer")]
    public partial class Footer
    {
        [StringLength(50)]
        public string ID { get; set; }

        [Column(TypeName = "ntext")]

        [Display(Name = "Chi tiết")]
        public string Content { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? Status { get; set; }
    }
}
