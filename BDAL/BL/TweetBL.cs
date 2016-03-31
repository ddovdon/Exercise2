using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDAL.DAL;

namespace BDAL.BL
{
    public class TweetBL
    {
        private int _ID;
        private string _message;
        private string _attachmentURL;
        private string _userID;
        private DateTime _date;  
        
        private List<TweetBL> _tweetCollection;
        public int TweetID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public string Message
        {
            get { return _message; }
            set { _message = value; }
        }
        public string AttachmentURL
        {
            get { return _attachmentURL; }
            set { _attachmentURL = value; }
        }

        public string UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        public DateTime PostingDate
        {
            get { return _date; }
            set { _date = value; }
        }

        public List<TweetBL> TweetCollection
        {
            get { return _tweetCollection; }
            set { _tweetCollection = value; }
        }
                
        public void AllTweets(string userid)
        {
            this.TweetCollection = TweetDAL.AllTweets(this.UserID);
        }

        public void AddTweet()
        {
            TweetDAL.AddTweet(this);
        }
                
    }
}
