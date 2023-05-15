using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using W24_TP_Forum_2210075.Models;

namespace W24_TP_Forum_2210075.ViewModels
{
    public class HomeCat
    {
        [Key, Column (Order = 0)]
        public int CategoryId { get; set; }
        public string CategoryName { get; set; } = null!;
        public string? Description { get; set; }
        public bool? Actif { get; set; }
        public int SujetsCount { get; set; }
        public IEnumerable<Sujet>? SujetsListe { get; set; }
    }
}