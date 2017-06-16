using PetaPoco;
using SmartShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartShopBUS.Bus
{
    public class CommentBus
    {
        public static Page<Comment> CmtSp(string masp, int? page)
        {
            var db = new SmartShopConnectionDB();
            return db.Page<Comment>(page.Value, 5, "SELECT * FROM Comment where MaSP=@0 ORDER BY IDCmt DESC", masp);
        }
        public static Comment ChiTiet(string idUser)
        {
            var db = new SmartShopConnectionDB();
            var cmt = db.SingleOrDefault<Comment>("SELECT TOP 1 * FROM [DAn_Web2].[dbo].[Comment] WHERE UserCmt=@0 ORDER BY IDCmt DESC", idUser);
            return cmt;
        }
        public static void Them(Comment cmt)
        {
            var db = new SmartShopConnectionDB();
            db.Insert(cmt);
        }
        public static void Xoa(int id)
        {
            var db = new SmartShopConnectionDB();
            db.Execute("DELETE FROM Comment WHERE IDCmt=@0", id);
        }
        public static void Sua(Comment cmt)
        {
            var db = new SmartShopConnectionDB();
            db.Update("Comment", "IDCmt", cmt);
        }
    }
}
