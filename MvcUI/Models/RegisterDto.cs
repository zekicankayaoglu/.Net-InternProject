using System.ComponentModel.DataAnnotations;

namespace MvcUI.Models
{
    public class RegisterDto
    {
       // [Required]
        public string FirstName { get; set; }
        //[Required]
        public string LastName { get; set; }
       // [Required]
        [DataType(DataType.EmailAddress)]
        public string Email{ get; set; }
       // [Required]
        public string City { get; set; }
        //[Required]
        public string Password { get; set; }
       // [Required]
       // [Range(18,85)]
        


    }
}
