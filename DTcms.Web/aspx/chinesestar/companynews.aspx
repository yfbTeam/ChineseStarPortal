<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/9/29 9:08:56.
		本页面代码由DTcms模板引擎生成于 2017/9/29 9:08:56. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "companynews";

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"renderer\" content=\"webkit\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <style>\r\n        .more{\r\n            border-bottom:1px solid #ccc;\r\n        }\r\n       \r\n    </style>\r\n</head>\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"w1200 clearfix\">\r\n            <a class=\"logo left\" href=\"");
	templateBuilder.Append(linkurl("Index"));

	templateBuilder.Append("\">\r\n                <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n            </a>\r\n            <div class=\"nav right\">\r\n                <ul class=\"clearfix\">\r\n                    <li class=\"selected\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n                    <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a></li>\r\n                    <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a></li>\r\n                    <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                    <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    var href = window.location.href;\r\n    $('.nav ul li').each(function () {\r\n\r\n        itemhref = $(this).children('a').attr('href');\r\n        itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n        debugger;\r\n        if (href.indexOf(itemhref) > 1) {\r\n            $(this).addClass('selected').siblings().removeClass('selected');\r\n        }\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n<div class=\"main\">\r\n    <div class=\"case_bg\">\r\n        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/news_bg.jpg\" alt=\"\" />\r\n    </div>\r\n    <div class=\"pb75\">\r\n        <h1 class=\"title pt30\">企业动态</h1>\r\n        <div class=\"w1200 clearfix mt30\">\r\n           <div class=\"news_left left\">\r\n               ");
	DataTable companynews1 = get_article_list("companynews", 57, 1, "status=0");

	foreach(DataRow dr in companynews1.Rows)
	{

	templateBuilder.Append("\r\n               <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\">\r\n                   <div class=\"news_img\">\r\n                       <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                   </div>\r\n                   <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                   <div class=\"desc\">\r\n                       " + Utils.ObjectToStr(dr["zhaiyao"]) + "\r\n                   </div>\r\n               </a>\r\n               ");
	}	//end for if

	templateBuilder.Append("\r\n              \r\n           </div>\r\n            <div class=\"news_right right\">\r\n                <ul>\r\n                    ");
	DataTable companynews2 = get_article_list("companynews", 57, 4, "status=0");

	int hotdr1__loop__id=0;
	foreach(DataRow hotdr1 in companynews2.Rows)
	{
		hotdr1__loop__id++;


	templateBuilder.Append("\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(hotdr1["id"])));

	templateBuilder.Append("\" target=\"_blank\" class=\"clearfix\">\r\n                            <span class=\"left num\">0");
	templateBuilder.Append(hotdr1__loop__id.ToString());

	templateBuilder.Append("</span>\r\n                            <div class=\"right\">\r\n                                <p class=\"clearfix\">\r\n                                    <span class=\"name\">" + Utils.ObjectToStr(hotdr1["title"]) + "</span>\r\n                                    <span class=\"date\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr1["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                                </p>\r\n                                <p class=\"desc\">" + Utils.ObjectToStr(hotdr1["zhaiyao"]) + "</p>\r\n                            </div>\r\n                        </a>\r\n                    </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n        </div>\r\n        <div class=\"more w1200\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews_list",57));

	templateBuilder.Append("\">查看更多</a></div>\r\n    </div>\r\n    <div class=\"pb75\" style=\"background:#f2f2f4;\">\r\n        <h1 class=\"title pt30\">产品动态</h1>\r\n        <div class=\"w1200 clearfix mt30\">\r\n            <div class=\"news_left left\">\r\n                ");
	DataTable productnews1 = get_article_list("companynews", 58, 1, "status=0");

	foreach(DataRow dr in productnews1.Rows)
	{

	templateBuilder.Append("\r\n                <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\r\n                    \" target=\"_blank\">\r\n                    <div class=\"news_img\">\r\n                        <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                    </div>\r\n                    <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                    <div class=\"desc\">\r\n                        " + Utils.ObjectToStr(dr["zhaiyao"]) + "\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n               </a>\r\n            </div>\r\n            <div class=\"news_right right news_right1\">\r\n                <ul>\r\n                    ");
	DataTable productnews2 = get_article_list("companynews", 58, 4, "status=0");

	int hotdr2__loop__id=0;
	foreach(DataRow hotdr2 in productnews2.Rows)
	{
		hotdr2__loop__id++;


	templateBuilder.Append("\r\n                    <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(hotdr2["id"])));

	templateBuilder.Append("\" target=\"_blank\" class=\"clearfix\">\r\n                            <span class=\"left num\">0");
	templateBuilder.Append(hotdr2__loop__id.ToString());

	templateBuilder.Append("</span>\r\n                            <div class=\"right\">\r\n                                <p class=\"clearfix\">\r\n                                    <span class=\"name\">" + Utils.ObjectToStr(hotdr2["title"]) + "</span>\r\n                                    <span class=\"date\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr2["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                                </p>\r\n                                <p class=\"desc\">" + Utils.ObjectToStr(hotdr2["zhaiyao"]) + "</p>\r\n                            </div>\r\n                        </a>\r\n                    </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n        </div>\r\n        <div class=\"more w1200\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews_list",58));

	templateBuilder.Append("\">查看更多</a></div>\r\n    </div>\r\n</div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer clearfix\">\r\n  <div class=\"footer-header\">\r\n      <div class=\"w1200 clearfix\">\r\n          <div class=\"footer-content left\">\r\n              <div class=\"nav-footer clearfix\">\r\n                  <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>\r\n                  <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a>\r\n                  <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a>\r\n                  <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a>\r\n                  <a target=\"_blank\" href=\"");
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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
