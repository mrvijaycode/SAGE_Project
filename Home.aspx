<%@ Page Language="C#" masterpagefile="_catalogs/masterpage/SAGE_V2.master" title="SAGE - Home" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register tagprefix="WebPartPages" namespace="Microsoft.SharePoint.WebPartPages" assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content id="Content1" runat="server" contentplaceholderid="PlaceHolderMain">

<script type="text/javascript" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/JS/tooltip.js"></script>
		
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
      }
      
      .pop{
		position: absolute;
        width: 400px;
        /*width: 280px;*/
        padding: 10px;
        background: #eeeeee;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;				
			}
    </style> 
    <link rel="stylesheet" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Style/SAGE.CSS" type="text/css" />				

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="SAGEBody">
<tr>
	<td valign="top" id="tdKeyMeasures">
		<div style="height:388px; width:423px">
			<img alt="Key Measures" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/KeyMeasures.jpg" width="423" height="389" border="0" usemap="#Map" hidefocus="hidefocus"/>
<map name="Map" id="Map">
  <area id="SSI" shape="circle" coords="133,58,54" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/ssi.aspx?itmid=1" /><!--Store &amp; Shopper Intelligence-->
  <area id="SGE" shape="circle" coords="212,197,77" href="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Pages/SGE.aspx?itmid=" /><!--Store as Growth Engine-->
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
	
	<td id="tdFindItNow" valign="top" align="center" style="padding-top:15px;padding-left:25px">
		<table border="0" cellpadding="4px" cellspacing="4px" width="400px">
			<tr >
				<td class="SAGE-Heading" height="36px" colspan="2" style="background-image:url('WPPages/Images/Menu_BG.jpg');background-repeat:repeat-x">FIND IT NOW</td>
			</tr>
			<tr >
				<td width="115px" class="SAGE-Title">Key Words</td>
				<td><input id="txtKW" type="text" value="" class="SAGE-Controls"/></td>
			</tr>
			<tr>
				<td class="SAGE-Title">Exact Phrase</td>
				<td><input id="txtEP" type="text" value="" class="SAGE-Controls" /></td>
			</tr>
			<tr>
				<td class="SAGE-Title">SAGE Bubble</td>
				<td>
					<select id="drdKM" class="SAGE-Controls">
					
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Channel</td>
				<td>
					<select id="drdChannel" class="SAGE-Controls">
					
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Region</td>
				<td>
				<select id="drdRegion" class="SAGE-Controls">
					
					</select>
				</td>
			</tr>
			<tr>
				<td class="SAGE-Title">Category</td>
				<td>
				<select id="drdCat" class="SAGE-Controls">
					
				</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right" style="padding-right:20px">
					<img onclick="" style="cursor:hand;" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/Search.jpg" alt="Search" border="0"/>
				</td>				
			</tr>

		</table>	
	</td>
	
</tr>
</table>

<div id="cuPos" style="position:absolute"></div>    
    
</asp:Content>
