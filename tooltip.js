
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

	$(document).mousemove(function (e) {
		var cu = "Y:" + e.pageY + " X:" + e.pageX + "<br>Height:" + $(document).height();
		dif = parseInt($(document).height()) - parseInt(e.pageY);
		cu += "<br>Space from below:" + dif;
		//$("#cuPos").html(cu);
		//$("#cuPos").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
	});
	$(document).attr('title', 'SAGE - Home');
	//alert($.browser.version);

	if ($.browser.version == "6.0") {}
});

//hide selects
function updateSelects(itens, value) {

	for (i = 0; i < itens.length; i++) {
		if (itens[i].id != "ctl00_PlaceHolderSearchArea_ctl01_SBScopesDDL")
			itens[i].style.display = value;

	}
}

function ie6fix(objOp) {

	//alert(objOp);

	switch (objOp) {
	case "hide":
		updateSelects(document.getElementsByTagName("select"), "none");
		break;
	case "show":
		updateSelects(document.getElementsByTagName("select"), "inline");
		break;
	}
}

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
			ie6fix("hide");
		}, function () {
			$('div#pop-SSI').hide();
			ie6fix("show");
		});

		$('area#SSI').mousemove(function (e) {
			//$("div#pop-SSI").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SSI", e, "50px");
		});

		//SGE
		$('area#SGE').hover(function (e) {
			$('div#pop-SGE').show();
			ie6fix("hide");
		}, function () {
			$('div#pop-SGE').hide();
			ie6fix("show");
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
			ie6fix("hide");
		}, function () {
			$('div#pop-SSG').hide();
			ie6fix("show");
		});

		$('area#SSG').mousemove(function (e) {
			//$("div#pop-SSG").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-SSG", e, "50px");
		});

		////MS
		$('area#MS').hover(function (e) {
			$('div#pop-MS').show();
			ie6fix("hide");
		}, function () {
			$('div#pop-MS').hide();
			ie6fix("show");
		});

		$('area#MS').mousemove(function (e) {
			//$("div#pop-MS").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
			posPop("pop-MS", e, "10px");
		});

		////BS
		$('area#BS').hover(function (e) {
			$('div#pop-BS').show();
			ie6fix("hide");

		}, function () {
			$('div#pop-BS').hide();
			ie6fix("show");
		});

		$('area#BS').mousemove(function (e) {
			//posPop("pop-BS",e,"10px");
			$("div#pop-BS").css({
				'bottom' : '10px',
				'left' : e.pageX + moveLeft
			});

		});

		////BB
		$('area#BB').hover(function (e) {
			$('div#pop-BB').show();
			ie6fix("hide");
		}, function () {
			$('div#pop-BB').hide();
			ie6fix("show");
		});

		$('area#BB').mousemove(function (e) {
			//posPop("pop-BB",e,"10px");

			$("div#pop-BB").css({
				'bottom' : '10px',
				'left' : e.pageX + moveLeft
			});

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
