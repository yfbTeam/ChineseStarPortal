<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/9/29 10:48:45.
		本页面代码由DTcms模板引擎生成于 2017/9/29 10:48:45. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "index";

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
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function(){\r\n	        $(\".focusbox\").flexslider({\r\n		        directionNav: false,\r\n		        pauseOnAction: false\r\n	        });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"w1200 clearfix\">\r\n            <a class=\"logo left\" href=\"");
	templateBuilder.Append(linkurl("Index"));

	templateBuilder.Append("\">\r\n                <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n            </a>\r\n            <div class=\"nav right\">\r\n                <ul class=\"clearfix\">\r\n                    <li class=\"selected\"><a  href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a></li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a></li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    var href = window.location.href;\r\n    $('.nav ul li').each(function () {\r\n\r\n        itemhref = $(this).children('a').attr('href');\r\n        itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n        if (href.indexOf(itemhref) > 1) {\r\n            $(this).addClass('selected').siblings().removeClass('selected');\r\n        }\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n<div class=\"main\">\r\n    <div class=\"banner\">\r\n        <div class=\"focusbox\">\r\n            <ul class=\"slides\">\r\n                ");
	DataTable focusNews = get_article_list("index", 52, 8, "status=0 and is_slide=1 and img_url<>''");

	foreach(DataRow dr in focusNews.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n    </div>\r\n    <div class=\"productCenter\">\r\n        <h1 class=\"title pt30\">产品中心</h1>\r\n        <ul class=\"clearfix w1200\">\r\n            ");
	DataTable products = get_article_list("index", 53, 3, "status=0");

	foreach(DataRow dr in products.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <div class=\"icon\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></div>\r\n                <p class=\"productName\">" + Utils.ObjectToStr(dr["title"]) + "</p>\r\n                <div class=\"descration\">" + Utils.ObjectToStr(dr["zhaiyao"]) + "</div>\r\n                <a href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\" target=\"_blank\" class=\"login\" >登录</a>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <div class=\"userData\">\r\n        <h1 class=\"title pt30\">用户数据</h1>\r\n        <ul class=\"clearfix w1200\">\r\n            ");
	DataTable userData = get_article_list("index", 54, 3, "status=0");

	foreach(DataRow dr in userData.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <div class=\"icon\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></div>\r\n                <p class=\"number\">" + Utils.ObjectToStr(dr["zhaiyao"]) + "</p>\r\n                <div class=\"name\">" + Utils.ObjectToStr(dr["title"]) + "</div>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <div class=\"server\">\r\n        <h1 class=\"title pt30\">核心服务</h1>\r\n        <div class=\"descration\">以提升教育信息化和打造教育数据云平台为主导，<br />注重对创新教育理念的探索，致力于打造服务学校教育教学工作的“智慧型软件产品”，已拥有多项国家级自主研发技术和产品专利，<br />目前产品已应用于全国各地基础教育学校及高等院校。</div>\r\n        <ul class=\"clearfix w1200 pt30\">\r\n           <li>\r\n               <div class=\"icon icon1\"></div>\r\n               <p class=\"name\">为教务减负增效</p>\r\n           </li>\r\n            <li>\r\n                <div class=\"icon icon2\"></div>\r\n                <p class=\"name\">让教室智能有趣</p>\r\n            </li>\r\n            <li>\r\n                <div class=\"icon icon3\"></div>\r\n                <p class=\"name\">带学生快乐成长</p>\r\n            </li>\r\n            <li>\r\n                <div class=\"icon icon4\"></div>\r\n                <p class=\"name\">助学校快速发展</p>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"case\">\r\n        <h1 class=\"title pt30\">成功案例</h1>\r\n        <ul class=\"case_ul w1200 clearfix mt30\">\r\n            ");
	DataTable cases = get_article_list("case", 55, 6, "status=0");

	foreach(DataRow dr in cases.Rows)
	{

	templateBuilder.Append("\r\n            <li>\r\n                <div><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></div>\r\n            </li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"more w1200\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" >查看更多</a></div>\r\n    </div>\r\n    <div class=\"partner\">\r\n        <h1 class=\"title pt30\">合作伙伴</h1>\r\n        <ul class=\"w1200 clearfix\">\r\n            ");
	DataTable linkList = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 10, "is_lock=0 and is_image=1 and is_red=1");

	foreach(DataRow dr in linkList.Rows)
	{

	templateBuilder.Append("\r\n            <li><a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></a></li>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n</div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer clearfix\">\r\n  <div class=\"footer-header\">\r\n      <div class=\"w1200 clearfix\">\r\n          <div class=\"footer-content left\">\r\n              <div class=\"nav-footer clearfix\">\r\n                  <a href=\"");
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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
