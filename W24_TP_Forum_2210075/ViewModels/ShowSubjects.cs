using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using W24_TP_Forum_2210075.Models;

namespace W24_TP_Forum_2210075.ViewModels
{
    public class ShowSubjects
    {
        [Key, Column(Order =0)]
        public int SubjectId { get; set; }
        public string? SubjectTitle { get; set; }
        public int? SubjectViews { get; set; }
        public string? SubjectAuthor { get; set; }
        public DateTime SubjectDate { get; set; }
        public bool? SubjectActive { get; set; }
        public int CategoryId { get; set; }
        public string? CategoryName { get; set; }
        public int NbrMessages { get; set; }
        public string? LastAnswerUser { get; set; }
        public string? LastAnswerDate { get; set; }

        public virtual AspNetUser? User { get; set; }
        public List<Message>? LastMsg { get; set; }
    }
}