﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.shopping" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/11/21 18:51:00.
		本页面代码由DTcms模板引擎生成于 2017/11/21 18:51:00. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>确认订单 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/PCASClass.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/cart.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	//初始化收货地址\r\n	initUserAddress(\"#userAddress\");\r\n	//初始化表单\r\n	AjaxInitForm('#orderForm', '#btnSubmit', 0);\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"w1200 clearfix\">\r\n            <a class=\"logo left\" href=\"");
	templateBuilder.Append(linkurl("Index"));

	templateBuilder.Append("\">\r\n                <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n            </a>\r\n            <div class=\"nav right\">\r\n                <ul class=\"clearfix\">\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a></li>\r\n                    <li>\r\n                        <a>产品中心</a>\r\n                        <div class=\"drop-down\">\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">排课吧</a>\r\n                            <a href=\"\">教师成长档案</a>\r\n                            <a href=\"\">智慧校园</a>\r\n                        </div>\r\n                    </li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    //var href = window.location.href;\r\n    //$('.nav ul li').each(function () {\r\n\r\n    //    itemhref = $(this).children('a').attr('href');\r\n    //    itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n    //    if (href.indexOf(itemhref) > 1) {\r\n    //        $(this).addClass('selected').siblings().removeClass('selected');\r\n    //    }\r\n    //})\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n  \r\n<div class=\"section clearfix\">\r\n  <div class=\"cart-box\">\r\n    <h1>确认订单信息</h1>\r\n    <div class=\"cart-step\">\r\n      <ul>\r\n        <li class=\"item\"><span>1</span>放进购物车</li>\r\n        <li class=\"selected\"><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  \r\n  <div class=\"line30\"></div>\r\n  <h3 class=\"bar-tit\">1、收货地址</h3>\r\n  \r\n  <form id=\"orderForm\" name=\"orderForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=order_save&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("\">\r\n  <div class=\"form-box address-info\">\r\n    <dl>\r\n      <dt>收货人姓名：</dt>\r\n      <dd>\r\n        <input name=\"book_id\" id=\"book_id\" type=\"hidden\" value=\"0\" />\r\n        <input name=\"accept_name\" id=\"accept_name\" type=\"text\" class=\"input txt wide\" value=\"\" datatype=\"s2-20\" sucmsg=\" \" />\r\n        <span class=\"Validform_checktip\">*收货人姓名</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>所属地区：</dt>\r\n      <dd>\r\n        <select id=\"province\" name=\"province\" class=\"select\"></select>\r\n        <select id=\"city\" name=\"city\" class=\"select\"></select>\r\n        <select id=\"area\" name=\"area\" class=\"select\" datatype=\"*\" sucmsg=\" \"></select>\r\n        <span class=\"Validform_checktip\">*请选择您所在的地区</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>详细地址：</dt>\r\n      <dd>\r\n        <input name=\"address\" id=\"address\" type=\"text\" class=\"input txt\" value=\"\" datatype=\"*2-100\" sucmsg=\" \" style=\"width:300px;\" />\r\n        <span class=\"Validform_checktip\">*除上面所属地区外的详细地址</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>手机号码：</dt>\r\n      <dd>\r\n        <input name=\"mobile\" id=\"mobile\" type=\"text\" class=\"input txt\" value=\"\" datatype=\"m\" sucmsg=\" \" />\r\n        <span class=\"Validform_checktip\">*收货人的手机号码</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>联系电话：</dt>\r\n      <dd>\r\n        <input name=\"telphone\" id=\"telphone\" type=\"text\" class=\"input txt\" value=\"\" />\r\n        <span class=\"Validform_checktip\">收货人的联系电话，非必填</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>电子邮箱：</dt>\r\n      <dd>\r\n        <input name=\"email\" id=\"email\" type=\"text\" class=\"input txt\" value=\"\" />\r\n        <span class=\"Validform_checktip\">方便通知订单状态，非必填</span>\r\n      </dd>\r\n    </dl>\r\n    <dl>\r\n      <dt>邮政编码：</dt>\r\n      <dd>\r\n        <input name=\"post_code\" id=\"post_code\" type=\"txt\" class=\"input txt\" />\r\n        <span class=\"Validform_checktip\">所在地区的邮政编码，非必填</span>\r\n      </dd>\r\n    </dl>\r\n  </div>\r\n  \r\n  <div class=\"line30\"></div>\r\n  <h3 class=\"bar-tit\">2、支付方式</h3>\r\n  <ul class=\"item-box\">\r\n    ");
	DataTable paymentList = get_payment_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n    ");
	int dr1__loop__id=0;
	foreach(DataRow dr1 in paymentList.Rows)
	{
		dr1__loop__id++;


	decimal poundage_amount = get_payment_poundage_amount(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0),goodsTotal.real_amount);

	templateBuilder.Append("\r\n    <li>\r\n      <label>\r\n      ");
	if (dr1__loop__id==(paymentList.Rows.Count))
	{

	templateBuilder.Append("\r\n        <input name=\"payment_id\" type=\"radio\" onclick=\"paymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" datatype=\"*\" sucmsg=\" \" />\r\n        <input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n        <input name=\"payment_id\" type=\"radio\" onclick=\"paymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" />\r\n        <input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n        <em>手续费：");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("元</em>\r\n      </label>\r\n    </li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n  </ul>\r\n  \r\n  <div class=\"line30\"></div>\r\n  <h3 class=\"bar-tit\">3、配送方式</h3>\r\n  <ul class=\"item-box\">\r\n    ");
	DataTable expressList = get_express_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n    ");
	int dr2__loop__id=0;
	foreach(DataRow dr2 in expressList.Rows)
	{
		dr2__loop__id++;


	templateBuilder.Append("\r\n      <li>\r\n        <label>\r\n        ");
	if (dr2__loop__id==(expressList.Rows.Count))
	{

	templateBuilder.Append("\r\n          <input name=\"express_id\" type=\"radio\" onclick=\"freightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" datatype=\"*\" sucmsg=\" \" />\r\n          <input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n          <input name=\"express_id\" type=\"radio\" onclick=\"freightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" />\r\n          <input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          <em>费用：" + Utils.ObjectToStr(dr2["express_fee"]) + "元</em>\r\n        </label>\r\n      </li>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n  </ul>\r\n    \r\n  <div class=\"line30\"></div>\r\n  <h3 class=\"bar-tit\">4、商品清单</h3>\r\n  <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart-table\">\r\n    <tr>\r\n      <th colspan=\"2\" align=\"left\">商品信息</th>\r\n      <th width=\"84\" align=\"left\">单价</th>\r\n      <th width=\"84\" align=\"left\">优惠(元)</th>\r\n      <th width=\"84\" align=\"center\">数量</th>\r\n      <th width=\"104\" align=\"left\">金额(元)</th>\r\n      <th width=\"84\" align=\"left\">积分</th>\r\n      <th width=\"84\" align=\"center\">库存(件)</th>\r\n    </tr>\r\n    ");
	foreach(DTcms.Model.cart_items modelt in goodsList)
	{

	templateBuilder.Append("\r\n    <tr>\r\n      <td width=\"68\">\r\n        <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" />\r\n        </a>\r\n      </td>\r\n      <td>\r\n        <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a>\r\n      </td>\r\n      <td>\r\n        <span class=\"red\">\r\n          ￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\r\n        </span>\r\n      </td>\r\n      <td>\r\n        <span class=\"red\">\r\n          ￥");
	templateBuilder.Append((modelt.sell_price-modelt.user_price).ToString());

	templateBuilder.Append("\r\n        </span>\r\n      </td>\r\n      <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n      <td>\r\n        <span class=\"red\">\r\n          ￥");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("\r\n        </span>\r\n      </td>\r\n      <td align=\"center\">\r\n        ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n          +\r\n        ");
	}	//end for if

	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("\r\n      </td>\r\n      <td align=\"center\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.stock_quantity));
	templateBuilder.Append("\r\n      </td>\r\n    </tr>\r\n    ");
	}	//end for if

	if (goodsList.Count<1)
	{

	templateBuilder.Append("\r\n    <tr>\r\n      <td colspan=\"8\">\r\n        <div class=\"msg-tips\">\r\n          <div class=\"ico warning\"></div>\r\n          <div class=\"msg\">\r\n            <strong>购物车没有商品！</strong>\r\n            <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n          </div>\r\n        </div>\r\n      </td>\r\n    </tr>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n  </table>\r\n  \r\n  <div class=\"line30\"></div>\r\n  <h3 class=\"bar-tit\">5、结算信息</h3>\r\n  <div class=\"buy-foot\">\r\n    <div class=\"left\">\r\n      <dl>\r\n        <dd>\r\n          <label><input name=\"is_invoice\" id=\"is_invoice\" type=\"checkbox\" value=\"1\" onclick=\"taxAmoutTotal(this);\" /> 是否开具发票</label>\r\n          <input name=\"taxAmout\" id=\"taxAmout\" type=\"hidden\" value=\"");
	templateBuilder.Append(get_order_taxamount(goodsTotal.real_amount).ToString());

	templateBuilder.Append("\" />\r\n        </dd>\r\n      </dl>\r\n      <dl id=\"invoiceBox\" style=\"display:none;\">\r\n        <dt>发票抬头(100字符以内)</dt>\r\n        <dd>\r\n           <input name=\"invoice_title\" id=\"invoice_title\" type=\"text\" class=\"input\" />\r\n        </dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>订单备注(100字符以内)</dt>\r\n        <dd>\r\n          <textarea name=\"message\" class=\"input\" style=\"height:35px;\"></textarea>\r\n        </dd>\r\n      </dl>\r\n    </div>\r\n    <div class=\"right\">\r\n      <p>\r\n        商品 <label class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.total_quantity));
	templateBuilder.Append("</label> 件&nbsp;&nbsp;&nbsp;&nbsp;\r\n        商品金额：￥<label id=\"goodsAmount\" class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.real_amount));
	templateBuilder.Append("</label> 元&nbsp;&nbsp;&nbsp;&nbsp;\r\n        总积分：<label class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.total_point));
	templateBuilder.Append("</label> 分\r\n      </p>\r\n      <p>\r\n        运费：￥<label id=\"expressFee\" class=\"price\">0.00</label> 元 +\r\n        支付手续费：￥<label id=\"paymentFee\" class=\"price\">0.00</label> 元 +\r\n        税费：￥<label id=\"taxesFee\" class=\"price\">0.00</label> 元\r\n      </p>\r\n      <p class=\"txt-box\">\r\n        应付总金额：￥<label id=\"totalAmount\" class=\"price\">");
	templateBuilder.Append(Utils.ObjectToStr(goodsTotal.real_amount));
	templateBuilder.Append("</label>\r\n      </p>\r\n      <p class=\"btn-box\">\r\n        <a class=\"btn\" href=\"");
	templateBuilder.Append(linkurl("cart"));

	templateBuilder.Append("\">返回购物车</a>\r\n        ");
	if (goodsTotal.total_quantity>0)
	{

	templateBuilder.Append("\r\n        <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"确认提交\" class=\"btn btn-success\" />\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"button\" value=\"确认提交\" class=\"btn btn-gray\" disabled=\"disabled\" />\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </p>\r\n    </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  </form>\r\n   \r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer-header\">\r\n      <div class=\"w1200 clearfix\">\r\n          <div class=\"footer-content left\">\r\n              <div class=\"nav-footer clearfix\">\r\n                  <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>\r\n                  <a  href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a>\r\n                  <a  href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a>\r\n                  <a  href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a>\r\n                  <a  href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a>\r\n              </div>\r\n          </div>\r\n          <div class=\"footer-content left footer-logo\">\r\n              <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo1.png\" />\r\n          </div>\r\n          <div class=\"footer-content left wechat\">\r\n              <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/code.jpg\" />\r\n              <p>微信公众号</p>\r\n          </div>\r\n      </div>\r\n  </div>\r\n  <div class=\"footer-footer\">\r\n      ");
	templateBuilder.Append(site.copyright.ToString());

	templateBuilder.Append("<span>|</span>地址：");
	templateBuilder.Append(site.address.ToString());

	templateBuilder.Append("<span>|</span>邮编：");
	templateBuilder.Append(site.email.ToString());

	templateBuilder.Append("<span>|</span>联系电话：");
	templateBuilder.Append(site.tel.ToString());

	templateBuilder.Append("<span>|</span>传真：");
	templateBuilder.Append(site.fax.ToString());

	templateBuilder.Append("\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
