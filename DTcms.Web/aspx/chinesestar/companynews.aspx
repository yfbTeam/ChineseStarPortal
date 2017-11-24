<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/11/24 12:12:37.
		本页面代码由DTcms模板引擎生成于 2017/11/24 12:12:37. 
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
	templateBuilder.Append("\" />\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/bootstrap-grid.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/aos.css\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <style>\r\n        .more{\r\n            border-bottom:1px solid #ccc;\r\n        }\r\n       \r\n    </style>\r\n</head>\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <a class=\"logo col-lg-2 col-xl-2\" href=\"");
	templateBuilder.Append(linkurl("Index"));

	templateBuilder.Append("\">\r\n                    <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n                </a>\r\n                <div class=\"nav col-lg-10 col-xl-10\">\r\n                    <ul class=\"clearfix right\">\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a></li>\r\n                        <li>\r\n                            <a>产品中心</a>\r\n                            <div class=\"drop-down\">\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">排课吧</a>\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("product_growup"));

	templateBuilder.Append("\">教师成长档案</a>\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("product_qu"));

	templateBuilder.Append("\">区域教育大数据平台</a>\r\n                            </div>\r\n                        </li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    //var href = window.location.href;\r\n    //$('.nav ul li').each(function () {\r\n\r\n    //    itemhref = $(this).children('a').attr('href');\r\n    //    itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n    //    if (href.indexOf(itemhref) > 1) {\r\n    //        $(this).addClass('selected').siblings().removeClass('selected');\r\n    //    }\r\n    //})\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n<div class=\"main\">\r\n    <div class=\"case_bg pr\">\r\n        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/news_bg_02.png\" alt=\"\" />\r\n        <div class=\"zi container\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/news.png\" alt=\"\" aos-delay=\"200\" aos=\"fade-up\" class=\"case_zi\" />\r\n        </div>\r\n    </div>\r\n    <div class=\"pb75\">\r\n        <h1 class=\"title pt30\">企业动态</h1>\r\n        <div class=\"container clearfix mt30\">\r\n            <div class=\"row\">\r\n                <div class=\"news_left col-lg-6 col-xl-6\" aos-delay=\"200\" aos=\"fade-up\">\r\n                    ");
	DataTable companynews1 = get_article_list("companynews", 57, 1, "status=0");

	foreach(DataRow dr in companynews1.Rows)
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\r\n                        \" target=\"_blank\">\r\n                        ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                        <div class=\"news_img\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                        </div>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <div class=\"news_img\">\r\n                            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/dong_03.jpg\" />\r\n                        </div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                        <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                        <div class=\"desc\">\r\n                            " + Utils.ObjectToStr(dr["zhaiyao"]) + "\r\n                        </div>\r\n                    </a>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                </div>\r\n                <div class=\"news_right col-lg-6 col-xl-6\">\r\n                    <ul>\r\n                        ");
	DataTable companynews2 = get_article_list("companynews", 57, 4, "status=0");

	int hotdr1__loop__id=0;
	foreach(DataRow hotdr1 in companynews2.Rows)
	{
		hotdr1__loop__id++;


	templateBuilder.Append("\r\n                        <li aos-delay=\"");
	templateBuilder.Append(hotdr1__loop__id.ToString());

	templateBuilder.Append("00\" aos=\"fade-up\">\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(hotdr1["id"])));

	templateBuilder.Append("\r\n                                \" target=\"_blank\" class=\"clearfix\">\r\n                                <span class=\"left num\">0");
	templateBuilder.Append(hotdr1__loop__id.ToString());

	templateBuilder.Append("</span>\r\n                                <div class=\"right\">\r\n                                    <p class=\"clearfix\">\r\n                                        <span class=\"name\">" + Utils.ObjectToStr(hotdr1["title"]) + "</span>\r\n                                        <span class=\"date\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr1["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                                    </p>\r\n                                    <p class=\"desc\">" + Utils.ObjectToStr(hotdr1["zhaiyao"]) + "</p>\r\n                                </div>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"more container \" aos-delay=\"200\" aos=\"fade-up\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews_list",57));

	templateBuilder.Append("\">查看更多</a></div>\r\n    </div>\r\n    <div class=\"pb75\" style=\"background:#f2f2f4;\">\r\n        <h1 class=\"title pt30\">产品动态</h1>\r\n        <div class=\"container clearfix mt30\">\r\n            <div class=\"row\">\r\n                <div class=\"news_left col-lg-6 col-xl-6\" aos-delay=\"200\" aos=\"fade-up\">\r\n                    ");
	DataTable productnews1 = get_article_list("companynews", 58, 1, "status=0");

	foreach(DataRow dr in productnews1.Rows)
	{

	templateBuilder.Append("\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\r\n                        \" target=\"_blank\">\r\n                        ");
	if (Utils.ObjectToStr(dr["img_url"])!="")
	{

	templateBuilder.Append("\r\n                        <div class=\"news_img\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n                        </div>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <div class=\"news_img\">\r\n                            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/dong_07.jpg\" />\r\n                        </div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <h2>" + Utils.ObjectToStr(dr["title"]) + "</h2>\r\n                        <div class=\"desc\">\r\n                            " + Utils.ObjectToStr(dr["zhaiyao"]) + "\r\n                        </div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </a>\r\n                </div>\r\n                <div class=\"news_right col-lg-6 col-xl-6 news_right1\">\r\n                    <ul>\r\n                        ");
	DataTable productnews2 = get_article_list("companynews", 58, 4, "status=0");

	int hotdr2__loop__id=0;
	foreach(DataRow hotdr2 in productnews2.Rows)
	{
		hotdr2__loop__id++;


	templateBuilder.Append("\r\n                        <li aos-delay=\"");
	templateBuilder.Append(hotdr1__loop__id.ToString());

	templateBuilder.Append("00\" aos=\"fade-up\">\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("companynews_show",Utils.ObjectToStr(hotdr2["id"])));

	templateBuilder.Append("\r\n                                \" target=\"_blank\" class=\"clearfix\">\r\n                                <span class=\"left num\">0");
	templateBuilder.Append(hotdr2__loop__id.ToString());

	templateBuilder.Append("</span>\r\n                                <div class=\"right\">\r\n                                    <p class=\"clearfix\">\r\n                                        <span class=\"name\">" + Utils.ObjectToStr(hotdr2["title"]) + "</span>\r\n                                        <span class=\"date\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr2["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                                    </p>\r\n                                    <p class=\"desc\">" + Utils.ObjectToStr(hotdr2["zhaiyao"]) + "</p>\r\n                                </div>\r\n                            </a>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"more container\" aos-delay=\"200\" aos=\"fade-up\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("companynews_list",58));

	templateBuilder.Append("\">查看更多</a></div>\r\n    </div>\r\n</div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer-header\">\r\n      <div class=\"container clearfix\">\r\n          <div class=\"row\">\r\n              <div class=\"footer-content col-lg-4 col-xl-4 \">\r\n                  <div class=\"nav-footer clearfix\">\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a>\r\n                      <!--<a href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a>-->\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a>\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a>\r\n                  </div>\r\n              </div>\r\n              <div class=\"footer-content  col-lg-4 col-xl-4 footer-logo \">\r\n                  <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo1.png\" />\r\n              </div>\r\n              <div class=\"footer-content  col-lg-4 col-xl-4 wechat\">\r\n                  <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/code.jpg\" />\r\n                  <p>微信公众号</p>\r\n              </div>\r\n          </div>\r\n      </div>\r\n  </div>\r\n  <div class=\"footer-footer\">\r\n      ");
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


	templateBuilder.Append("\r\n    <script src=\"https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script src=\"https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.waypoints.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/aos.js\"></");
	templateBuilder.Append("script>\r\n<!--/Footer-->\r\n    <script>\r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once: false\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
