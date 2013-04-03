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
	buidTable(keyTitleArr);
}

function buidTable(strArr) {

	$.each(strArr, function (i) {
		if (strArr[i] != "") {
			alert(strArr[i]);
			//strQuery += "<Method ID='" + (i + 1) + "' Cmd='Delete'><Field Name='ID'>" + strArr[i] + "</Field></Method>";
		}
	});

	//var strHtml = "<p id='curID'></p>" + "<h4>" + strTitle + "</h4><p>" + strBody + "</p>";
	//return strHtml;
}
