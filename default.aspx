<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Page Language="C#" masterpagefile="_catalogs/masterpage/SAGE_V2.master" title="SAGE - Home" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register tagprefix="WebPartPages" namespace="Microsoft.SharePoint.WebPartPages" assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content id="Content1" runat="server" contentplaceholderid="PlaceHolderMain">

<WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>
<script type="text/javascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/tooltip.js"></script>
<script type="text/javascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/sageSearch.js"></script>
		
<style type="text/css">
      body {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica, sans-serif;        
        color: #dddddd;
      }
      
      h1, h3 {
        margin: 0;
        padding: 0;
        font-weight: normal;
      }
      
      a {
        color: #EB067B;
      }
      
      div#container {
        width: 580px;
        margin: 100px auto 0 auto;
        padding: 20px;
        background: #000;
        border: 1px solid #1a1a1a;
      }
      
      /* HOVER STYLES */
      div#pop-SSI , div#pop-SGE ,div#pop-SSO,div#pop-SSG,div#pop-MS,div#pop-BS,div#pop-BB
      {
        display: none;
        position: absolute;
        width: 400px;
        /*width: 280px;*/
        padding: 10px;
        background: #eeeeee;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;
        z-index:2000;
      }
    /*  
      .pop{
		position: absolute;
        width: 400px;
        /*width: 280px;
        padding: 10px;
        background: #eeeeee;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;
			} */
    </style> 
    <link rel="stylesheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/SAGE.CSS" type="text/css" />				

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="SAGEBody">
<tr>
	<td valign="top" id="tdKeyMeasures">
		<div style="height:439px; width:406px;">
			<img src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/KeyMeasures.jpg" width="439" height="406" border="0" usemap="#Map" hidefocus="hidefocus"/>
<map name="Map" id="Map">
  <area id="SSI" shape="circle" coords="133,58,54" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ssi.aspx?itmid=1" /><!--Store &amp; Shopper Intelligence-->
<!--  <area id="SGE" shape="circle" coords="212,197,77" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/SGE.aspx?itmid=" /><!--Store as Growth Engine-->
  <area id="MS" shape="circle" coords="364,195,55" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ms.aspx?itmid=3" /><!-- More Stores-->
  <area id="SSG" shape="circle" coords="297,57,55" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ssg.aspx?itmid=2" /> <!--Shopper Sources of Growth-->
  <area id="SSO" shape="circle" coords="60,197,55" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/sso.aspx?itmid=6" /><!--Superb Store Operations-->
  <area id="BB" shape="circle" coords="135,330,55" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/bb.aspx?itmid=5" /><!--Bigger Baskets-->
  <area id="BS" shape="circle" coords="296,328,55" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/bs.aspx?itmid=4" /><!--Better Stores-->
</map>
<!-- HIDDEN / POP-UP DIV -->
    <div id="pop-SSI">
        <h3>Store &amp; Shopper Intelligence</h3>
        <p>
          Desc goes here... for SI
        </p>
      </div>
    <div id="pop-SGE">
        <h3>Store as Growth Engine</h3>
        <p>
          Desc goes here... for SGE
        </p>
      </div>
    <div id="pop-SSO">
        <h3>Superb Store Operations</h3>
        <p>
          Desc goes here... for SSO
        </p>
      </div>
    <div id="pop-MS">
        <h3>More Stores</h3>
        <p>
          Desc goes here... for MS
        </p>
      </div>
    <div id="pop-SSG">
        <h3>Shopper Sources of Growth</h3>
        <p>
          Desc goes here... for SSG
        </p>
      </div>
	<div id="pop-BB">
        <h3>Bigger Baskets</h3>
        <p>
          Desc goes here... for BB
        </p>
      </div>
	<div id="pop-BS">
        <h3>Better Stores</h3>
        <p>
          Desc goes here... for BS
        </p>
      </div>
