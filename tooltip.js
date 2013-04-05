
//***************************************************************
//* Project Name     : SAGE
//* Application name :
//* Dependencies     :
//* Limitations      :
//* Created Date     : 2 April 2013
//* Author           : Vijay Bhaskar C
//****************************************************************

var dif;
var moveLeft = 20;
var moveDown = 10;

$(document).ready(function () {
	tooltip();
	popupMove();
	fillSelects();

	$(document).mousemove(function (e) {
		var cu = "Y:" + e.pageY + " X:" + e.pageX + "<br>Height:" + $(document).height();
		dif = parseInt($(document).height()) - parseInt(e.pageY);
		cu += "<br>Space from below:" + dif;
		//$("#cuPos").html(cu);
		//$("#cuPos").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
	});
});

// to get "KeyMeasureDetails" content on popups
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
				//debugger
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
	var strHtml = "<p id='curID'></p>" + "<h4>" + strTitle + "</h4><p>" + strBody + "</p>";
	return strHtml;
}

function popupMove() {
	$(function () {

		//SSI
		$('area#SSI').hover(function (e) {
			$('div#pop-SSI').show();

		}, function () {
			$('div#pop-SSI').hide();
		});

		$('area#SSI').mousemove(function (e) {
			//$("div#pop-SSI").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SSI", e, "50px");
		});

		//SGE
		$('area#SGE').hover(function (e) {
			$('div#pop-SGE').show();

		}, function () {
			$('div#pop-SGE').hide();
		});

		$('area#SGE').mousemove(function (e) {
			//$("div#pop-SGE").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SGE", e, "30px");
		});

		////SSO
		$('area#SSO').hover(function (e) {
			$('div#pop-SSO').show();

		}, function () {
			$('div#pop-SSO').hide();
		});

		$('area#SSO').mousemove(function (e) {
			//$("div#pop-SSO").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SSO", e, "30px");
		});

		//SSG
		$('area#SSG').hover(function (e) {
			$('div#pop-SSG').show();

		}, function () {
			$('div#pop-SSG').hide();
		});

		$('area#SSG').mousemove(function (e) {
			//$("div#pop-SSG").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SSG", e, "50px");
		});

		////MS
		$('area#MS').hover(function (e) {
			$('div#pop-MS').show();

		}, function () {
			$('div#pop-MS').hide();
		});

		$('area#MS').mousemove(function (e) {
			//$("div#pop-MS").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-MS", e, "10px");
		});

		////BS
		$('area#BS').hover(function (e) {
			$('div#pop-BS').show();

		}, function () {
			$('div#pop-BS').hide();
		});

		$('area#BS').mousemove(function (e) {
			posPop("pop-BS", e, "10px");
		});

		////BB
		$('area#BB').hover(function (e) {
			$('div#pop-BB').show();

		}, function () {
			$('div#pop-BB').hide();
		});

		$('area#BB').mousemove(function (e) {
			posPop("pop-BB", e, "10px");
		});
	});
}

//assign position for all
function posPop(strdiv, e, bt) {
	if (dif < 196) {
		$("div#" + strdiv).css({
			'bottom' : bt,
			'left' : e.pageX + moveLeft
		});
	} else {
		$("div#" + strdiv).css({
			'top' : e.pageY + moveDown,
			'left' : e.pageX + moveLeft
		});
	}
}

//fill all drop downs
function fillSelects() {
	addOption(document.getElementById('drdChannel'), 'Channel');
	addOption(document.getElementById('drdKM'), 'KeyMeasures');
	addOption(document.getElementById('drdRegion'), 'Region');
	addOption(document.getElementById('drdCat'), 'Category');
}

//add options to dropdown controls
function addOption(selectbox, strCat) {
	//debugger
	var options = loadControls(strCat);
	var items = options[0];
	var vals = options[1];
	for (i = 0; i < items.length; i++) {
		var optn = document.createElement("OPTION");
		optn.text = items[i];
		optn.value = vals[i];
		selectbox.options.add(optn);
	}
}

//load control items from the source list
function loadControls(strList) {
	var selOptions = new Array();
	var FSObjType = new Array();
	//debugger
	var i = 0;
	$().SPServices({
		operation : "GetListItems",
		async : false,
		listName : strList,
		CAMLViewFields : "<ViewFields><FieldRef Name='Title' /></ViewFields>",
		//CAMLQuery : "<Query><OrderBy><FieldRef Name='Category' /><FieldRef Name='ID' /></OrderBy><Where><Contains><FieldRef Name='Category' /><Value Type='Choice'>" + strCat + "</Value></Contains></Where></Query>",
		completefunc : function (xData, Status) {
			if (Status == 'success') {
				$(xData.responseXML).SPFilterNode("z:row").each(function () {
					selOptions[i] = $(this).attr("ows_Title");
					FSObjType[i] = $(this).attr("ows_FSObjType").split(';')[0];
					i++;
				});
			} else {
				alert(Status);
			}
		}
	});
	return [selOptions, FSObjType];
}

function Search() {
	//debugger

	var sbdLevel = $("#drdKM").find(":selected").text();
	//alert(sbdLevel);

	var category = $("#drdCat").find(":selected").text();
	//alert(category);

	var region = $("#drdRegion").find(":selected").text();
	//alert(region);

	var channel = $("#drdChannel").find(":selected").text();
	//alert(channel);

	var any = $("#AnyOfTheseWords").val();
	//alert(any);

	var exact = $("#ExactPhrase").val();
	//alert(exact);


	var searchTerm = "";

	if (any != "") {
		searchTerm = any;
	}

	if (exact != "") {
		searchTerm = "%22" + exact + "%22";
	}

	var query = "";

	query += searchTerm;

	if (sbdLevel != "-Select-") {
		query += " %22" + sbdLevel + "%22";
	}

	if (category != "-Select-") {
		query += " %22" + category + "%22 ";
	}

	if (region != "-Select-") {
		query += " %22" + region + "%22 ";
	}

	if (channel != "-Select-") {
		query += " %22" + channel + "%22 ";
	}

	//alert(query);
	var searchUrl = "/sites/ShopperBasedDesign/SAGE/WPPages/Pages/results.aspx?k=" + query;
	//alert(searchUrl);
	document.location.href = searchUrl;
	//window.location.replace(searchUrl);
	//$(window.location).attr('href',searchUrl);
}
