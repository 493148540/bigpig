.even{
	background: #fff38f;
}
.odd{
	background: #ffffee;
}
$(function(){
	$("tbody>tr:odd").addClass("add");
	$("tbody>tr:even").addClass("even");
})
