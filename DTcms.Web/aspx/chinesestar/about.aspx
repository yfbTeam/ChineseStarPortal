<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.category" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/12/4 10:50:39.
		本页面代码由DTcms模板引擎生成于 2017/12/4 10:50:39. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "about";

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
	templateBuilder.Append("/css/aos.css\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <a class=\"logo col-lg-2 col-xl-2 col-9\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                    <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n                </a>\r\n                <div class=\"toggle col-3\"><i class=\"icon_menu\"></i></div>\r\n                <div class=\"a col-4\"></div>\r\n                <div class=\"nav col-lg-10 col-xl-10 col-8\">\r\n                    <ul class=\"clearfix right\">\r\n                        <li><a href=\"");
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

	templateBuilder.Append("\">成功案例</a></li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<script>\r\n    $('.toggle').click(function () {\r\n        if ($('.nav').is(':hidden')) {\r\n            $('.nav').show();\r\n        } else {\r\n            $('.nav').hide();\r\n        }\r\n    })\r\n    //var href = window.location.href;\r\n    //$('.nav ul li').each(function () {\r\n\r\n    //    itemhref = $(this).children('a').attr('href');\r\n    //    itemhref = itemhref.slice(0, itemhref.lastIndexOf('.'))\r\n    //    if (href.indexOf(itemhref) > 1) {\r\n    //        $(this).addClass('selected').siblings().removeClass('selected');\r\n    //    }\r\n    //})\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n    <div class=\"main\">\r\n        <div class=\"case_bg pr\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about-bg_02.png\" alt=\"\" />\r\n            <div class=\"zi container\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about.png\" alt=\"\" aos-delay=\"200\" aos=\"fade-up\" class=\"case_zi\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"jianjie\">\r\n            <h1 class=\"title\">公司简介</h1>\r\n            <div class=\"container clearfix mt20\" style=\"padding-bottom:20px;\">\r\n                <div class=\"row\">\r\n                    <div class=\"company_img col-lg-5 col-xl-5 col-12\" aos-delay=\"400\" aos=\"fade-right\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/company_img.jpg\" alt=\"\" />\r\n                    </div>\r\n                    <div class=\"company_desc col-lg-7 col-xl-7 col-12\" aos-delay=\"600\" aos=\"fade-left\">\r\n                        <p>北京华人启星科技有限公司位于北京丰台科技园区诺德中心，汇集了一批多年扎根教育体制改革、“想为教育做点什么”的高精尖人才、首席框架师及来自教育教学一线的管理者，致力于为教育行业提供个性化的综合应用解决方案。不断深化智能校园建设，增加研发投入，凭借专业技术水平和大量国家专利优势，已圆满完成一系列创新型教学项目，触及全国各地多个行业，逐渐形成集科研、生产、经销、咨询、培训、服务为一体的专业型团队。</p>\r\n                        <p>深耕细作，开启未来，华人启星将与合作伙伴携手搭建多层次的交流平台，继续贯彻“以技术为依托向各行业拓展，以北京市场为中心向全国市场拓展”的发展理念，让新思路、新理念真正落地，以卓越的信誉和品牌树立行业典范。</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"zizhi\">\r\n            <h1 class=\"title pt30\">荣誉资质</h1>\r\n            <div class=\"zhi_img container mt20 \"  style=\"padding-bottom:20px;\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/ss_03.jpg\" alt=\"\" aos-delay=\"800\" aos=\"fade-up\"/>\r\n            </div>\r\n        </div>\r\n        <div class=\"\">\r\n            <h1 class=\"title pt30\">企业愿景</h1>\r\n            <div class=\"zhi_img container mt20\"  style=\"padding-bottom:20px;\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/as_07.jpg\" alt=\"\" aos-delay=\"1000\" aos=\"fade-up\"/>\r\n            </div>\r\n        </div>\r\n    </div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer-header\">\r\n      <div class=\"container clearfix\">\r\n          <div class=\"row\">\r\n              <div class=\"footer-content col-lg-4 col-xl-4 col-md-4\">\r\n                  <div class=\"nav-footer clearfix\">\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\">关于我们</a>\r\n                      <!--<a href=\"");
	templateBuilder.Append(linkurl("product"));

	templateBuilder.Append("\">产品中心</a>-->\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("companynews"));

	templateBuilder.Append("\">企业新闻</a>\r\n                      <a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\">成功案例</a>\r\n                  </div>\r\n              </div>\r\n              <div class=\"footer-content  col-lg-4 col-xl-4 footer-logo col-md-4\">\r\n                  <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo1.png\" />\r\n              </div>\r\n              <div class=\"footer-content  col-lg-4 col-xl-4 wechat col-md-4\">\r\n                  <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/code.jpg\" />\r\n                  <p>微信公众号</p>\r\n              </div>\r\n          </div>\r\n      </div>\r\n  </div>\r\n  <div class=\"footer-footer \">\r\n      <div class=\"container\">\r\n          ");
	templateBuilder.Append(site.copyright.ToString());

	templateBuilder.Append("<span>|</span>地址：");
	templateBuilder.Append(site.address.ToString());

	templateBuilder.Append("<span>|</span>邮编：");
	templateBuilder.Append(site.email.ToString());

	templateBuilder.Append("<span>|</span>联系电话：");
	templateBuilder.Append(site.tel.ToString());

	templateBuilder.Append("<span>|</span>传真：");
	templateBuilder.Append(site.fax.ToString());

	templateBuilder.Append("\r\n      </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n    <script src=\"https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script src=\"https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\" integrity=\"sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ\" crossorigin=\"anonymous\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/aos.js\"></");
	templateBuilder.Append("script>\r\n    \r\n    <script>\r\n        \r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once: false\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
