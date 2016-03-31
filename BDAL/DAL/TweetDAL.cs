using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDAL.BL;

namespace BDAL.DAL
{
    public class TweetDAL
    {
        public static void AddTweet(TweetBL usr)
        {
            using (dbTwitterEntities db = new dbTwitterEntities())
            {
                Tweet _usr = new Tweet();
                //_usr.TweetID = usr.TweetID;
                _usr.Message = usr.Message;
                _usr.AttachmentURL = usr.AttachmentURL;                
                db.Tweets.Add(_usr);
                
                TweetTran _tr = new TweetTran();
                _tr.FK_TweetID = _usr.TweetID;
                _tr.FK_UserID = usr.UserID;
                _tr.PostingDate = DateTime.Now;
                db.TweetTrans.Add(_tr);

                db.SaveChanges();
            }
        }

        public static List<TweetBL> AllTweets(string userid)
        {
            List<TweetBL> uList = new List<TweetBL>();
            using (dbTwitterEntities db = new dbTwitterEntities())
            {                
                //my tweets
                AddToList(userid, uList, db);
                //tweets of whom i'm following
                var Query2 = from d in db.Followings
                             where d.FK_UserID == userid
                             select new { d.FollowingID };
                foreach (var f_usr in Query2)
                {
                    AddToList(f_usr.FollowingID, uList, db);
                }   

                return uList;
            }
        }

        private static void AddToList(string userid, List<TweetBL> uList, dbTwitterEntities db)
        {
            var Query1 = from d in db.TweetTrans
                         from c in db.Tweets
                         orderby d.PostingDate descending
                         where c.TweetID == d.FK_TweetID && d.FK_UserID == userid
                         select new { c.TweetID, d.FK_UserID, c.Message, c.AttachmentURL, d.PostingDate };

            foreach (var _usr in Query1)
            {
                TweetBL tweet = new TweetBL();
                tweet.TweetID = _usr.TweetID;
                tweet.Message = _usr.Message;
                tweet.AttachmentURL = _usr.AttachmentURL;
                tweet.UserID = _usr.FK_UserID;
                tweet.PostingDate = Convert.ToDateTime(_usr.PostingDate);
                uList.Add(tweet);
            }
        }

        
    }
}
