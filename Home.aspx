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
    
     <script type="text/javascript">
      $(function() {
        var moveLeft = 20;
        var moveDown = 10;
////SSI
        $('area#SSI').hover(function(e) {
          $('div#pop-SSI').show();
      
        }, function() {
          $('div#pop-SSI').hide();
        });
        
        $('area#SSI').mousemove(function(e) {
          $("div#pop-SSI").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
        });
        
////SGE
        $('area#SGE').hover(function(e) {
          $('div#pop-SGE').show();
      
        }, function() {
          $('div#pop-SGE').hide();
        });
        
         $('area#SGE').mousemove(function(e) {
          $("div#pop-SGE").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
        });
        
////SSO
        $('area#SSO').hover(function(e) {
          $('div#pop-SSO').show();
      
        }, function() {
          $('div#pop-SSO').hide();
        });
        
         $('area#SSO').mousemove(function(e) {
          $("div#pop-SSO").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
        });

////SSG
        $('area#SSG').hover(function(e) {
          $('div#pop-SSG').show();
      
        }, function() {
          $('div#pop-SSG').hide();
        });
        
         $('area#SSG').mousemove(function(e) {
          $("div#pop-SSG").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
        });

////MS
        $('area#MS').hover(function(e) {
          $('div#pop-MS').show();
      
        }, function() {
          $('div#pop-MS').hide();
        });
        
         $('area#MS').mousemove(function(e) {
          //$("div#pop-MS").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
          $("div#pop-MS").css({'top': e.pageY + moveDown,'left': e.pageX + moveLeft});
        });

////BS
        $('area#BS').hover(function (e) {
		$('div#pop-BS').show();
				
				}, function () {
					$('div#pop-BS').hide();
				});
				
$('area#BS').mousemove(function (e) {

//	$("div#pop-BS").css({'top': e.pageY + moveDown,'left': e.pageX + moveLeft});
	$("div#pop-BS").css({'bottom':'10px','left': e.pageX + moveLeft});
	var bot = $("div#pop-BS").css("bottom");
	var top = $("div#pop-BS").css("top");
	//alert(bot);
	//alert(top);
	if(bot == "auto")
	{
		//$("div#pop-BS").removeAttr('style');
		//$("div#pop-BS").addClass("pop");
		
      //  $("div#pop-BS").css('left', e.pageX + moveLeft).css('bottom', '10px').css('top', '10px');
     // $("div#pop-BS").css({'top':'','left':e.pageX + moveLeft,'bottom':'10px'});
	}
});
				
				
////BB
        $('area#BB').hover(function(e) {
          $('div#pop-BB').show();
      
        }, function() {
          $('div#pop-BB').hide();
        });
        
         $('area#BB').mousemove(function(e) {
         // $("div#pop-BB").css('left', e.pageX + moveLeft).css('bottom', '10px');
         $("div#pop-BB").css({'left':e.pageX + moveLeft,'bottom':'10px'});
        });       
      });
    </script>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="SAGEBody">
<tr>
	<td valign="top" id="tdKeyMeasures">
		<div style="height:388px; width:423px">
			<img alt="Key Measures" src="http://teamspace.pg.com/sites/ShopperBasedDesign/SAGE/WPPages/Images/KeyMeasures.jpg" width="423" height="389" border="0" usemap="#Map" hidefocus="hidefocus"/>
<map name="Map" id="Map">
  <area id="SSI" shape="circle" coords="133,58,54" href="#" /><!--Store &amp; Shopper Intelligence-->
  <area id="SGE" shape="circle" coords="212,197,77" href="#" /><!--Store as Growth Engine-->
  <area id="MS" shape="circle" coords="364,195,55" href="#" /><!-- More Stores-->
  <area id="SSG" shape="circle" coords="297,57,55" href="#" /> <!--Shopper Sources of Growth-->
  <area id="SSO" shape="circle" coords="60,197,55" href="#" /><!--Superb Store Operations-->
  <area id="BB" shape="circle" coords="135,330,55" href="#" /><!--Bigger Baskets-->
  <area id="BS" shape="circle" coords="296,328,55" href="#" /><!--Better Stores-->
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
    
</asp:Content>