</div>
		
	</td>
	
	<td id="tdFindItNow" valign="top" align="center" style="padding-top:15px;padding-left:25px;">
		<div >
		
		<table border="0" cellpadding="4px" cellspacing="4px" width="400px">
			<tr >
				<td class="SAGE-Heading" height="36px" colspan="2" style="background-image:url('WPPages/Images/Menu_BG.jpg');background-repeat:repeat-x">
				FIND IT NOW</td>
			</tr>
			<tr >
				<td width="115px" class="SAGE-Title">Key Words</td>
				<td><input id="AnyOfTheseWords" type="text" value="" class="SAGE-Controls"/></td>
			</tr>
			<tr>
				<td class="SAGE-Title">Exact Phrase</td>
				<td><input id="ExactPhrase" type="text" value="" class="SAGE-Controls" /></td>
			</tr>
			<tr>
				<td class="SAGE-Title" style="height: 36px">SAGE Bubble</td>
				<td style="height: 36px">
					<select id="drdKM" class="SAGE-Controls">
					<option>-Select-</option>					
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Channel</td>
				<td>
					<select id="drdChannel" class="SAGE-Controls">
					<option>-Select-</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Region</td>
				<td>
				<select id="drdRegion" class="SAGE-Controls">
					<option>-Select-</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Category</td>
				<td>
				<select id="drdCat" class="SAGE-Controls">
					<option>-Select-</option>
				</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right" style="padding-right:20px">
				<a href="#" onclick="Search();return false;">

					<img onclick="" style="cursor:hand;" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/Search.jpg" alt="Search" border="0"/>
					</a>
				</td>				
			</tr>
			<tr >
				<td class="SAGE-Heading" height="36px" colspan="2" style="background-image:url('WPPages/Images/Menu_BG.jpg');background-repeat:repeat-x">
				Latest Examples</td>
			</tr>

<tr>
<td colspan="2">
<div>

