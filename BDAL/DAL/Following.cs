//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BDAL.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Following
    {
        public string FollowingID { get; set; }
        public string FK_UserID { get; set; }
    
        public virtual User User { get; set; }
    }
}
