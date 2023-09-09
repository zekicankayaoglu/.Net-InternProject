using System.ComponentModel.DataAnnotations;

namespace MvcUI.Models
{
    public class LoggingDetail
    {
        [Required]      
        public int CardNumber { get; set; }
        [Required]
        public string Password { get; set; }

        

    }
}
