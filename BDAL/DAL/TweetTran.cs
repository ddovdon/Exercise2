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
    
    public partial class TweetTran
    {
        public int TweetTransID { get; set; }
        public Nullable<int> FK_TweetID { get; set; }
        public string FK_UserID { get; set; }
        public Nullable<System.DateTime> PostingDate { get; set; }
    
        public virtual Tweet Tweet { get; set; }
        public virtual User User { get; set; }
    }
}
