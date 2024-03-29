﻿<%@Master language="C#"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="Welcome" src="~/_controltemplates/Welcome.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="DesignModeConsole" src="~/_controltemplates/DesignModeConsole.ascx" %>
<html dir="<%$Resources:wss,multipages_direction_dir_value%>" runat="server" xmlns:o="urn:schemas-microsoft-com:office:office" __expr-val-dir="ltr">
	
	<head runat="server">
		<meta name="GENERATOR" content="Microsoft SharePoint">
		<meta name="progid" content="SharePoint.WebPartPage.Document">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Expires" content="0">
		<SharePoint:RobotsMetaTag runat="server" __designer:Preview="" __designer:Values="&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl00' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<title id="onetidTitle"><asp:ContentPlaceHolder id=PlaceHolderPageTitle runat="server"/>
		</title>
		<SharePoint:CssLink runat="server" __designer:Preview="&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;/_layouts/1033/styles/core.css&quot;/&gt;
" __designer:Values="&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl01' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<SharePoint:Theme runat="server" __designer:Preview="" __designer:Values="&lt;P N='Name' R='-1' /&gt;&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl02' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<SharePoint:ScriptLink language="javascript" name="core.js" Defer="true" runat="server" __designer:Preview="&lt;script type=&quot;text/javascript&quot; language=&quot;javascript&quot; src=&quot;/_layouts/1033/init.js?rev=SKi7C%2FTrsh1U%2FCnIwkB9Ag%3D%3D&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot; language=&quot;javascript&quot; src=&quot;/_layouts/1033/core.js?rev=mHKsOQ0iU3Q5jdm9OZNDdg%3D%3D&quot;&gt;&lt;/script&gt;
" __designer:Values="&lt;P N='Language' T='javascript' /&gt;&lt;P N='Name' T='core.js' /&gt;&lt;P N='Defer' T='True' /&gt;&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl03' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<SharePoint:CustomJSUrl runat="server" __designer:Preview="" __designer:Values="&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl04' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<SharePoint:SoapDiscoveryLink runat="server" __designer:Preview="&lt;link type=&quot;text/xml&quot; rel=&quot;alternate&quot; href=&quot;/sites/ShopperBasedDesign/SAGE/_vti_bin/spsdisco.aspx&quot; /&gt;" __designer:Values="&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl05' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<asp:ContentPlaceHolder id="PlaceHolderAdditionalPageHead" runat="server" />
		<SharePoint:DelegateControl runat="server" ControlId="AdditionalPageHead" AllowMultipleControls="true" __designer:Preview="&lt;span style=&quot;display:none&quot;&gt;&lt;/span&gt;" __designer:Values="&lt;P N='ControlId' T='AdditionalPageHead' /&gt;&lt;P N='AllowMultipleControls' T='True' /&gt;&lt;P N='ID' T='ctl06' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
		<link rel="StyleSheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/SAGE.CSS" type="text/css" media="screen">
		<link rel="StyleSheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/SAGE_MenuStyle.css" type="text/css" media="screen">
		<style type="text/css">
			body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			background-color: white;
			font-size: 0.80em;
			font-family: Arial, Helvetica, sans-serif;
			}
			.wlcmsg {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 11px;
			color: #ccffff;
			}
			.toplink {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 13px;
			color: #fff;
			text-decoration: none;
			padding-left: 5px;
			padding-right: 5px;
			}
			.leftlink {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 13px;
			color: #393939;
			text-decoration: none;
			}
			.morelink {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #043eac;
			text-decoration: none;
			}
			.bandHeader {
			background: url(images/blueBand.jpg);
			background-repeat: no-repeat;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			font-weight: bold;
			text-decoration: none;
			color: #fff;
			padding-left: 5px;
			}
			.whiteHeader {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #fff;
			padding-left: 5px;
			}
			.blueHeader {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #043eac;
			}
			.norTxt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #484848;
			}
			#msgbox {
			font-weight: bold;
			}
			.ms-sitetitle2 {
			font: 11pt verdana;
			font-weight: bold;
			color: #666666;
			padding: 4px 0px 7px 6px;
			vertical-align: middle;
			margin: 0;
			}
			.ms-vb-title {
			vertical-align: top;
			}
		</style>
		<style type="text/css">
			#msgbox {
			font-weight: bold;
			}
			.ms-sitetitle2 {
			font: 11pt verdana;
			font-weight: bold;
			color: #666666;
			padding: 4px 0px 7px 6px;
			vertical-align: middle;
			margin: 0;
			}

			.adjust{				
			color:#4c4c4c;
			font-family:tahoma;
			font-size:8pt;
			padding-top:4px;
				}
			
		</style>
		<link rel="stylesheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/SAGENewStyle.css" />
		<link rel="StyleSheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/Menu/sbd-v2.css" type="text/css" media="screen">
		<link rel="StyleSheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/Menu/superfish.css" type="text/css" media="screen">
		<!--[if IE 6]>
			<link rel="StyleSheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/Menu/ie6.css" type="text/css" media="screen">
		<![endif]-->
		<script type="text/javascript" src="/sites/globalMSnP/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="/sites/ShopperBasedDesign/jquery.bgiframe.min.js"></script>
		<script type="text/javascript" src="/sites/globalMSnP/superfish.js"></script>
		<script type="text/javascript" src="/sites/globalMSnP/supersubs.js"></script>
		<script type="text/ecmascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/iehover-fix.js"></script>
		<script type="text/javascript">
			/*$(document).ready(function(){ 
				$("ul.sf-menu").supersubs({ 
					minWidth:    8,   // minimum width of sub-menus in em units 
					maxWidth:    27,   // maximum width of sub-menus in em units 
					extraWidth:  1     // extra width can ensure lines don't sometimes turn over 
					// due to slight rounding differences and font-family 
				}).superfish().find('ul').bgIframe({opacity:false});  // call supersubs first, then superfish, so that subs are 
				// not display:none when measuring. Call before initialising 
				// containing tabs for same reason. 
			}); */
		</script>
		<script type="text/javascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/jquery.SPServices-0.7.2.min.js"></script>
	</head>
	<body style="width: 990px;" scroll="yes" onload="javascript:if (typeof(_spBodyOnLoadWrapper) != 'undefined') _spBodyOnLoadWrapper();">
		
		<form runat="server" onsubmit="return _spFormOnSubmitWrapper();">
	  
	  
			<WebPartPages:SPWebPartManager id="m" runat="Server"/>
	<asp:ContentPlaceHolder id="PlaceHolderGlobalNavigation" runat="server"></asp:ContentPlaceHolder>
	  <asp:ContentPlaceHolder id="PlaceHolderGlobalNavigationSiteMap" runat="server"></asp:ContentPlaceHolder>
	  <asp:ContentPlaceHolder id="PlaceHolderSiteName" runat="server"></asp:ContentPlaceHolder>
  		<asp:ContentPlaceHolder id="PlaceHolderTopNavBar" runat="server"></asp:ContentPlaceHolder>
		<asp:ContentPlaceHolder id="PlaceHolderHorizontalNav" runat="server"></asp:ContentPlaceHolder>
		
		

		<asp:ContentPlaceHolder id="PlaceHolderTitleBreadcrumb" runat="server"></asp:ContentPlaceHolder>
		
		<asp:ContentPlaceHolder id="PlaceHolderMiniConsole" runat="server"/>
		<asp:ContentPlaceHolder id="PlaceHolderTitleRightMargin" runat="server"></asp:ContentPlaceHolder>
	
		<asp:ContentPlaceHolder id="PlaceHolderLeftNavBarDataSource" runat="server" />
		<asp:ContentPlaceHolder id="PlaceHolderCalendarNavigator" runat="server" />
	 	 <asp:ContentPlaceHolder id="PlaceHolderLeftNavBarTop" runat="server"/>
	  	<asp:ContentPlaceHolder id="PlaceHolderLeftNavBar" runat="server"/>
	  
	  
			<!--Custom change for P&G: added table for message -->
			<table width="990" height="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="10" class="container_left_shadow">&nbsp;</td>
					<td>
						<table id="tblMain" style="height: 100%; width: 970px; text-align: center;" align="center" border="0" cellpadding="0px" cellspacing="0px">
							<tr>
								<td>
									<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr style="background: url(http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/header.jpg); background-repeat: no-repeat; background-color: #d3edfe; background-position: right top; height: 82px;">
											<td height="82" valign="top">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="2%">&nbsp;</td>
														<td width="22%" height="82"><img src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/SGELogo%20(2).jpg" style="cursor: hand" onclick="$(location).attr('href','http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE')" width="201" height="62" /></td>
														<td width="29%">&nbsp;</td>
														<td width="47%" align="right" valign="top">
															<table width="440" border="0" cellspacing="0" cellpadding="0">
																<tr>
																	<td width="6"><img src="http://teamspace.pg.com/sites/cbdglobal/CBDImages/srch_lt.jpg" width="6" height="33" /></td>
																	<td width="430" bgcolor="#0099FF">
																		<table width="100%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td height="33" align="left" bgcolor="#0099FF" style="width: 190px; color: white">
																					<asp:ContentPlaceHolder id="PlaceHolderSearchArea" runat="server">
																						<SharePoint:DelegateControl runat="server" ControlId="SmallSearchInputBox" __designer:Preview="&lt;div id=&quot;SRSB&quot;&gt; &lt;div id=&quot;ctl00_ctl08&quot;&gt;
	&lt;input name=&quot;ctl00$ctl08$ctl00&quot; type=&quot;hidden&quot; value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE&quot; /&gt;&lt;table class=&quot;ms-sbtable ms-sbtable-ex&quot; border=&quot;0&quot;&gt;
		&lt;tr class=&quot;ms-sbrow&quot;&gt;
			&lt;td class=&quot;ms-sbscopes ms-sbcell&quot;&gt;&lt;select name=&quot;ctl00$ctl08$SBScopesDDL&quot; id=&quot;ctl00_ctl08_SBScopesDDL&quot; title=&quot;Search Scope&quot; class=&quot;ms-sbscopes&quot;&gt;
				&lt;option value=&quot;This Site&quot;&gt;This Site: SAGE - Store as a Growth Engine&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;Store &amp;amp; Shopper Intelligence&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;Shopper Sources of Growth&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;alldocs&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;Better Stores&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;Bigger Baskets&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;More Stores&lt;/option&gt;
				&lt;option value=&quot;http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx&quot;&gt;Superb Store Operations&lt;/option&gt;

			&lt;/select&gt;&lt;/td&gt;&lt;td class=&quot;ms-sbcell&quot;&gt;&lt;input name=&quot;ctl00$ctl08$InputKeywords&quot; type=&quot;text&quot; maxlength=&quot;200&quot; id=&quot;ctl00_ctl08_InputKeywords&quot; accesskey=&quot;S&quot; title=&quot;Enter search words&quot; class=&quot;ms-sbplain&quot; alt=&quot;Enter search words&quot; onkeypress=&quot;javascript:return OSBEK(event);&quot; style=&quot;width:170px;&quot; /&gt;&lt;/td&gt;&lt;td class=&quot;ms-sbgo ms-sbcell&quot;&gt;&lt;a id=&quot;ctl00_ctl08_go&quot; title=&quot;Go Search&quot;&gt;&lt;img title=&quot;Go Search&quot; onmouseover=&quot;this.src='/_layouts/images/gosearch.gif'&quot; onmouseout=&quot;this.src='/_layouts/images/gosearch.gif'&quot; alt=&quot;Go Search&quot; src=&quot;/_layouts/images/gosearch.gif&quot; style=&quot;border-width:0px;&quot; /&gt;&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;ms-sbcell ms-sblink&quot;&gt;&lt;a id=&quot;ctl00_ctl08_AdvSearchLink&quot; title=&quot;Advanced Search&quot; href=&quot;/sites/ShopperBasedDesign/Search/Pages/Advanced.aspx&quot;&gt;Advanced Search&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;ms-sbLastcell&quot;&gt;&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/table&gt;