<WebPartPages:WebPartZone id="g_110209C645FE4D088FC05D7B72AAD007" runat="server" title="Zone 1" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;g_110209C645FE4D088FC05D7B72AAD007&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Zone 1&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;&lt;tr&gt;
		&lt;td style=&quot;height:100%;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;border-color:Gray;border-width:1px;border-style:Solid;width:100%;height:100%;&quot;&gt;
			&lt;tr valign=&quot;top&quot;&gt;
				&lt;td _designerRegion=&quot;0&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
					&lt;tr&gt;
						&lt;td style=&quot;height:100%;&quot;&gt;&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __designer:Values="&lt;P N='ID' ID='1' T='g_110209C645FE4D088FC05D7B72AAD007' /&gt;&lt;P N='Title' ID='2' T='Zone 1' /&gt;&lt;P N='HeaderText' R='2' /&gt;&lt;P N='DisplayTitle' R='2' /&gt;&lt;P N='MenuPopupStyle'&gt;&lt;P N='CellPadding' T='1' /&gt;&lt;P N='CellSpacing' T='0' /&gt;&lt;/P&gt;&lt;P N='ControlStyle'&gt;&lt;P N='BorderColor' T='Gray' /&gt;&lt;P N='BorderWidth' T='1px' /&gt;&lt;P N='BorderStyle' E='4' /&gt;&lt;P N='Font' ID='3' /&gt;&lt;/P&gt;&lt;P N='Font' R='3' /&gt;&lt;P N='Page' ID='4' /&gt;&lt;P N='TemplateControl' R='4' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate><WpNs0:ContentByQueryWebPart runat="server" ZoneID="g_110209C645FE4D088FC05D7B72AAD007" FrameType="None" Dir="Default" UseSQLDataSourcePaging="True" GroupByDirection="Desc" Filter2ChainingOperator="Or" AllowConnect="False" Title="Latest Examples" SuppressWebPartChrome="False" ViewContentTypeId="" MissingAssembly="Cannot import this Web Part." FrameState="Normal" ID="g_cbdfffb3_dde1_421f_aed1_117975f85a58" AllowRemove="False" AllowHide="False" AllowEdit="False" Filter1ChainingOperator="Or" ServerTemplate="101" ShowWithSampleData="False" ShowUntargetedItems="False" IsIncluded="True" PartImageLarge="" PartOrder="1" PartImageSmall="" ContentTypeBeginsWithId="0x010100287E82FCE9DD6540942C18DB76E6EC9B" AllowMinimize="False" ConnectionID="00000000-0000-0000-0000-000000000000" AllowClose="False" ExportMode="All" IsIncludedFilter="" GroupStyle="DefaultHeader" HelpLink="" SortByDirection="Desc" IsVisible="True" SortBy="{28cf69c5-fa48-462a-b5cd-27b6f9d2bd5f}" DataSourceID="" AllowZoneChange="False" HelpMode="Modeless" ExportControlledProperties="True" SortByFieldType="DateTime" ItemLimit="5" DetailLink="" ItemStyle="Default" Description="Use to display a dynamic view of content from your site on a web page" ChromeType="None" PageSize="-1" __designer:Values="&lt;P N='ItemStyle' T='Default' /&gt;&lt;P N='GroupStyle' T='DefaultHeader' /&gt;&lt;P N='ContentTypeBeginsWithId' T='0x010100287E82FCE9DD6540942C18DB76E6EC9B' /&gt;&lt;P N='Filter1ChainingOperator' E='1' /&gt;&lt;P N='Filter2ChainingOperator' E='1' /&gt;&lt;P N='GroupByDirection' E='1' /&gt;&lt;P N='SortBy' T='{28cf69c5-fa48-462a-b5cd-27b6f9d2bd5f}' /&gt;&lt;P N='SortByFieldType' T='DateTime' /&gt;&lt;P N='SortByDirection' E='1' /&gt;&lt;P N='ItemLimit' T='5' /&gt;&lt;P N='ServerTemplate' T='101' /&gt;&lt;P N='ShowUntargetedItems' T='False' /&gt;&lt;P N='SampleData' T='&amp;#xA;&amp;#xA;&amp;#xA;&amp;lt;dsQueryResponse&amp;gt;&amp;#xA;                    &amp;lt;Rows&amp;gt;&amp;#xA;                        &amp;lt;Row Title=&quot;Item 1&quot; LinkUrl=&quot;http://Item1&quot; Group=&quot;Group Header&quot; __begincolumn=&quot;True&quot; __begingroup=&quot;True&quot; /&amp;gt;&amp;#xA;                        &amp;lt;Row Title=&quot;Item 2&quot; LinkUrl=&quot;http://Item2&quot; __begincolumn=&quot;False&quot; __begingroup=&quot;False&quot; /&amp;gt;&amp;#xA;                        &amp;lt;Row Title=&quot;Item 3&quot; LinkUrl=&quot;http://Item3&quot; __begincolumn=&quot;False&quot; __begingroup=&quot;False&quot; /&amp;gt;&amp;#xA;                    &amp;lt;/Rows&amp;gt;&amp;#xA;                    &amp;lt;/dsQueryResponse&amp;gt;' /&gt;&lt;P N='Xsl' T='&amp;lt;xsl:stylesheet xmlns:x=&quot;http://www.w3.org/2001/XMLSchema&quot; version=&quot;1.0&quot; xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot; xmlns:cmswrt=&quot;http://schemas.microsoft.com/WebPart/v3/Publishing/runtime&quot; exclude-result-prefixes=&quot;xsl cmswrt x&quot; &amp;gt; &amp;lt;xsl:import href=&quot;/Style Library/XSL Style Sheets/Header.xsl&quot; /&amp;gt; &amp;lt;xsl:import href=&quot;/Style Library/XSL Style Sheets/ItemStyle.xsl&quot; /&amp;gt; &amp;lt;xsl:import href=&quot;/Style Library/XSL Style Sheets/ContentQueryMain.xsl&quot; /&amp;gt; &amp;lt;/xsl:stylesheet&amp;gt;' /&gt;&lt;P N='ParameterValues' Serial='AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xMi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACgs' /&gt;&lt;P N='FilterValues' Serial='AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xMi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACgs' /&gt;&lt;P N='Title' ID='1' T='Latest Examples' /&gt;&lt;P N='FrameType' E='0' /&gt;&lt;P N='Description' T='Use to display a dynamic view of content from your site on a web page' /&gt;&lt;P N='ZoneID' T='g_110209C645FE4D088FC05D7B72AAD007' /&gt;&lt;P N='PartOrder' T='1' /&gt;&lt;P N='AllowRemove' T='False' /&gt;&lt;P N='AllowZoneChange' T='False' /&gt;&lt;P N='AllowMinimize' T='False' /&gt;&lt;P N='AllowConnect' T='False' /&gt;&lt;P N='AllowEdit' T='False' /&gt;&lt;P N='AllowHide' T='False' /&gt;&lt;P N='ID' T='g_cbdfffb3_dde1_421f_aed1_117975f85a58' /&gt;&lt;P N='StorageKey' T='cbdfffb3-dde1-421f-aed1-117975f85a58' /&gt;&lt;P N='Qualifier' T='WPQ1' /&gt;&lt;P N='ClientName' T='varPartWPQ1' /&gt;&lt;P N='Permissions' E='0' /&gt;&lt;P N='EffectiveTitle' R='1' /&gt;&lt;P N='EffectiveStorage' E='2' /&gt;&lt;P N='EffectiveFrameType' E='0' /&gt;&lt;P N='AllowClose' T='False' /&gt;&lt;P N='ChromeType' E='2' /&gt;&lt;P N='DisplayTitle' R='1' /&gt;&lt;P N='ExportMode' E='1' /&gt;&lt;P N='IsShared' T='True' /&gt;&lt;P N='IsStandalone' T='False' /&gt;&lt;P N='IsStatic' T='False' /&gt;&lt;P N='WebBrowsableObject' R='0' /&gt;&lt;P N='ZoneIndex' T='1' /&gt;&lt;P N='Font' ID='2' /&gt;&lt;P N='Page' ID='3' /&gt;&lt;P N='TemplateControl' R='3' /&gt;&lt;P N='AppRelativeTemplateSourceDirectory' R='-1' /&gt;" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table TOPLEVEL border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
	&lt;tr&gt;
		&lt;td valign=&quot;top&quot;&gt;&lt;div WebPartID=&quot;cbdfffb3-dde1-421f-aed1-117975f85a58&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;ms-WPBody&quot; allowMinimize=&quot;false&quot; allowRemove=&quot;false&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;
			&lt;table TOPLEVEL border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
	&lt;tr&gt;
		&lt;td valign=&quot;top&quot;&gt;&lt;div WebPartID=&quot;cbdfffb3-dde1-421f-aed1-117975f85a58&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;ms-WPBody&quot; allowMinimize=&quot;false&quot; allowRemove=&quot;false&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div ID=&quot;WebPartContent&quot;&gt;&lt;table id=&quot;cbqwp&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; class=&quot;cbq-layout-main&quot;&gt;&lt;tr&gt;&lt;td id=&quot;column&quot; width=&quot;100%&quot; valign=&quot;top&quot;&gt;&lt;div class=&quot;groupheader item medium&quot;&gt;Group Header&lt;/div&gt;&lt;div id=&quot;linkitem&quot; class=&quot;item&quot; xmlns:ddwrt=&quot;http://schemas.microsoft.com/WebParts/v2/DataView/runtime&quot;&gt;&lt;div class=&quot;link-item&quot;&gt;&lt;a href=&quot;http://Item1&quot; target=&quot;&quot; title=&quot;&quot;&gt;Item 1&lt;/a&gt;&lt;div class=&quot;description&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;linkitem&quot; class=&quot;item&quot; xmlns:ddwrt=&quot;http://schemas.microsoft.com/WebParts/v2/DataView/runtime&quot;&gt;&lt;div class=&quot;link-item&quot;&gt;&lt;a href=&quot;http://Item2&quot; target=&quot;&quot; title=&quot;&quot;&gt;Item 2&lt;/a&gt;&lt;div class=&quot;description&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;linkitem&quot; class=&quot;item&quot; xmlns:ddwrt=&quot;http://schemas.microsoft.com/WebParts/v2/DataView/runtime&quot;&gt;&lt;div class=&quot;link-item&quot;&gt;&lt;a href=&quot;http://Item3&quot; target=&quot;&quot; title=&quot;&quot;&gt;Item 3&lt;/a&gt;&lt;div class=&quot;description&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;footer&quot;&gt;&lt;/div&gt;&lt;/td &gt;&lt;/tr&gt;&lt;/table&gt;&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;/_layouts/1033/styles/controls.css&quot;/&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
		&lt;/div&gt;&lt;/div&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __MarkupType="vsattributemarkup" __WebPartId="{CBDFFFB3-DDE1-421F-AED1-117975F85A58}" WebPart="true" Height="" Width=""><SampleData>



<dsQueryResponse>
                    <Rows>
                        <Row Title="Item 1" LinkUrl="http://Item1" Group="Group Header" __begincolumn="True" __begingroup="True" />
                        <Row Title="Item 2" LinkUrl="http://Item2" __begincolumn="False" __begingroup="False" />
                        <Row Title="Item 3" LinkUrl="http://Item3" __begincolumn="False" __begingroup="False" />
                    </Rows>
                    </dsQueryResponse></SampleData>
<DataFields>
</DataFields>
<Xsl>
<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cmswrt="http://schemas.microsoft.com/WebPart/v3/Publishing/runtime" exclude-result-prefixes="xsl cmswrt x" > <xsl:import href="/Style Library/XSL Style Sheets/Header.xsl" /> <xsl:import href="/Style Library/XSL Style Sheets/ItemStyle.xsl" /> <xsl:import href="/Style Library/XSL Style Sheets/ContentQueryMain.xsl" /> </xsl:stylesheet></Xsl>
</WpNs0:ContentByQueryWebPart>

</ZoneTemplate></WebPartPages:WebPartZone>

</div>
</td>
</tr>
		</table>
		
		</div>
		
	
	</td>
	
</tr>
</table>     
</asp:Content>
