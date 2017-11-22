<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/11/22 14:58:31.
		本页面代码由DTcms模板引擎生成于 2017/11/22 14:58:31. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "product";

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"renderer\" content=\"webkit\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/aos.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.waypoints.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n<body>\r\n    <!--Header-->\r\n    ");

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

	templateBuilder.Append("\">排课吧</a>\r\n                            <a href=\"\">教师成长档案</a>\r\n                            <a href=\"");
	templateBuilder.Append(linkurl("product_qu"));

	templateBuilder.Append("\">区域教育大数据平台</a>\r\n                        </div>\r\n                    </li>\r\n                    <li><a  href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    //var href = window.location.href;\r\n    //$('.nav ul li').each(function () {\r\n\r\n    //    itemhref = $(this).children('a').attr('href');\r\n    //    itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n    //    if (href.indexOf(itemhref) > 1) {\r\n    //        $(this).addClass('selected').siblings().removeClass('selected');\r\n    //    }\r\n    //})\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"main\">\r\n        <div class=\"case_bg pr\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_02.png\"/>\r\n            <div class=\"zi w1200\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_zi1.png\" class=\"qu_zi1\" aos-delay=\"200\" aos=\"fade-up\"/>\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_zi2.png\" class=\"qu_zi2\" aos-delay=\"400\" aos=\"fade-up\"/>\r\n            </div>\r\n        </div>\r\n        <div style=\"background:#fff;\">\r\n            <h1 class=\"title\">平台特色</h1>\r\n            <div class=\"ul_feature w1200 mt20\">\r\n                <ul class=\"clearfix\">\r\n                    <li aos-delay=\"600\" aos=\"fade-up\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n\r\n                                <h1>多维数据共享与交互</h1>\r\n                                <p>瓦解信息孤岛，实现数据的便捷共享与交互</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                学生信息、教师信息、课程信息、教学设施、教学资产、学生选课数据、学生成绩、考勤信息、一卡通信息、图书馆借还书数据等各类数据统一接口，实现数据便捷共享与交互，易于扩充、升级和维护。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li aos-delay=\"800\" aos=\"fade-up\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n                                <h1>统一身份认证单点登录</h1>\r\n                                <p>打通系统验证，登录一个账号即可随心访问应用系统</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                可将已有系统与新系统无缝对接，让信息化办公无需登录多个账号、无需切换多个系统，一个账号即可访问多个系统，一个平台满足多个场景需求，快捷体验智慧校园的便利。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li aos-delay=\"1000\" aos=\"fade-up\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n                                <h1>应用商店让定制更轻松</h1>\r\n                                <p>多元系统应用，定制、组合，灵活应对教学管理需求</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                融合先进教育技术研发多款云应用，汇集成应用商店。可实现软件定制化调用，灵活应对中高考制度变化、德育管理、教务管理及教学质量工程建设等问题。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n        <div class=\"strength\">\r\n            <h1 class=\"title1 pt30\">系统优势</h1>\r\n            <div class=\"strength_ul w1200\">\r\n                <ul class=\"clearfix\">\r\n                    <li>\r\n                        <i aos-delay=\"200\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"400\" aos=\"fade-up\">理论先进<br />专业性强</p>\r\n                    </li>\r\n                    <li>\r\n                        <i aos-delay=\"600\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"800\" aos=\"fade-up\">业务精细&nbsp;&nbsp;操作简单<br />模块易于拆分</p>\r\n                    </li>\r\n                    <li>\r\n                        <i aos-delay=\"1000\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"1200\" aos=\"fade-up\">采用分布式部署<br />具有高度的内聚性和透明性</p>\r\n                    </li>\r\n                    <li>\r\n                        <i aos-delay=\"1400\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"1600\" aos=\"fade-up\">为学校教学活动提供<br />一个展望外界的窗口</p>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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


	templateBuilder.Append("\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/aos.js\"></");
	templateBuilder.Append("script>\r\n    <!--/Footer-->\r\n    <script>\r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once:false\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
