/* (C) 2007 YOOtheme.com */

div.yoo-accordion dl, div.yoo-accordion dt, div.yoo-accordion dd {
	margin: 0px;
	padding: 0px;
}/* (C) 2007 YOOtheme.com */



div.default div.yoo-accordion {

	padding: 1px;

/*	border: 1px solid #C8C8C8;*/

}



div.default div.yoo-accordion dt.toggler {

	height: 30px;

/*	background: url(styles/default/images/item_header.png) 0 0 repeat-x;*/
	border-bottom:2px solid #1b63a8;

	line-height: 30px;

	text-indent: 10px;

	font-size: 125%;

	font-weight: bold;

	cursor: pointer;
	color:#1b63a8;

}



div.default div.yoo-accordion dt:hover.toggler, div.default div.yoo-accordion dt.sfhover {

	background: url(styles/default/images/item_header.png) 0 -30px repeat-x;

}



div.default div.yoo-accordion dd span.article {

/*	padding: 10px 20px 10px 20px;*/
	padding: 10px;

/*	border-bottom: 1px solid #E6E6E6;*/

}



div.default div.yoo-accordion dd.last span.article {

	border-bottom: none;

}/* (C) 2007 YOOtheme.com */

div.watermark div.yoo-accordion {
	padding: 10px 20px 10px 20px;
	border: 1px solid #C8C8C8;
	background: url(styles/watermark/images/watermark.png) 50% 40% no-repeat;
}

div.watermark div.yoo-accordion dt.toggler {
	height: 30px;
	background: url(styles/watermark/images/item_header.png) 0 0 repeat-x;
	line-height: 30px;
	font-size: 125%;
	font-weight: bold;
	cursor: pointer;
}

div.watermark div.yoo-accordion dt:hover.toggler, div.watermark div.yoo-accordion dt.sfhover {
}

div.watermark div.yoo-accordion dd span.article {
	padding: 10px 0px 10px 0px;
	background: url(styles/watermark/images/item_header.png) 0 100% repeat-x;
}

div.watermark div.yoo-accordion dd.last span.article {
	background: none;
}/* (C) 2007 YOOtheme.com */

div.whitespace div.yoo-accordion {
}

div.whitespace div.yoo-accordion dt.toggler {
	margin-bottom: 10px;
	background: url(styles/whitespace/images/item_header_m.png) 0 0 repeat-x;
}

div.whitespace div.yoo-accordion dt span.header-l {
	background: url(styles/whitespace/images/item_header_l.png) 0 0 no-repeat;
	display: block;
}

div.whitespace div.yoo-accordion dt span.header-r {
	height: 30px;
	background: url(styles/whitespace/images/item_header_r.png) 100% 0 no-repeat;
	display: block;
	line-height: 30px;
	text-indent: 10px;
	font-size: 125%;
	font-weight: bold;
	cursor: pointer;
}

div.whitespace div.yoo-accordion dt:hover.toggler {
	background: url(styles/whitespace/images/item_header_m.png) 0 -30px repeat-x;
}

div.whitespace div.yoo-accordion dt:hover span.header-l {
	background: url(styles/whitespace/images/item_header_l.png) 0 -30px no-repeat;
}

div.whitespace div.yoo-accordion dt:hover span.header-r {
	background: url(styles/whitespace/images/item_header_r.png) 100% -30px no-repeat;
}

div.whitespace div.yoo-accordion dd span.article {
	padding: 0px 10px 10px 10px;
}