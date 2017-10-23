<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/10/23 10:16:11.
		本页面代码由DTcms模板引擎生成于 2017/10/23 10:16:11. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "companynews";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    ");
	string category_title = get_category_title(model.category_id,"企业新闻");

	templateBuilder.Append("\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\" />\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n    <!--Header-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n\r\n    <div class=\"main\">\r\n        <div class=\"news-bg\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/news-bg_02.jpg\" alt=\"\" />\r\n        </div>\r\n        <div class=\"ntitle\">\r\n            <div class=\"w1200\">\r\n               \r\n                <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\" style=\"color:#2293cb;\">企业新闻</a> &gt; <a>新闻详情</a></span>\r\n            </div>\r\n        </div>\r\n        <!--左边-->\r\n        <div class=\"list-auto w1200\" style=\"padding:20px 0px;\">\r\n            <div class=\"meta\">\r\n                <h1>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n                <p class=\"meta-info\">\r\n                    <span class=\"time\">");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>\r\n                    <span class=\"view\">\r\n                        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script>次浏览\r\n                    </span>\r\n                    分类：");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("\r\n                </p>\r\n            </div>\r\n            <div class=\"entry\">\r\n                ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n        <!--/左边-->\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
