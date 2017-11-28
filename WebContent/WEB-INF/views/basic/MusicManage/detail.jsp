<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
function showDetail(url){
	debugger;
	$.get(url,function(data){
		debugger;
		var spans = $('#Detail .modal-content span');
		spans.empty();
		for(var i=0;i<spans.length;i++){
			var span = $(spans[i])
			span.text(data[span.attr('class')]);
		}
		$('#Detail').modal('show');
	})
}
</script>
</head>
<body>
	<div class="modal fade" id="Detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
	<div class="modal-content" style="padding:30px">
			<div class="form-group">
				<label for="inputfile">申请人:</label>
				<p class="help-block "><span class="name">ss</span></p>
			</div>
			<div class="form-group">
				<label for="inputfile">性别:</label>
				<p class="help-block"><span class="sex"></span></p>
			</div>
			<div class="form-group">
				<label for="inputfile">电话:</label>
				<p class="help-block"><span class="tel"></span></p>
			</div>
			<div class="form-group">
				<label for="inputfile">价格:</label>
				<p class="help-block"><span class="car_minprice"></span>-<span class="car_maxprice"></span>万元</p>
			</div>
			<div class="form-group">
				<label for="inputfile">首付比例:</label>
				<p class="help-block"><span class="minpayments"></span>%-<span class="maxpayments"></span>%</p>
			</div>
			<div class="form-group">
				<label for="inputfile">还款期限:</label>
				<p class="help-block"><span class="minloanmonth"></span>-<span class="maxloanmonth"></span>个月</p>
			</div>
			<div class="form-group">
				<label for="inputfile">车型:</label>
				<p class="help-block"><span class="car_name"></span></p>
			</div>
			<div class="form-group">
				<label for="inputfile">车类型:</label>
				<p class="help-block"><span class="cartypech"></span></p>
			</div>
			<div class="form-group">
				<label for="inputfile">申请日期:</label>
				<p class="help-block"><span class="applicationdate"></span></p>
			</div>
		</div>
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
</html>