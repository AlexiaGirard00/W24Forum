using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using W24_TP_Forum_2210075.Models;

namespace W24_TP_Forum_2210075.ViewModels
{
    public class MyUser
    {
        [Key, Column(Order = 0)]
        public string? UserId { get; set; }
        public string? UserName { get; set; }
        public int NbSujet { get; set; }
        public int NbMessage { get; set; }
        public List<Sujet>? LastSubject { get; set; }
        public List<Message>? LastMessage { get; set; }

    }
}