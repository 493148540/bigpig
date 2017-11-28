<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
	<!-- 模态框（Modal） -->
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">用户管理</h4>
            </div>
            <div class="modal-body"  style="height:600px; overflow-y: scroll;">
            <form id="dataform" role="form">	            
				<div class="form-group" >
				    <label for="musicName">音乐名</label>
				    <input class="form-control" name="musicName">
			 	</div>
			 	<div class="form-group" >
				    <label for="musicAuthor">演唱者</label>
				    <input class="form-control" name="musicAuthor">
			 	</div>
			 	<div class="form-group" >
				    <label for="musicLyric">歌词路径</label>
				    <input class="form-control" name="musicLyric">
			 	</div>
			 	<div class="form-group" >
				    <label for="musicKeyWards">关键词</label>
				    <input class="form-control" name="musicKeyWards">
			 	</div>
			 	<div class="form-group" >
				    <label for="musicImage">封面</label>								
				    <input class="form-control jcropplugin" name="musicImage" id="musicImage" >
				    
			 	</div>
			 	
			 	<div class="form-group" >
				    <label for="musicAlbum">专辑</label>
				    <input class="form-control" name="musicAlbum">
			 	</div>
  				<input type="text" style="display:none" name="musicMd5">
			 	<input type="text" style="display:none" name="musicId" >		
			</form></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="Save()">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="removeMsg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">提示</h4>
            </div>
            <div class="modal-body"  style="height:100px; ">
            	确定要删除吗?
            </div> +
            <div class="modal-footer" style="text-align:center">
            	<button type="button" class="btn btn-primary" onclick="Remove()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
</body>
</html>