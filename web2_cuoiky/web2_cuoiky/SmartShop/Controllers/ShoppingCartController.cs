using SmartShop.Models;
using SmartShopBUS.Bus;
using SmartShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
namespace SmartShop.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult Index()
        {
            ShoppingCartModels model = new ShoppingCartModels();
            model.Cart = (DHangModels)Session["Cart"];
            return View(model);
        }
        public ActionResult _Cart()
        {
            ShoppingCartModels model = new ShoppingCartModels();
            model.Cart = (DHangModels)Session["Cart"];
            return PartialView("_Cart", model);
        }
        [HttpPost]
        public JsonResult AddToCart(string id)
        {
            var response = new { Code = 1, Msg = "Fail", sluong = @Session["sluong"], ttien = @Session["TongTien"] };
            var db = new SmartShopConnectionDB();
            Product sp = db.Single<Product>("select * from Product where MaSP = @0", id);
            if (sp != null)
            {
                DHangModels objCart = (DHangModels)Session["Cart"];
                if (objCart == null)
                {
                    objCart = new DHangModels();
                }

                ShoppingCartItem item = new ShoppingCartItem()
                {
                    MaSP = sp.MaSP,
                    TenSP = sp.TenSP,
                    Hinh = sp.Hinh,
                    Gia = Int32.Parse(sp.Gia),
                    SoLuong = 1,
                    TongCong = Int32.Parse(sp.Gia),
                };

                objCart.AddToCart(item);
                Session["Cart"] = objCart;
                ShoppingCartModels model = new ShoppingCartModels();
                model.Cart = (DHangModels)Session["Cart"];
                int ii = 0;
                int tongtien = 0;
                foreach (var item2 in model.Cart.ListItem)
                {
                    tongtien = tongtien + (int)item2.TongCong;
                    ii++;
                }
                Session["sluong"] = ii;
                Session["TongTien"] = tongtien.ToString("N0");
                response = new { Code = 0, Msg = "Success", sluong = @Session["sluong"], ttien = @Session["TongTien"] };
            }
            
            return Json(response);
        }

        [HttpPost]
        public JsonResult RemoveFromCart(string id)
        {
            var response = new { Code = 1, Msg = "Fail", masp = id, ttien = @Session["TongTien"] };

            DHangModels objCart = (DHangModels)Session["Cart"];
            if (objCart != null)
            {
                objCart.RemoveFromCart(id);
                Session["Cart"] = objCart;
                ShoppingCartModels model = new ShoppingCartModels();
                model.Cart = (DHangModels)Session["Cart"];
                int ii = 0;
                int tongtien = 0;
                foreach (var item2 in model.Cart.ListItem)
                {
                    tongtien = tongtien + (int)item2.TongCong;
                    ii++;
                }
                Session["sluong"] = ii;
                Session["TongTien"] = tongtien.ToString("N0");
                response = new { Code = 0, Msg = "Success", masp = id, ttien = @Session["TongTien"] };
            }
            return Json(response);
        }

        [HttpPost]
        public JsonResult UpdateQuantity(string id, int quantity, int gia)
        {
            int tonggia = quantity * gia;
            var response = new { Code = 1, Msg = "Fail", masp = id, ttien = @Session["TongTien"], tgia = tonggia.ToString("N0") };

            DHangModels objCart = (DHangModels)Session["Cart"];
            if (objCart != null)
            {
                objCart.UpdateQuantity(id, quantity);
                Session["Cart"] = objCart;
                ShoppingCartModels model = new ShoppingCartModels();
                model.Cart = (DHangModels)Session["Cart"];
                int ii = 0;
                int tongtien = 0;
                foreach (var item2 in model.Cart.ListItem)
                {
                    tongtien = tongtien + (int)item2.TongCong;
                    ii++;
                }
                Session["sluong"] = ii;
                Session["TongTien"] = tongtien.ToString("N0");
                tonggia = quantity * gia;
                response = new { Code = 0, Msg = "Success", masp = id, ttien = @Session["TongTien"], tgia = tonggia.ToString("N0") };
            }
            return Json(response);
        }

        public ActionResult _ThanhToan()
        {
            ShoppingCartModels model = new ShoppingCartModels();
            model.Cart = (DHangModels)Session["Cart"];
            return View(model);
        }

        public ActionResult ThanhToan()
        {
            return View(UserBus.ChiTiet(User.Identity.GetUserName()));
        }
        [HttpPost]
        public ActionResult ThanhToan(string HoTen, string Email, string DienThoai, string DiaChi, string GhiChu)
        {
            try
            {
                DonDatHang dh = new DonDatHang();
                dh.Username = User.Identity.GetUserName();
                dh.HoTen = HoTen;
                dh.Email = Email;
                dh.DiaChi = DiaChi;
                dh.SDT = DienThoai;
                dh.GhiChu = GhiChu;
                dh.NgayDatHang = DateTime.Now;
                //dh.Tongtien = (int)Session["TongTien"];
                int tongtien = 0;
                //CTDH

                List<ChiTietDH> dsCTDH = new List<ChiTietDH>();
                ShoppingCartModels model = new ShoppingCartModels();
                model.Cart = (DHangModels)Session["Cart"];
                foreach (var item in model.Cart.ListItem)
                {
                    ChiTietDH ctdh = new ChiTietDH();
                    ctdh.MaSP = item.MaSP;
                    ctdh.SoLuong = item.SoLuong;
                    ctdh.DonGia = item.Gia.ToString();
                    ctdh.TongTien = (int)item.TongCong;
                    dsCTDH.Add(ctdh);
                    tongtien = tongtien + (int)item.TongCong;
                }
                //
                dh.Tongtien = tongtien;
                DonHangBus.Them(dh, dsCTDH, User.Identity.GetUserName());
                return RedirectToAction("Index", "Home");
            }
            catch
            {
                return RedirectToAction("Index", "ShoppingCart");
            }
            
        }
        //public decimal? TongCong { get; set; }
    }
}