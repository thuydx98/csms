﻿namespace UsersApi.Data.Entities
{
    public partial class CsmsUserAddress
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public string Receiver { get; set; }
        public string PhoneNumber { get; set; }
        public string Country { get; set; }
        public string Province { get; set; }
        public string District { get; set; }
        public string Ward { get; set; }
        public string Detail { get; set; }
        public bool? IsDefault { get; set; }

        public virtual CsmsUser User { get; set; }
    }
}
