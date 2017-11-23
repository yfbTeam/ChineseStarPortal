<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/11/23 11:27:30.
		本页面代码由DTcms模板引擎生成于 2017/11/23 11:27:30. 
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
	templateBuilder.Append("\" />\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/bootstrap-grid.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/aos.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n</head>\r\n<body>\r\n    <!--Header-->\r\n    ");

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

	templateBuilder.Append("\">排课吧</a>\r\n                                <a href=\"\">教师成长档案</a>\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("product_qu"));

	templateBuilder.Append("\">区域教育大数据平台</a>\r\n                            </div>\r\n                        </li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a></li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    //var href = window.location.href;\r\n    //$('.nav ul li').each(function () {\r\n\r\n    //    itemhref = $(this).children('a').attr('href');\r\n    //    itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n    //    if (href.indexOf(itemhref) > 1) {\r\n    //        $(this).addClass('selected').siblings().removeClass('selected');\r\n    //    }\r\n    //})\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"main\">\r\n        <div class=\"case_bg pr\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_02.png\"/>\r\n            <div class=\"zi container\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_zi1.png\" class=\"qu_zi1 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-6\" aos-delay=\"200\" aos=\"fade-up\" style=\"position:absolute\"/>\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu_zi2.png\" class=\"qu_zi2 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-6\" aos-delay=\"400\" aos=\"fade-up\" style=\"position:absolute\"/>\r\n            </div>\r\n        </div>\r\n        <div style=\"background:#fff;margin-top:-30px;\">\r\n            <h1 class=\"title\">平台特色</h1>\r\n            <div class=\"ul_feature container mt20\">\r\n                <ul class=\"clearfix row\">\r\n                    <li aos-delay=\"600\" aos=\"fade-up\" class=\"col-lg-4 col-xl-4 col-md-12 col-sm-12 col-12\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n\r\n                                <h1>多维数据共享与交互</h1>\r\n                                <p>瓦解信息孤岛，实现数据的便捷共享与交互</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                学生信息、教师信息、课程信息、教学设施、教学资产、学生选课数据、学生成绩、考勤信息、一卡通信息、图书馆借还书数据等各类数据统一接口，实现数据便捷共享与交互，易于扩充、升级和维护。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li aos-delay=\"800\" aos=\"fade-up\" class=\"col-lg-4 col-xl-4 col-md-12 col-sm-12 col-12\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n                                <h1>统一身份认证单点登录</h1>\r\n                                <p>打通系统验证，登录一个账号即可随心访问应用系统</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                可将已有系统与新系统无缝对接，让信息化办公无需登录多个账号、无需切换多个系统，一个账号即可访问多个系统，一个平台满足多个场景需求，快捷体验智慧校园的便利。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li aos-delay=\"1000\" aos=\"fade-up\" class=\"col-lg-4 col-xl-4 col-md-12 col-sm-12 col-12\">\r\n                        <div>\r\n                            <div class=\"head_feature\">\r\n                                <h1>应用商店让定制更轻松</h1>\r\n                                <p>多元系统应用，定制、组合，灵活应对教学管理需求</p>\r\n                            </div>\r\n                            <div class=\"head_body\">\r\n                                融合先进教育技术研发多款云应用，汇集成应用商店。可实现软件定制化调用，灵活应对中高考制度变化、德育管理、教务管理及教学质量工程建设等问题。\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n        <div class=\"strength mt30 clearfix\">\r\n            <h1 class=\"title1\">系统优势</h1>\r\n            <div class=\"strength_ul container\">\r\n                <ul class=\"clearfix row\">\r\n                    <li class=\"col-lg-3 col-xl-3 col-md-6 col-sm-6 col-6\">\r\n                        <i aos-delay=\"200\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"400\" aos=\"fade-up\">理论先进<br />专业性强</p>\r\n                    </li>\r\n                    <li class=\"col-lg-3 col-xl-3 col-md-6 col-sm-6 col-6\">\r\n                        <i aos-delay=\"600\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"800\" aos=\"fade-up\">业务精细&nbsp;&nbsp;操作简单<br />模块易于拆分</p>\r\n                    </li>\r\n                    <li class=\"col-lg-3 col-xl-3 col-md-6 col-sm-6 col-6\">\r\n                        <i aos-delay=\"1000\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"1200\" aos=\"fade-up\">采用分布式部署<br />具有高度的内聚性和透明性</p>\r\n                    </li>\r\n                    <li class=\"col-lg-3 col-xl-3 col-md-6 col-sm-6 col-6\">\r\n                        <i aos-delay=\"1400\" aos=\"fade-up\"></i>\r\n                        <p aos-delay=\"1600\" aos=\"fade-up\">为学校教学活动提供<br />一个展望外界的窗口</p>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n        <div class=\"module \">\r\n            <h1 class=\"title\">模块随心配</h1>\r\n            <div class=\"container mt20 clearfix\">\r\n                <div class=\"row\">\r\n                    <div class=\"module_left col-lg-9 col-xl-9\">\r\n                        <ul class=\"clearfix\">\r\n                            <li aos-delay=\"200\" aos=\"fade-right\"><i></i><p>统一身份认证平台</p></li>\r\n                            <li aos-delay=\"400\" aos=\"fade-right\"><i></i><p>教师成长档案</p></li>\r\n                            <li aos-delay=\"600\" aos=\"fade-right\"><i></i><p>学生活动</p></li>\r\n                            <li aos-delay=\"800\" aos=\"fade-right\"><i></i><p>资源预定</p></li>\r\n                            <li aos-delay=\"1000\" aos=\"fade-right\"><i></i><p>学生社团</p></li>\r\n                            <li aos-delay=\"1200\" aos=\"fade-right\"><i></i><p>排课吧云平台</p></li>\r\n                            <li aos-delay=\"1400\" aos=\"fade-right\"><i></i><p>自主学习平台</p></li>\r\n                            <li aos-delay=\"1600\" aos=\"fade-right\"><i></i><p>校本课程</p></li>\r\n                            <li aos-delay=\"1800\" aos=\"fade-right\"><i></i><p>德育管理</p></li>\r\n                            <li aos-delay=\"2000\" aos=\"fade-right\"><i></i><p>考试系统</p></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"module_right col-lg-3 col-xl-3\">\r\n                        <div aos-delay=\"2200\" aos=\"fade-left\">\r\n                            华人启星<span>（chinese-star.cn）</span>祝您成功开启DT时代教育新的一页。资讯与合作>\r\n                        </div>\r\n                        <a href=\"javascript:;\" class=\"go\" aos-delay=\"2400\" aos=\"fade-left\"></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"jiagou mt30\">\r\n            <h1 class=\"title \">平台架构</h1>\r\n            <div class=\"container mt20\" style=\"text-align:center;padding-bottom:20px;\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/qu1_03.png\" aos-delay=\"200\" aos=\"fade-up\"/>\r\n            </div>\r\n        </div>\r\n        <div class=\"analysis\">\r\n            <h1 class=\"title\">数据分析</h1>\r\n            <div class=\"mt20 container clearfix\">\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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
	templateBuilder.Append("/js/jquery.waypoints.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/aos.js\"></");
	templateBuilder.Append("script>\r\n    <!--/Footer-->\r\n    <script>\r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once:false\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
