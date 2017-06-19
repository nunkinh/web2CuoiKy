using PetaPoco;
using SmartShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartShopBUS.Bus
{
    public class DonHangBus
    {
        public static void Them(DonDatHang dh, List<ChiTietDH> ctdh, string username)
        {
            var db = new SmartShopConnectionDB();
            db.Insert("DonDatHang", "MaDH", dh);
            var madh = db.SingleOrDefault<DonDatHang>("SELECT TOP 1 * FROM DonDatHang WHERE Username=@0 ORDER BY MaDH DESC", username);
            foreach (var item in ctdh)
            {
                item.MaDH = madh.MaDH;
                db.Insert("ChiTietDH", "MaDH", item);
            }
        }
        public static void ThemCTDH(ChiTietDH ctdh)
        {
            var db = new SmartShopConnectionDB();
            db.Insert("ChiTietDH", "MaDH", ctdh);
        }
        public static DonDatHang LayMaDh(string username)
        {
            var db = new SmartShopConnectionDB();
            var madh = db.SingleOrDefault<DonDatHang>("SELECT TOP 1 * FROM DonDatHang WHERE Username=@0 ORDER BY MaDH DESC", username);
            return madh;
        }
        public static IEnumerable<DonDatHang> DanhSach()
        {
            var db = new SmartShopConnectionDB();
            var dsDH = db.Query<DonDatHang>("select * from DonDatHang");
            List<DonDatHang> model = new List<DonDatHang>();
           /* foreach (var item in dsCL)
            {
                viewMenu clvm = new viewMenu();
                clvm.MaCL = item.MaCL;
                clvm.TenCL = item.TenCL;
                clvm.dsLoai = db.Query<Loai>("select * from Loai where MaCL=@0", item.MaCL);
                model.Add(clvm);
            }*/
            return db.Query<DonDatHang>("SELECT * FROM DonDatHang");
        }
    }
}
