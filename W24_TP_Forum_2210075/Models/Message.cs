using System;
using System.Collections.Generic;

namespace W24_TP_Forum_2210075.Models
{
    public partial class Message
    {
        public int MsgId { get; set; }
        public int SujetId { get; set; }
        public string? UserId { get; set; }
        public bool? MsgActif { get; set; }
        public string MsgTexte { get; set; } = null!;
        public DateTime MsgDate { get; set; }

        public virtual Sujet? Sujet { get; set; } = null!;
        public virtual AspNetUser? User { get; set; }
    }
}
