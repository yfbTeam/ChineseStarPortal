<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/12/1 13:06:11.
		本页面代码由DTcms模板引擎生成于 2017/12/1 13:06:11. 
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

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"header-wrap\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <a class=\"logo col-lg-2 col-xl-2 col-10\" href=\"");
	templateBuilder.Append(linkurl("Index"));

	templateBuilder.Append("\">\r\n                    <img src=\"");
	templateBuilder.Append(site.logo.ToString());

	templateBuilder.Append("\" />\r\n                </a>\r\n                <div class=\"toggle col-2\"></div>\r\n                <div class=\"nav col-lg-10 col-xl-10\">\r\n                    <ul class=\"clearfix right\">\r\n                        <li><a href=\"");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"main\">\r\n        <div class=\"case_bg pr\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_01.png\" />\r\n            <div class=\"zi container\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_title.png\" class=\"col-lg-4 col-xl-4 growup_zi1\" style=\"position:absolute\"  aos-delay=\"200\" aos=\"fade-up\" />\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_title2.png\" class=\"col-lg-8 col-xl-8 growup_zi2\" style=\"position:absolute\" aos-delay=\"400\" aos=\"fade-up\"/>\r\n                <div class=\"row\" style=\"margin-top:26%\">\r\n                    <div class=\"col-lg-6 col-xl-6\">\r\n                        <button type=\"button\" class=\"btn btn1 right cursor\" style=\"margin-right:40px;\" aos-delay=\"600\" aos=\"fade-right\">教学业绩管理</button>\r\n                    </div>\r\n                    <div class=\"col-lg-6 col-xl-6\">\r\n                        <button type=\"button\" class=\"btn btn2 left cursor\" style=\"margin-left:40px;\" aos-delay=\"600\" aos=\"fade-left\">教学质量评价</button>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"container sort\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-4 cursor\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_02.png\" aos-delay=\"800\" aos=\"fade-up\"/>\r\n                    <p>教学业绩分类管理</p>\r\n                </div>\r\n                <div class=\"col-lg-4 cursor\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_03.png\" aos-delay=\"1000\" aos=\"fade-up\"/>\r\n                    <p>教学质量智能评价</p>\r\n                </div>\r\n                <div class=\"col-lg-4 cursor\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_04.png\" aos-delay=\"1200\" aos=\"fade-up\"/>\r\n                    <p>统计结果多维高效</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"growup_module\">\r\n            <h2 class=\"growuo_title\">\r\n                <div class=\"container\">\r\n                    <div class=\"row pr\">\r\n                        <span class=\"col-lg-4\">我是学生，我能做什么?</span>\r\n                    </div>\r\n                </div>\r\n            </h2>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-6\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_05.png\" aos-delay=\"400\" aos=\"fade-right\"/>\r\n                    </div>\r\n                    <div class=\"col-lg-6\">\r\n                        <h3 aos-delay=\"200\" aos=\"fade-left\">定期评价，反馈教学状态</h3>\r\n                        <p aos-delay=\"400\" aos=\"fade-left\">学生通过参与系统发起的期初、期末等定期评价，匿名完成对各个任课教师的教学质量评价，直观反馈教师授课情况。通过即时报功能可实时上报教学问题，推动教师教学质量的全方位改进。</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"growup_module\">\r\n            <h2 class=\"growuo_title\">\r\n                <div class=\"container\">\r\n                    <div class=\"row pr\">\r\n                        <span class=\"col-lg-4\">我是普通教师，我能做什么?</span>\r\n                    </div>\r\n                </div>\r\n            </h2>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-6\">\r\n                        <h3 aos-delay=\"200\" aos=\"fade-right\">业绩上报及评价查看，提升教学质量</h3>\r\n                        <p aos-delay=\"400\" aos=\"fade-right\">教师可通过系统对自己所获得的教学业绩进行分类管理及查询，记录教学成果，展示教学实力。通过查看学生及督导专家对其进行的教学质量评价结果，做到扬长避短，稳步提升自身教学质量。</p>\r\n                        \r\n                    </div>\r\n                    <div class=\"col-lg-6\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_06.png\" style=\"margin-left:20%;\" aos-delay=\"400\" aos=\"fade-left\"/>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"growup_module\">\r\n            <h2 class=\"growuo_title\">\r\n                <div class=\"container\">\r\n                    <div class=\"row pr\">\r\n                        <span class=\"col-lg-4\">我是专家，我能做什么?</span>\r\n                    </div>\r\n                </div>\r\n            </h2>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-6\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_07.png\" aos-delay=\"400\" aos=\"fade-right\"/>\r\n                    </div>\r\n                    <div class=\"col-lg-6\">\r\n                        <h3 aos-delay=\"200\" aos=\"fade-left\">听课评价，监督教学质量</h3>\r\n                        <p aos-delay=\"400\" aos=\"fade-left\">督导专家通过系统可选择指定的老师进行听课评价，记录并反馈教师授课情况，总结教师授课的优点及不足，给出中肯的建议，实现教学情况的有效监督，促进教师教学质量的高效提升。</p>\r\n                       \r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"growup_module\">\r\n            <h2 class=\"growuo_title\">\r\n                <div class=\"container\">\r\n                    <div class=\"row pr\">\r\n                        <span class=\"col-lg-4\">我是管理员，我能做什么?</span>\r\n                    </div>\r\n                </div>\r\n            </h2>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-6\">\r\n                        <h3 aos-delay=\"200\" aos=\"fade-right\">业绩维护及评价统计，决策教学管理</h3>\r\n                        <p aos-delay=\"400\" aos=\"fade-right\">管理者可通过系统分类维护教师的教学成果及教学业绩，实现对教师教学业绩数据的统计，通过权限的管理及各项任务的分配，完成对教师教学质量多方位评价结果的收集，从而为教学管理的各项决策提供依据。</p>\r\n                    </div>\r\n                    <div class=\"col-lg-6\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/growup_08.png\" style=\"margin-left:20%;\" aos-delay=\"400\" aos=\"fade-left\"/>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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
	templateBuilder.Append("script>\r\n    <!--/Footer-->\r\n    <script>\r\n\r\n        AOS.init({\r\n            easing: 'ease-out-back',\r\n            duration: 1000,\r\n            once:false\r\n        });\r\n        $(function () {\r\n            hover('.sort .row>div', 'animated bounce');\r\n            hover('.btn', 'animated pulse')\r\n        })\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
