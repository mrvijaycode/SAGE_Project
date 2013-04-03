
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
		$("#cuPos").html(cu);
		$("#cuPos").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
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
			$("div#pop-SSI").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
		});

		//SGE
		$('area#SGE').hover(function (e) {
			$('div#pop-SGE').show();

		}, function () {
			$('div#pop-SGE').hide();
		});

		$('area#SGE').mousemove(function (e) {
			$("div#pop-SGE").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
		});

		////SSO
		$('area#SSO').hover(function (e) {
			$('div#pop-SSO').show();

		}, function () {
			$('div#pop-SSO').hide();
		});

		$('area#SSO').mousemove(function (e) {
			$("div#pop-SSO").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
		});

		//SSG
		$('area#SSG').hover(function (e) {
			$('div#pop-SSG').show();

		}, function () {
			$('div#pop-SSG').hide();
		});

		$('area#SSG').mousemove(function (e) {
			$("div#pop-SSG").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
		});

		////MS
		$('area#MS').hover(function (e) {
			$('div#pop-MS').show();

		}, function () {
			$('div#pop-MS').hide();
		});

		$('area#MS').mousemove(function (e) {
			//$("div#pop-MS").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);

			$("div#pop-MS").css({
				'top' : e.pageY + moveDown,
				'left' : e.pageX + moveLeft
			});

			//alert("ok");
			var p = $("div#pop-MS");
			var position = p.position();
			//var pos= "left: " + position.left + ", top: " + position.top;
			$("div#pop-MS #curID").html(position);

		});

		////BS
		$('area#BS').hover(function (e) {
			$('div#pop-BS').show();

		}, function () {
			$('div#pop-BS').hide();
		});

		$('area#BS').mousemove(function (e) {
			/*if (dif < 196) {
				$("div#pop-BS").css({
					'bottom' : '10px',
					'left' : e.pageX + moveLeft
				});
			} else {
				$("div#pop-BS").css({
					'top' : e.pageY + moveDown,
					'left' : e.pageX + moveLeft
				});
			}*/
			posPop("pop-BS");
		});

		////BB
		$('area#BB').hover(function (e) {
			$('div#pop-BB').show();

		}, function () {
			$('div#pop-BB').hide();
		});

		$('area#BB').mousemove(function (e) {
			// $("div#pop-BB").css('left', e.pageX + moveLeft).css('bottom', '10px');
			$("div#pop-BB").css({
				'left' : e.pageX + moveLeft,
				'bottom' : '10px'
			});
		});
	});
}

function posPop(strdiv) {
	if (dif < 196) {
		$("div#"+strdiv).css({
			'bottom' : '10px',
			'left' : e.pageX + moveLeft
		});
	} else {
		$("div#"+strdiv).css({
			'top' : e.pageY + moveDown,
			'left' : e.pageX + moveLeft
		});
	}
}
