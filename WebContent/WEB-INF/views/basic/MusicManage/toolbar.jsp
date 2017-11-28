<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="toolbar" style="background:white">
		<div class="options">
			<button type="button" class="btn btn-default btn-sm" onclick="Add()">
				<span class="glyphicon glyphicon-plus-sign"></span> 添加
			</button>
			<button type="button" class="btn btn-default btn-sm" onclick="Edit()">
				<span class="glyphicon glyphicon-edit" ></span> 编辑
			</button>
			<button type="button" class="btn btn-default btn-sm"  onclick="OpenMessage()">
				<span class="glyphicon glyphicon-remove"></span> 删除
			</button>
			
		</div>
		<form id="queryfm">
			<div class="input-group" style="width:185px">
            
            <input type="text" id="name" class="form-control" placeholder="输入用户名查询">
             <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="doSearch()">搜索</button>
                    </span>
        </div>
		</form>
		
	</div>
</body>
</html>