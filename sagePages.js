
//***************************************************************
//* Project Name     : SAGE
//* Application name : subpages
//* Dependencies     :
//* Limitations      :
//* Created Date     : 2 April 2013
//* Author           : Vijay Bhaskar C
//****************************************************************

var itmid = window.location.search.split("?itmid=")[1];

var keyBodyArr = new Array();
var keyTitleArr = new Array();
var keyIDArr = new Array();

$(document).ready(function () {
	contentLoad();
	toolsCapabilities();
	//alert(itmid);
});

function contentLoad() {

	var i = 0;

	$().SPServices({
		operation : "GetListItems",
		async : false,
		listName : "KeyMeasureDetails",
		//CAMLQueryOptions : "<QueryOptions><IncludeAttachmentUrls>TRUE</IncludeAttachmentUrls></QueryOptions>",
		CAMLQuery : "",
		completefunc : function (xData, Status) {

			//alert(xData.responseText);
			$(xData.responseXML).SPFilterNode("z:row").each(function () {
				keyBodyArr[i] = $(this).attr("ows_Key_x0020_Measure_x0020_Summary");
				keyTitleArr[i] = $(this).attr("ows_Title");
				keyIDArr[i] = $(this).attr("ows_ID");
				i++;
			});
		}
	});
	buidTable(keyTitleArr, keyBodyArr);
}

function buidTable(strTitleArr, strBodyArr) {
	var strTitle;
	var strBody;

	$.each(strTitleArr, function (i) {
		if (strTitleArr[itmid - 1] != "") {
			strTitle = strTitleArr[itmid - 1];
		}
	});

	$.each(strBodyArr, function (i) {
		if (strBodyArr[itmid - 1] != "") {
			strBody = strBodyArr[itmid - 1];
		}
	});

	var strHtml = "<h4 style='padding-left:25px'>" + strTitle + "</h4><p>" + strBody + "</p>";
	$("#divContent").html(strHtml)
}

function toolsCapabilities() {
	var keyCapability = "";

	switch (itmid) {
	case "1":
		keyCapability = "Store &amp; Shopper Intelligence";
		break;

	case "2":
		keyCapability = "Shopper Sources of Growth";
		break;

	case "3":
		keyCapability = "More Stores";
		break;

	case "4":
		keyCapability = "Better Stores";
		break;

	case "5":
		keyCapability = "Bigger Baskets";
		break;

	case "6":
		keyCapability = "Superb Store Operations";
		break;
	}

	var strHtml="<table><tr><td style='font-weight:bold'>Tools & Capabilities</td></tr>";
	$().SPServices({
		operation : "GetListItems",
		async : false,
		listName : "Tools &amp; Capabilities",
		//CAMLQueryOptions : "<QueryOptions><IncludeAttachmentUrls>TRUE</IncludeAttachmentUrls></QueryOptions>",
		CAMLQuery : "<Query><Where><Eq><FieldRef Name='Key_x0020_Measure' /><Value Type='Lookup'>" + keyCapability + "</Value></Eq></Where><OrderBy><FieldRef Name='Modified' /></OrderBy></Query>",
		completefunc : function (xData, Status) {

			//alert(xData.responseText);
			$(xData.responseXML).SPFilterNode("z:row").each(function () {
					var strURL = $(this).attr("ows_URL");
					
					strHtml+="<tr><td><a href='"+strURL.split(',')[0]+"'>"+strURL.split(',')[1]+"</a></td></tr>";
					//alert(strHtml);
				});
		}
	});
	strHtml+="</table>";
	$("#divLinks").html(strHtml);
}
