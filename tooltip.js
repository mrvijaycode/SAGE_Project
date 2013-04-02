$(document).ready(function () {
	tooltip();
});

function tooltip() {
	//alert("working..");
	$().SPServices({
		operation : "GetListItems",
		async : false,
		listName : "KeyMeasureDetails",
		//CAMLQueryOptions : "<QueryOptions><IncludeAttachmentUrls>TRUE</IncludeAttachmentUrls></QueryOptions>",
		CAMLQuery : "",
		completefunc : function (xData, Status) {

			//alert(xData.responseText);
			$(xData.responseXML).SPFilterNode("z:row").each(function () {

				var keyMeasure = $(this).attr("ows_Key_x0020_Measure");
				var keyBody = $(this).attr("ows_Key_x0020_Measure_x0020_Summary");
				var keyTitle = $(this).attr("ows_Title");
				var keyID = $(this).attr("ows_ID");

				//alert(keyID + ":" + keyTitle);
				debugger
				switch (keyID) {
				case "1":
					$("#pop-SSI").html(buidTable(keyTitle, keyBody));
					break;
					
				case "2":
					$("#pop-SSG").html(buidTable(keyTitle, keyBody));
					break;

				case "3":
					$("#pop-MS").html(buidTable(keyTitle, keyBody));
					break;

				case "4":
					$("#pop-BS").html(buidTable(keyTitle, keyBody));
					break;

				case "5":
					$("#pop-BB").html(buidTable(keyTitle, keyBody));
					break;

				case "6":
					$("#pop-SSO").html(buidTable(keyTitle, keyBody));
					break;
				}
			});
		}
	});
}

//build the table
function buidTable(strTitle, strBody) {
	var strHtml = "<h4>" + strTitle + "</h4><p>" + strBody + "</p>";
	return strHtml;
}
