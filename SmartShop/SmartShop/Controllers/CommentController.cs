using SmartShopBUS.Bus;
using SmartShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartShop.Controllers
{
    public class CommentController : Controller
    {
        //
        // GET: /Comment/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Cmt(int? page)
        {
            if (page == null)
            {
                page = 1;
                return PartialView("_Cmt", CommentBus.CmtSp((string)Session["MaSP"], page));
            }
            else
            {
                Session["page"]=page;
                return RedirectToAction("Details", "Product", new { id = (string)Session["MaSP"] });
            }
        }
      
        public ActionResult Create()
        {
            return PartialView();
        }
        [HttpPost]
        public JsonResult Created(string userID, string mainCmt, string maSP)
        {
            var result = new { Code = 1, Msg = "Fail" , idCmt = 0 };
            try
            {
                Comment cmt = new Comment();
                cmt.MaSP = maSP;
                cmt.UserCmt = userID;
                cmt.NoiDung = mainCmt;
                CommentBus.Them(cmt);
                Comment cmt2 = new Comment();
                cmt2 = CommentBus.ChiTiet(userID);
                result = new { Code = 0, Msg = "Success", idCmt = cmt2.IDCmt };
                return Json(result);
            }
            catch
            {
                return Json(result);
            }
        }
        public JsonResult Delete(int id)
        {
            var result = new { Code = 1, Msg = "Fail" };
            
            try
            {
                CommentBus.Xoa(id);
                result = new { Code = 0, Msg = "Success" };
                return Json(result);
            }
            catch
            {
                return Json(result);
            }
        }
        public JsonResult Edit(int idCmt, string maSP, string userID, string mainCmt)
        {
            var result = new { Code = 1, Msg = "Fail" };
            Comment cmt = new Comment();
            cmt.IDCmt = idCmt;
            cmt.MaSP = maSP;
            cmt.UserCmt = userID;
            cmt.NoiDung = mainCmt;
            try
            {
                CommentBus.Sua(cmt);
                result = new { Code = 0, Msg = "Success" };
                return Json(result);
            }
            catch
            {
                return Json(result);
            }
        }
    }
}
