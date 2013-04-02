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
				var keyTitle = $(this).attr("ows_Title");
				var keyID = $(this).attr("ows_ID");

				//alert(keyID + ":" + keyTitle);
				debugger
				switch (keyID) {
				case "1":
					$("#pop-SSI").html(keyTitle);
					alert("done..")
					break;

				}
			});
		}
	});
}