&lt;/div&gt;&lt;/div&gt;" __designer:Values="&lt;P N='ControlId' T='SmallSearchInputBox' /&gt;&lt;P N='ID' T='ctl07' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
																					</asp:ContentPlaceHolder>
																				</td>
																				<td align="left" bgcolor="#0099FF" class="wlcmsg"><span id="spanwelcome" style="text-align: right"><wssuc:Welcome id="IdWelcome" runat="server" EnableViewState="false" __designer:Preview="
	 
	&lt;span style=&quot;display:none&quot;&gt;&lt;menu type='ServerMenu' id=&quot;zz1_ID_PersonalActionMenu&quot; largeIconMode=&quot;true&quot;&gt;&lt;ie:menuitem id=&quot;zz2_ID_PersonalInformation&quot; type=&quot;option&quot; iconSrc=&quot;/_layouts/images/menuprofile.gif&quot; onMenuClick=&quot;javascript:GoToPage('\u002fsites\u002fShopperBasedDesign\u002fSAGE\u002f_layouts\u002fuserdisp.aspx?Force=True\u0026ID=' + _spUserId);return false;&quot; menuGroupId=&quot;100&quot;&gt;&lt;/ie:menuitem&gt;&lt;ie:menuitem id=&quot;zz3_ID_LoginAsDifferentUser&quot; type=&quot;option&quot; onMenuClick=&quot;javascript:LoginAsAnother('\u002fsites\u002fShopperBasedDesign\u002fSAGE\u002f_layouts\u002fAccessDenied.aspx?loginasanotheruser=true', 0)&quot; menuGroupId=&quot;200&quot;&gt;&lt;/ie:menuitem&gt;&lt;ie:menuitem id=&quot;zz4_ID_RequestAccess&quot; type=&quot;option&quot; onMenuClick=&quot;window.location = '/sites/ShopperBasedDesign/SAGE/_layouts/reqacc.aspx?type=list&amp;amp;name=%7BAA76FDD4%2DEE6B%2D4E71%2D9F75%2D9AB728EDDFCC%7D';&quot; menuGroupId=&quot;200&quot;&gt;&lt;/ie:menuitem&gt;&lt;ie:menuitem id=&quot;zz5_ID_Logout&quot; type=&quot;option&quot; onMenuClick=&quot;window.location = '/sites/ShopperBasedDesign/SAGE/_layouts/SignOut.aspx';&quot; menuGroupId=&quot;200&quot;&gt;&lt;/ie:menuitem&gt;&lt;/menu&gt;&lt;/span&gt;&lt;span title=&quot;Open Menu&quot;&gt;&lt;div  id=&quot;zz6_Menu_t&quot; class=&quot;ms-SPLink ms-SpLinkButtonInActive&quot; onmouseover=&quot;MMU_PopMenuIfShowing(this);MMU_EcbTableMouseOverOut(this, true)&quot; hoverActive=&quot;ms-SPLink ms-SpLinkButtonActive&quot; hoverInactive=&quot;ms-SPLink ms-SpLinkButtonInActive&quot; onclick=&quot; MMU_Open(byid(''), MMU_GetMenuFromClientId('zz6_Menu'),event,false, null, 0);&quot; foa=&quot;MMU_GetMenuFromClientId('zz6_Menu')&quot; oncontextmenu=&quot;this.click(); return false;&quot; nowrap=&quot;nowrap&quot;&gt;&lt;a id=&quot;zz6_Menu&quot; accesskey=&quot;L&quot; href=&quot;#&quot; onclick=&quot;javascript:return false;&quot; style=&quot;cursor:pointer;white-space:nowrap;&quot; onfocus=&quot;MMU_EcbLinkOnFocusBlur(byid(''), this, true);&quot; onkeydown=&quot;MMU_EcbLinkOnKeyDown(byid(''), MMU_GetMenuFromClientId('zz6_Menu'), event);&quot; onclick=&quot; MMU_Open(byid(''), MMU_GetMenuFromClientId('zz6_Menu'),event,false, null, 0);&quot; oncontextmenu=&quot;this.click(); return false;&quot; menuTokenValues=&quot;MENUCLIENTID=zz6_Menu,TEMPLATECLIENTID=zz1_ID_PersonalActionMenu&quot; serverclientid=&quot;zz6_Menu&quot;&gt;Welcome Reddy, Butalapalli&lt;img src=&quot;/_layouts/images/blank.gif&quot; border=&quot;0&quot; alt=&quot;Use SHIFT+ENTER to open the menu (new window).&quot;/&gt;&lt;/a&gt;&lt;img align=&quot;absbottom&quot; src=&quot;/_layouts/images/menudark.gif&quot; alt=&quot;&quot; /&gt;&lt;/div&gt;&lt;/span&gt;&lt;script type=&quot;text/javascript&quot; language=&quot;javascript&quot;&gt;var _spUserId=12747;&lt;/script&gt;
