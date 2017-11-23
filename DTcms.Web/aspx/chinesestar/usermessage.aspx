<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.usermessage" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/11/23 15:10:55.
		本页面代码由DTcms模板引擎生成于 2017/11/23 15:10:55. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>站内短信息 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	function ExecPostBack(checkValue) {\r\n		if (arguments.length == 1) {\r\n			ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_delete', checkValue, '#turl');\r\n		}else{\r\n			var valueArr = '';\r\n			$(\"input[name='checkId']:checked\").each(function(i){\r\n				valueArr += $(this).val();\r\n				if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n					valueArr += \",\"\r\n				}\r\n			});\r\n			ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_delete', valueArr, '#turl');\r\n		}\r\n    }\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  <div class=\"line30\"></div>\r\n\r\n  <div class=\"info-wrap\">\r\n    <!--左侧导航-->\r\n    ");

	templateBuilder.Append("    <div class=\"info-box\">\r\n      <div class=\"avatar-box\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\" class=\"img-box\">\r\n          ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" />\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/user-avatar.png\" />\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </a>\r\n        <h3>\r\n        ");
	if (userModel.nick_name!="")
	{

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        </h3>\r\n        <p>余额：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append(" 元</p>\r\n        <p>积分：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append(" 分</p>					\r\n      </div>\r\n      <ul class=\"side-nav\">\r\n        <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">订单管理</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("userorder","close"));

	templateBuilder.Append("\">已关闭订单</a>\r\n        </li>\r\n        <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户余额</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">我的积分</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">站内消息</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\">邀请好友</a>\r\n        </li>\r\n        <li>\r\n          \r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\">个人资料</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\">头像设置</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\">修改密码</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出登录</a>\r\n        </li>\r\n      </ul>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/左侧导航-->\r\n    \r\n    <!--右侧内容-->\r\n    <div class=\"home-box\">\r\n      ");
	if (action=="system")
	{

	templateBuilder.Append("\r\n      <!--系统消息-->\r\n      <div class=\"u-tab-head\">\r\n        <p>\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a>\r\n        </p>\r\n        <span>\r\n          <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n        </span>\r\n      </div>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>系统消息</strong>\r\n        </div>\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n          ");
	DataTable list = get_user_message_list(10, page, "accept_user_name='"+userModel.user_name+"' and type=1", out totalcount);

	templateBuilder.Append("<!--取得一个DataTable-->\r\n          ");
	string pagelist = get_page_link(10, page, totalcount, "usermessage", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n          ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n            <tr>\r\n              <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n              <td><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n              <td width=\"30\" align=\"center\">\r\n                ");
	if (Utils.ObjectToStr(dr["is_read"])=="1")
	{

	templateBuilder.Append("\r\n                  已读\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                  未读\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </td>\r\n              <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n              <td width=\"38\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n            </tr>\r\n          ");
	}	//end for if

	if (list.Rows.Count==0)
	{

	templateBuilder.Append("\r\n            <tr><td align=\"center\">暂无记录...</td></tr>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </table>\r\n        <div class=\"page-foot\">\r\n          <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n          <div class=\"page-btns\">\r\n            <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n            <span class=\"pipe\">|</span>\r\n            <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\" /><!--存在跳转的URL值-->\r\n      <!--/系统消息-->\r\n      \r\n      ");
	}
	else if (action=="accept")
	{

	templateBuilder.Append("\r\n      <!--收件箱-->\r\n      <div class=\"u-tab-head\">\r\n        <p>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a>\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a>\r\n        </p>\r\n        <span>\r\n          <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n        </span>\r\n      </div>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>收件箱</strong>\r\n        </div>\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n          ");
	DataTable list = get_user_message_list(10, page, "accept_user_name='"+userModel.user_name+"' and type=2", out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist = get_page_link(10, page, totalcount, "usermessage", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n          ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n            <tr>\r\n              <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n              <td width=\"48\">\r\n                ");
	string user_avatar = get_user_avatar(Utils.ObjectToStr(dr["post_user_name"]));

	if (user_avatar=="")
	{

	templateBuilder.Append("\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/user-avatar.png\" width=\"48\" height=\"48\" />\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(user_avatar));
	templateBuilder.Append("\" width=\"48\" height=\"48\" alt=\"" + Utils.ObjectToStr(dr["post_user_name"]) + "\" />\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </td>\r\n              <td><strong>" + Utils.ObjectToStr(dr["post_user_name"]) + "</strong><br /><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n              <td width=\"30\" align=\"center\">\r\n                ");
	if (Utils.ObjectToStr(dr["is_read"])=="1")
	{

	templateBuilder.Append("\r\n                  已读\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                  未读\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </td>\r\n              <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n              <td width=\"30\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n            </tr>\r\n          ");
	}	//end for if

	if (list.Rows.Count==0)
	{

	templateBuilder.Append("\r\n            <tr><td align=\"center\">暂无记录...</td></tr>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </table>\r\n        <div class=\"page-foot\">\r\n          <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n          <div class=\"page-btns\">\r\n            <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n            <span class=\"pipe\">|</span>\r\n            <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\" />\r\n      <!--/收件箱-->\r\n      \r\n      ");
	}
	else if (action=="send")
	{

	templateBuilder.Append("\r\n      <!--发件箱-->\r\n      <div class=\"u-tab-head\">\r\n        <p>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a>\r\n          <a class=\"selected\" href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a>\r\n        </p>\r\n        <span>\r\n          <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n        </span>\r\n      </div>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>发件箱</strong>\r\n        </div>\r\n        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n          ");
	DataTable list = get_user_message_list(10, page, "post_user_name='"+userModel.user_name+"' and type=3", out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist = get_page_link(10, page, totalcount, "usermessage", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n          ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n            <tr>\r\n              <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n              <td width=\"48\">\r\n                ");
	string user_avatar = get_user_avatar(Utils.ObjectToStr(dr["accept_user_name"]));

	if (user_avatar=="")
	{

	templateBuilder.Append("\r\n                <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/user-avatar.png\" width=\"48\" height=\"48\" />\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(user_avatar));
	templateBuilder.Append("\" width=\"48\" height=\"48\" alt=\"" + Utils.ObjectToStr(dr["accept_user_name"]) + "\" />\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n              </td>\r\n              <td><strong>" + Utils.ObjectToStr(dr["accept_user_name"]) + "</strong><br /><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n              <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n              <td width=\"30\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n            </tr>\r\n          ");
	}	//end for if

	if (list.Rows.Count==0)
	{

	templateBuilder.Append("\r\n            <tr><td align=\"center\">暂无记录...</td></tr>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </table>\r\n        <div class=\"page-foot\">\r\n          <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n          <div class=\"page-btns\">\r\n            <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n            <span class=\"pipe\">|</span>\r\n            <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\" />\r\n      <!--/发件箱-->\r\n      \r\n      ");
	}
	else if (action=="add")
	{

	templateBuilder.Append("\r\n      <!--发布短信息-->\r\n      <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\">\r\n		$(function(){\r\n		  //初始化表单\r\n		  AjaxInitForm('#addForm', '#btnSubmit', 1, '#turl');\r\n		});\r\n	  </");
	templateBuilder.Append("script>\r\n      <div class=\"u-tab-head\">\r\n        <p>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a>\r\n        </p>\r\n      </div>\r\n      <div class=\"u-tab-content\">\r\n        <div class=\"title-div\">\r\n          <strong>发短消息</strong>\r\n        </div>\r\n        <form id=\"addForm\" name=\"addForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_add\">\r\n          <div class=\"form-box\">\r\n            <dl>\r\n              <dt>收件人：</dt>\r\n              <dd>\r\n                <input name=\"txtUserName\" id=\"txtUserName\" type=\"text\" class=\"input txt\" datatype=\"s1-50\"  nullmsg=\"请填写收件人用户名\" sucmsg=\" \" />\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>标题：</dt>\r\n              <dd><input name=\"txtTitle\" id=\"txtTitle\" type=\"text\" class=\"input txt\" datatype=\"*1-50\" sucmsg=\" \" /></dd>\r\n            </dl>\r\n            <dl>\r\n              <dt>内容：</dt>\r\n              <dd>\r\n                <textarea name=\"txtContent\" class=\"input\" style=\"width:300px;height:80px;\" datatype=\"*\" sucmsg=\" \"></textarea>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd>\r\n                <label><input name=\"sendSave\" type=\"checkbox\" value=\"true\" checked=\"checked\" /> 保存到发件箱</label>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd>\r\n                <input id=\"txtCode\" name=\"txtCode\" class=\"input small\" type=\"text\" datatype=\"*\" sucmsg=\" \" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n                <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n              </dd>\r\n            </dl>\r\n            <dl>\r\n              <dt></dt>\r\n              <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn btn-success\" value=\"确认发布\" /></dd>\r\n            </dl>\r\n          </div>\r\n        </form>\r\n        <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\" />\r\n      </div>\r\n      <!--/发布短信息-->\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n      \r\n    </div>\r\n    <!--/右侧内容-->\r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
