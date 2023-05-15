using System;
using System.Collections.Generic;

namespace W24_TP_Forum_2210075.Models
{
    public partial class Category
    {
        public Category()
        {
            Sujets = new HashSet<Sujet>();
        }

        public int CatId { get; set; }
        public string CatNom { get; set; } = null!;
        public string? CatDesc { get; set; }
        public string? CatImg { get; set; }
        public bool? CatActif { get; set; }

        public virtual ICollection<Sujet> Sujets { get; set; }
    }
}