&lt;a id=&quot;IdWelcome_ExplicitLogin&quot; Href=&quot;_controltemplates/http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/_layouts/Authenticate.aspx&quot; style=&quot;display:none&quot;&gt;Sign In&lt;/a&gt;
" __designer:Values="&lt;P N='ID' ID='1' T='IdWelcome' /&gt;&lt;P N='EnableViewState' T='False' /&gt;&lt;P N='TemplateControl' R='0' /&gt;">
																				</wssuc:Welcome></span></td>
																			</tr>
																			<tr>
																				<td><span id="cbdLogin" style="display: none">
																					<asp:LoginName ID="loginName" runat="server" __designer:Preview="&lt;span id=&quot;ctl00_loginName&quot;&gt;[UserName]&lt;/span&gt;" __designer:Values="&lt;P N='ID' T='loginName' /&gt;&lt;P N='ControlStyle'&gt;&lt;P N='Font' ID='1' /&gt;&lt;/P&gt;&lt;P N='Font' R='1' /&gt;&lt;P N='Page' ID='2' /&gt;&lt;P N='TemplateControl' ID='3' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"></asp:LoginName>
																				</span><span id="restrictUser" style="display: none;"></span><span id="UserGroupID" style="display: none;"></span></td>
																				<td></td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td colspan="2" align="right" id="siteactiontd">
																		<table cellpadding="0" cellspacing="0" border="0" width="100px">
																		<tr>
																		<td class="ms-siteactionsmenu" id="siteactiontd">
					   <SharePoint:SiteActions runat="server" AccessKey="<%$Resources:wss,tb_SiteActions_AK%>" id="SiteActionsMenuMain"
						PrefixHtml="&lt;div&gt;&lt;div&gt;"
						SuffixHtml="&lt;/div&gt;&lt;/div&gt;"
						MenuNotVisibleHtml="&amp;nbsp;" __designer:Preview="
						
						&lt;span style=&quot;display:none&quot;&gt;&lt;menu type='ServerMenu' id=&quot;zz7_SiteActionsMenuMain&quot; largeIconMode=&quot;true&quot;&gt;&lt;ie:menuitem id=&quot;zz8_MenuItem_Create&quot; type=&quot;option&quot; iconSrc=&quot;/_layouts/images/Actionscreate.gif&quot; onMenuClick=&quot;window.location = '/sites/ShopperBasedDesign/SAGE/_layouts/create.aspx';&quot; menuGroupId=&quot;100&quot;&gt;&lt;/ie:menuitem&gt;&lt;ie:menuitem id=&quot;zz9_MenuItem_Settings&quot; type=&quot;option&quot; iconSrc=&quot;/_layouts/images/ActionsSettings.gif&quot; onMenuClick=&quot;window.location = '/sites/ShopperBasedDesign/SAGE/_layouts/settings.aspx';&quot; menuGroupId=&quot;100&quot;&gt;&lt;/ie:menuitem&gt;&lt;/menu&gt;&lt;/span&gt;&lt;div&gt;&lt;div&gt;&lt;span title=&quot;Open Menu&quot;&gt;&lt;div  id=&quot;zz10_SiteActionsMenu_t&quot; class=&quot;&quot; onmouseover=&quot;MMU_PopMenuIfShowing(this);MMU_EcbTableMouseOverOut(this, true)&quot; hoverActive=&quot;ms-siteactionsmenuhover&quot; hoverInactive=&quot;&quot; onclick=&quot; MMU_Open(byid(''), MMU_GetMenuFromClientId('zz10_SiteActionsMenu'),event,false, null, 0);&quot; foa=&quot;MMU_GetMenuFromClientId('zz10_SiteActionsMenu')&quot; oncontextmenu=&quot;this.click(); return false;&quot; nowrap=&quot;nowrap&quot;&gt;&lt;a id=&quot;zz10_SiteActionsMenu&quot; accesskey=&quot;/&quot; href=&quot;#&quot; onclick=&quot;javascript:return false;&quot; style=&quot;cursor:pointer;white-space:nowrap;&quot; onfocus=&quot;MMU_EcbLinkOnFocusBlur(byid(''), this, true);&quot; onkeydown=&quot;MMU_EcbLinkOnKeyDown(byid(''), MMU_GetMenuFromClientId('zz10_SiteActionsMenu'), event);&quot; onclick=&quot; MMU_Open(byid(''), MMU_GetMenuFromClientId('zz10_SiteActionsMenu'),event,false, null, 0);&quot; oncontextmenu=&quot;this.click(); return false;&quot; menuTokenValues=&quot;MENUCLIENTID=zz10_SiteActionsMenu,TEMPLATECLIENTID=zz7_SiteActionsMenuMain&quot; serverclientid=&quot;zz10_SiteActionsMenu&quot;&gt;Site Actions&lt;img src=&quot;/_layouts/images/blank.gif&quot; border=&quot;0&quot; alt=&quot;Use SHIFT+ENTER to open the menu (new window).&quot;/&gt;&lt;/a&gt;&lt;img align=&quot;absbottom&quot; src=&quot;/_layouts/images/whitearrow.gif&quot; alt=&quot;&quot; /&gt;&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;" __designer:Values="&lt;P N='AccessKey' Bound='True' T='Resources:wss,tb_SiteActions_AK' /&gt;&lt;P N='ID' T='SiteActionsMenuMain' /&gt;&lt;P N='PrefixHtml' T='&amp;lt;div&amp;gt;&amp;lt;div&amp;gt;' /&gt;&lt;P N='SuffixHtml' T='&amp;lt;/div&amp;gt;&amp;lt;/div&amp;gt;' /&gt;&lt;P N='MenuNotVisibleHtml' T='&amp;amp;nbsp;' /&gt;&lt;P N='InDesign' T='False' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;">
						<CustomTemplate>
						<SharePoint:FeatureMenuTemplate runat="server"
							FeatureScope="Site"
							Location="Microsoft.SharePoint.StandardMenu"
							GroupId="SiteActions"
							UseShortId="true"
							>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Create"
								Text="<%$Resources:wss,viewlsts_pagetitle_create%>"
								Description="<%$Resources:wss,siteactions_createdescription%>"
								ImageUrl="/_layouts/images/Actionscreate.gif"
								MenuGroupId="100"
								Sequence="100"
								UseShortId="true"
								ClientOnClickNavigateUrl="~site/_layouts/create.aspx"
								PermissionsString="ManageLists, ManageSubwebs"
								PermissionMode="Any" />
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_EditPage"
								Text="<%$Resources:wss,siteactions_editpage%>"
								Description="<%$Resources:wss,siteactions_editpagedescription%>"
								ImageUrl="/_layouts/images/ActionsEditPage.gif"
								MenuGroupId="100"
								Sequence="200"
								ClientOnClickNavigateUrl="javascript:MSOLayout_ChangeLayoutMode(false);"
								/>
							<SharePoint:MenuItemTemplate runat="server" id="MenuItem_Settings"
								Text="<%$Resources:wss,settings_pagetitle%>"
								Description="<%$Resources:wss,siteactions_sitesettingsdescription%>"
								ImageUrl="/_layouts/images/ActionsSettings.gif"
								MenuGroupId="100"
								Sequence="300"
								UseShortId="true"
								ClientOnClickNavigateUrl="~site/_layouts/settings.aspx"
								PermissionsString="EnumeratePermissions,ManageWeb,ManageSubwebs,AddAndCustomizePages,ApplyThemeAndBorder,ManageAlerts,ManageLists,ViewUsageData"
								PermissionMode="Any" />
						</SharePoint:FeatureMenuTemplate>
						</CustomTemplate>
					</SharePoint:SiteActions>
					</td>
																		</tr>
																			</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<!--Top Navigation-->
					<tr>
						<td>
							<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td width="12"><img src="http://teamspace.pg.com/sites/cbdglobal/CBDImages/main_link_lft.jpg" width="12" height="38" /></td>
									<td style="background: url(http://teamspace.pg.com/sites/cbdglobal/CBDImages/main_link_mid.jpg); padding-bottom: 5px; background-repeat: repeat-x">
										<ul id="nav" class="nav" style="white-space: nowrap;">
											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE" class="toplink">HOME</a></li>
											<li><a href="#" class="toplink">KEY MEASURES</a>
												<ul style="z-index: 1000">
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ssi.aspx?itmid=1">Store &amp; Shopper Intelligent</a> </li>
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ssg.aspx?itmid=2">Shopper Sources of Growth</a> </li>
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ms.aspx?itmid=3">More Stores</a> </li>
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/bs.aspx?itmid=4">Better Stores</a> </li>
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/bb.aspx?itmid=5">Bigger Baskets</a> </li>
													<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/sso.aspx?itmid=6">Superb Store Operations</a> </li>
												</ul>
											</li>
											<li><a href="http://teamspace.pg.com/sites/cbdglobal/cpp/CPPHome.aspx" style="border-right-style: none">ADMINISTRATION</a>
											
											<ul>
											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/Lists/Category/AllItems.aspx">Manage Category</a> </li>
											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/Lists/Channel/AllItems.aspx">Manage Channel</a> </li>
											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/Lists/KeyMeasureDetails/AllItems.aspx">Manage Key Measure Details</a> </li>

											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/Lists/Region/AllItems.aspx">Manage Regions</a> </li>
											<li><a href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/Lists/Links/AllItems.aspx">Manage Tools & Capabilities</a> </li>					
											</ul>
											
											</li>
										</ul>
									</td>
									<td width="12"><img src="http://teamspace.pg.com/sites/cbdglobal/CBDImages/main_link_rt.jpg" width="12" height="38" /></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr style="height: 100%">
						<td>
							<!-- All at a time-->
							<table style="height: 100%" class="ms-globalleft" cellpadding="0" cellspacing="0" border="0" width="100%">
								<asp:ContentPlaceHolder ID="WSSDesignConsole" runat="server">
									<wssuc:DesignModeConsole id="IdDesignModeConsole" runat="server" __designer:Preview="&lt;span __designer:NonVisual=&quot;true&quot;&gt;[ DesignModeConsoleContainer &quot;DesignModeContainer&quot; ]&lt;/span&gt;
