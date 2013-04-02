
$(document).ready(function () {
	//main();
	//alert("OK");
	tooltip();
});

function main() {
	alert("welcome to the fucntion");
}

function tooltip() {
	alert("working..");
	$().SPServices({
		operation : "GetListItems",
		async : false,
		listName : "KeyMeasureDetails",
		//CAMLQueryOptions : "<QueryOptions><IncludeAttachmentUrls>TRUE</IncludeAttachmentUrls></QueryOptions>",
		CAMLQuery : "",
		completefunc : function (xData, Status) {

			alert(xData.responseText);
			$(xData.responseXML).SPFilterNode("z:row").each(function () {});
		}
	});
}