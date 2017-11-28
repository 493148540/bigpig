$(function(){
	
	addJcropplugin();
})

var jcropApi;
function addJcropplugin(){
	var input = $(".jcropplugin");
	input.after($('<input type="file" name="imagefile" id="imgOne"  onchange="preImg(this.id,\'target\');" />'))
	.after($('<span id="cutimg" class="red" style="display:none">*请在下方裁剪图片</span> '))
	    .after($('<input type="hidden" id="x" name="x" value="-1"/>'))
		 .after($('<input type="hidden" id="y" name="y" value="-1"/>'))
		.after($('<input type="hidden" id="w" name="w" value="-1"/>'))
		.after($('<input type="hidden" id="h" name="h" value="-1"/>'))
		.after($('<button type="button"onclick="uploadimage(\'#imgOne\',\'#musicImage\')">上传图片</button>'))
		.after($('<img id="target" src="" style="display: block;" alt="[Jcrop]"/> '));	
}

function initJcrop(src)//{{{
   {
     // Hide any interface elements that require Jcrop
     // (This is for the local user interface portion.)
     $('.requiresjcrop').hide();
	if($('#target').attr('src')==""){
		return;
	
	}
	
		
     // Invoke Jcrop in typical fashion
     $('#target').Jcrop({
       onSelect: updateCoords,
		aspectRatio: 1/1,
		allowMove:true,
		boxWidth:600,
		boxHeight:400
		
     }, function() {
   	  jcropApi = this;
});
     $('#cutimg').show();
     return jcropApi;
   }
function updateCoords(c)

 {debugger;
   $('#x').val(c.x);
   $('#y').val(c.y);
   $('#w').val(c.w);
   $('#h').val(c.h);
 };
function preImg(sourceId, targetId) {  
	debugger;
    if (typeof FileReader === 'undefined') {  
        alert('Your browser does not support FileReader...');  
        return;  
    }  
    var reader = new FileReader();  
  
    reader.onload = function(e) {  
        var img = document.getElementById(targetId);  
        img.src = this.result;
        initJcrop();
		jcropApi.setImage(img.src);
    }  
    reader.readAsDataURL(document.getElementById(sourceId).files[0]);  
	
	
}  

function uploadimage(fileid,filenameid){
	debugger;
	var form = new FormData();
	var file = $(fileid)[0].files[0];
	form.append("imagefile",file);
	form.append("imagepath", $(filenameid).val());
	$.ajax({
        url:"util/uploadimage",
        type:"post",
        data:form,
        processData:false,
        contentType:false,
        success:function(data){
    		if(data.state==true){
    			alert("上传成功");
    			$(filenameid).val(data.obj);
    		}
    		
        },
        error:function(e){
       
       	return false;
        }
    });
	return false;
}