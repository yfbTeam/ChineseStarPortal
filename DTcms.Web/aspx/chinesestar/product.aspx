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
	templateBuilder.Append("/css/aos.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n    <div class=\"main\">\r\n        <div class=\"banner_paikeba\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/paikeba_01.png\" alt=\"\" />\r\n            <div class=\"container wrap\">\r\n                <div class=\"row\">\r\n                    <div class=\"banner_paikeba_zi col-lg-5 col-xl-5\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/banner_zi.png\" alt=\"\" aos-delay=\"200\" aos=\"fade-up\" />\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"reform_background\">\r\n            <h1 class=\"title pt30\">改革背景</h1>\r\n            <div class=\"descration\" aos-delay=\"400\" aos=\"fade-up\">\r\n                国务院于2014年9月出台《关于深化考试招生制度改革的实施意见》，“不分文理” “外语等社会化考试一年多考”<br />“高中学业水平考试成绩纳入高考”等教育改革不断推进，到2020年将基本形成分类考试、综合评价、多元录取的招生考试模式。新方案中有20多种选课组合方式，<br />如何进行排选课、如何管理教师及教室等成为此次改革遇到的首要问题。\r\n            </div>\r\n            <div class=\"mt20 container\">\r\n                <div class=\"row\">\r\n                    <ul class=\"reform_background_ul1 col-lg-4 col-xl-4\">\r\n                        <li aos-delay=\"400\" aos=\"fade-right\">一考定终身</li>\r\n                        <li aos-delay=\"600\" aos=\"fade-right\">分数至上</li>\r\n                        <li aos-delay=\"800\" aos=\"fade-right\">千人一卷</li>\r\n                    </ul>\r\n                    <div class=\"col-lg-4 col-xl-4 reform_background_img\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/vs_03.png\" aos-delay=\"200\" aos=\"fade-up\"/></div>\r\n                    <ul class=\"reform_background_ul2 col-lg-4 col-xl-4\">\r\n                        <li aos-delay=\"400\" aos=\"fade-left\">分层走班</li>\r\n                        <li aos-delay=\"600\" aos=\"fade-left\">个性化教学</li>\r\n                        <li aos-delay=\"800\" aos=\"fade-left\">多元化教学</li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"paikeba_yun\">\r\n            <h1 class=\"title1 pt30\">排课吧云平台应运而生</h1>\r\n            <div class=\"container clearfix\">\r\n                <div class=\"left yun_left\"  aos-delay=\"200\" aos=\"fade-right\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/yun.png\"/>\r\n                </div>\r\n                <div class=\"left yun_right\">\r\n                    <ul>\r\n                        <li  aos-delay=\"200\" aos=\"fade-left\" >\r\n                            <i></i>\r\n                            集结教育及研发一线专家人才\r\n                        </li>\r\n                        <li  aos-delay=\"400\" aos=\"fade-left\" >\r\n                            <i></i>\r\n                            注入大量资金及技术\r\n                        </li>\r\n                        <li  aos-delay=\"600\" aos=\"fade-left\" >\r\n                            <i></i>\r\n                            参考国际化排选课理念\r\n                        </li>\r\n                        <li aos-delay=\"800\" aos=\"fade-left\" >\r\n                            <i></i>\r\n                            在多校测试并高效使用\r\n                        </li>\r\n                        <li  aos-delay=\"1000\" aos=\"fade-left\" >\r\n                            <i></i>\r\n                            荣获国家级专利认证\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"Characteristic\">\r\n            <h1 class=\"title pt30\">产品特点</h1>\r\n            <div class=\"container clearfix\" style=\"position:relative;margin-top:40px;\">\r\n                <div class=\"left Characteristic_left\" aos-duration=\"1000\" aos-delay=\"200\" aos=\"fade-right\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/paikeba_03.png\" />\r\n                </div>\r\n                <div class=\"left Characteristic_right \">\r\n                    <ul>\r\n                        <li  aos-delay=\"200\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>排选课专家服务团队</span>，帮学校打造适宜的排课实施方案\r\n                        </li>\r\n                        <li  aos-delay=\"400\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>满足学生全部选课意愿</span>，让学生可以选择适合自己的老师\r\n                        </li>\r\n                        <li  aos-delay=\"600\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>独家开发体验式算法</span>，实现课程排列组合用信息化技术解决教务难题\r\n                        </li>\r\n                        <li  aos-delay=\"800\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>多样化排选课模式</span>(传统课表、小走班、大走班及完全走班)，实现课程编排需求\r\n                        </li>\r\n                        <li  aos-delay=\"1000\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>全面自由规则设置</span>（模拟人工教务排课思路，考虑学校教学实际）\r\n                        </li>\r\n                        <li  aos-delay=\"1200\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>多维度数据报表</span>，把握关键信息，为决策提供依据，便于教务管理\r\n                        </li>\r\n                        <li  aos-delay=\"1400\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>数据安全体系完备</span>，产品可采用多种形式的部署方式\r\n                        </li>\r\n                        <li  aos-delay=\"1600\" aos=\"fade-left\">\r\n                            <i></i>\r\n                            <span>大数据云平台流畅稳定</span>，确保高峰期系统流程稳定\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"Function\">\r\n            <h1 class=\"title1 pt30\">产品功能</h1>\r\n            <div class=\"container\">\r\n                <div class=\"flexSlider\" aos-delay=\"200\" aos=\"fade-up\">\r\n                    <ul class=\"slides\">\r\n                        ");
	DataTable focusNews = get_article_list("product",59, 8, "status=0");

	foreach(DataRow dr in focusNews.Rows)
	{

	templateBuilder.Append("\r\n                        <li>\r\n                            <div class=\"img\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></div>\r\n                            <div class=\"title2\">" + Utils.ObjectToStr(dr["title"]) + "</div>\r\n                            <div class=\"zhaiyao\">" + Utils.ObjectToStr(dr["zhaiyao"]) + "</div>\r\n                            <div class=\"content\">" + Utils.ObjectToStr(dr["content"]) + "</div>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n<!--Footer-->\r\n");

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
	templateBuilder.Append("script>\r\n<!--/Footer-->\r\n    <script>\r\n        $(function () {\r\n            $(\".flexSlider\").flexslider({\r\n                animation: \"slide\",\r\n                directionNav: true,\r\n                controlNav: false,\r\n                pauseOnAction: false,\r\n                prevText: \"<img src='");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/prev.png'/>\",           //String: Set the text for the \"previous\" directionNav item\r\n                nextText: \"<img src='");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/next.png'/>\",\r\n            });\r\n        });\r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once:false\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
