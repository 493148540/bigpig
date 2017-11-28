<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.clear{ clear:both}
#ImgDetail{
    text-align: center;
    padding-top: 100px;
}
.modal-img{
	display: -webkit-inline-box;
} </style>
<script>

 function showImg(img){
	 debugger;
	 var src = $(img).attr('src');
	 var content = $('#ImgDetail .modal-img');
	 var img = $('<img  style="width:auto;height:auto;min-width:0;	min-height: 0;align-content:center;" src="'+src+'">');
	 content.empty();
	 content.append(img);
	 content.append($('<div class="clear"></div>'));
	$('#ImgDetail').modal('show');
}

</script>

<div class="modal fade" id="ImgDetail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-img">
		
	</div><!-- /.modal -->
</div>
</body>
</html>