" __designer:Values="&lt;P N='ID' ID='1' T='IdDesignModeConsole' /&gt;&lt;P N='TemplateControl' R='0' /&gt;"/>
								</asp:ContentPlaceHolder>
								<asp:ContentPlaceHolder ID="SPNavigation" runat="server">
									<SharePoint:DelegateControl runat="server" ControlId="PublishingConsole"
									PrefixHtml="&lt;tr&gt;&lt;td colspan=&quot;4&quot; id=&quot;mpdmconsole&quot; class=&quot;ms-consolemptablerow&quot;&gt;"
									SuffixHtml="&lt;/td&gt;&lt;/tr&gt;" __designer:Preview="&lt;span style=&quot;display:none&quot;&gt;&lt;/span&gt;" __designer:Values="&lt;P N='ControlId' T='PublishingConsole' /&gt;&lt;P N='PrefixHtml' T='&amp;lt;tr&amp;gt;&amp;lt;td colspan=&quot;4&quot; id=&quot;mpdmconsole&quot; class=&quot;ms-consolemptablerow&quot;&amp;gt;' /&gt;&lt;P N='SuffixHtml' T='&amp;lt;/td&amp;gt;&amp;lt;/tr&amp;gt;' /&gt;&lt;P N='ID' T='ctl09' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;">
									</SharePoint:DelegateControl>
									</asp:ContentPlaceHolder>
									<tr height="100%">
									<td align="center" height="100%">
										<table width="100%" height="100%" cellspacing="0" cellpadding="0">
											<tr height="100%">
												<td class="ms-bodyareacell" valign="top" height="100%">
													<PlaceHolder id="MSO_ContentDiv" runat="server">
														<table id="MSO_ContentTable" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="ms-propertysheet">
															<tr>
																<td valign="top" height="100%">
																<style type="text/css">
																	.ms-listdescription {
																	}
																	</style>
																	<table>
																	<tr><td><asp:ContentPlaceHolder id="PlaceHolderPageImage" runat="server"/></td>
																	<td><div>
																	<asp:ContentPlaceHolder id="PlaceHolderPageTitleInTitleArea" runat="server" />
																	</div><div>
																	<asp:ContentPlaceHolder id="PlaceHolderPageDescription" runat="server" /></div></td></tr></table>
																	
																	
																	
																	<asp:ContentPlaceHolder id="PlaceHolderMain" runat="server">
																	</asp:ContentPlaceHolder>
																</td>
															</tr>
														</table>
													</PlaceHolder>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="30">
							<table class="footer_bg" width="970" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<td align="left">Copyright 2013 All Rights Reserved. SAGE - Store as a Growth Engine</td>
									<td align="right">Powered by Vertex Computer Sytems Inc.</td>
								</tr>
							</table>
						</td>
					</tr>
					
				</table>
			</td>
			<td width="10" class="container_right_shadow">&nbsp;</td>
		</tr>
		
		<tr>
			<td colspan="3" class="container_bottom_shadow"></td>
		</tr>
	</table>
	<!-- end customization -->
	<asp:ContentPlaceHolder id="PlaceHolderFormDigest" runat="server">
		<SharePoint:FormDigest runat=server __designer:Preview="&lt;INPUT TYPE=&quot;HIDDEN&quot; Name=&quot;__REQUESTDIGEST&quot; Value=&quot;0x033D65EF29173E59831027CED931FC2C807BC99A155412A37685FDB88E1EF823221717957300988122AB63A0FDAAF362E7C9A02EB7CC03C4AF0D6EEBFF60ABFD,09 Apr 2013 06:50:17 -0000&quot;&gt;" __designer:Values="&lt;P N='InDesign' T='False' /&gt;&lt;P N='ID' T='ctl10' /&gt;&lt;P N='Page' ID='1' /&gt;&lt;P N='TemplateControl' ID='2' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;"/>
	</asp:ContentPlaceHolder>
	<input type="text" name="__spDummyText1" style="display: none;" size="1" />
	<input type="text" name="__spDummyText2" style="display: none;" size="1" />
	
	<asp:ContentPlaceHolder id="PlaceHolderLeftActions" runat="server"></asp:ContentPlaceHolder>
	<asp:ContentPlaceHolder id="PlaceHolderNavSpacer" runat="server"></asp:ContentPlaceholder>
	<asp:ContentPlaceHolder id="PlaceHolderLeftNavBarBorder" runat="server"></asp:ContentPlaceHolder>
	<asp:ContentPlaceHolder id="PlaceHolderBodyLeftBorder" runat="server"></asp:ContentPlaceHolder>	
	<asp:ContentPlaceHolder id="PlaceHolderBodyRightMargin" runat="server"></asp:ContentPlaceHolder>
	<asp:ContentPlaceHolder id="PlaceHolderTitleLeftBorder" runat="server"></asp:ContentPlaceHolder>
	<asp:ContentPlaceHolder id="PlaceHolderTitleAreaSeparator" runat="server"></asp:ContentPlaceHolder>
	
	<asp:ContentPlaceHolder id="PlaceHolderUtilityContent" runat="server" />
	<asp:ContentPlaceHolder id="PlaceHolderBodyAreaClass" runat="server" />
	<asp:ContentPlaceHolder id="PlaceHolderTitleAreaClass" runat="server" />

	<script type="text/javascript" >

	$(document).ready(function () {
	$(".ms-areaseparatorleft").hide();
	$(".ms-listdescription").addClass("adjust");
	$(".ms-listdescription").removeClass('ms-listdescription');
	});

	</script>
	
</form>
</body>
</html>