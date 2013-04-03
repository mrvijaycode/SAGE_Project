//var itmid = window.location.search.split("?itmid=")[1];

var keyBodyArr = new Array();
var keyTitleArr = new Array();
var keyIDArr = new Array();

$(document).ready(function () {
	contentLoad();
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
		if (strTitleArr[0] != "") {
			strTitle = strTitleArr[0];
		}
	});

	$.each(strBodyArr, function (i) {
		if (strBodyArr[0] != "") {
			strBody = strBodyArr[0];
		}
	});
	
	var strHtml = "<h4>" + strTitle + "</h4><p>" + strBody + "</p>";
	$("#divsso").html(strHtml)
}
