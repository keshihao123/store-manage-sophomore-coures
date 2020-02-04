<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<style type="text/css">
body, html {
	width: 100%;
	height: 100%;
	margin: 20;
	font-family: "微软雅黑";
	font-size: 14px;
}

#l-map {
	height: 400px;
	width: 100%;
}

#r-result {
	text-align:center;
	width: 100%;
}
</style>

<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
    <div id="wu-toolbar">
        <div class="wu-toolbar-button">
            <%@include file="../common/menus.jsp"%>
        </div>
        <div class="wu-toolbar-search">
            <label>门店名称:</label><input id="search-name" class="wu-text" style="width:100px">
            
            <a href="#" id="search-btn" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->
<div id="add-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="add-form" method="post">
        <table>

            <tr>
                <td width="60" align="right">门店名称:</td>
                <td><input type="text" name="sname" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店名称'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">门店电话:</td>
                <td><input type="text" name="sphone" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店电话'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">地址:</td>
                <td><input type="text" name="address" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店地址'" /></td>
            </tr>
            <tr>
                <td align="right">经纬度:</td>
                <td>
                	<input type="text" id="add-icon" name="lal" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请选择地点'" />
                	<a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="selectIcon()" plain="true">选择</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- 修改窗口 -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <input type="hidden" name="id" id="edit-id">
        <table>
            <tr>
                <td width="60" align="right">门店名称:</td>
                <td><input type="text" id="edit-sname" name="sname" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店名称'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">门店电话:</td>
                <td><input type="text" id="edit-sphone" name="sphone" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店电话'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">地址:</td>
                <td><input type="text" id="edit-address"  name="address" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写门店地址'" /></td>
            </tr>
            <tr>
                <td align="right">经纬度:</td>
                <td>
                	<input type="text" id="edit-lal"  id="add-icon" name="lal" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请选择地点'" />
                	<a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="selectIcon()" plain="true">选择</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- 选择图标弹窗 -->
<div id="select-icon-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:820px;height:550px; padding:10px;">
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QjprGMe3dc27eTaGoI9AAHbOKra9hOsQ"></script>
     <div id="l-map"></div>
	<br />
	<div id="r-result" >
		请输入地址:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="suggestId" size="20" value=""
			style="width: 500px;" position:relative;z-index:2;/>
	</div>
	<br />

	<div id="searchResultPanel" z-index:999
		style="border: 1px solid #C0C0C0; width: 150px; height: auto; display: none;"></div>  
	<script type="text/javascript">
	// 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}

	var map = new BMap.Map("l-map");
	
	map.centerAndZoom("北京", 12); // 初始化地图,设置城市和地图级别。
	
	map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
	
	map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
	
	var ac = new BMap.Autocomplete( //建立一个自动完成的对象
	{
		"input" : "suggestId",
		"location" : map
	});

	ac.addEventListener("onhighlight", function(e) { //鼠标放在下拉列表上的事件
		var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province + _value.city + _value.district
					+ _value.street + _value.business;
		}
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = "
				+ value;

		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province + _value.city + _value.district
					+ _value.street + _value.business;
		}
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = "
				+ value;
		G("searchResultPanel").innerHTML = str;
	});

	var myValue;
	ac.addEventListener("onconfirm", function(e) { //鼠标点击下拉列表后的事件
		var _value = e.item.value;
		myValue = _value.province + _value.city + _value.district
				+ _value.street + _value.business;
		G("searchResultPanel").innerHTML = "onconfirm<br />index = "
				+ e.item.index + "<br />myValue = " + myValue;

		setPlace();
	});
	var lal;                   //lal就是 "经度,纬度" 中间逗号是英文的
	map.addEventListener("click",function(c){
		map.clearOverlays();
		var jingdu = c.point.lng ;       
        var weidu =  c.point.lat;
        var a = ',';
        var point = new BMap.Point(jingdu, weidu);
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        lal = jingdu+a+weidu;
        return lal;
	});
	function setPlace() {
		map.clearOverlays(); //清除地图上所有覆盖物
		function myFun() {
			var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 18);
			var marker = new BMap.Marker(pp);
			map.addOverlay(marker); //添加标注
			map.addEventListener("click",function(e){
		        var jingdu = e.point.lng ;       
		        var weidu =  e.point.lat;
		        var a = ',';
		        lal = jingdu+a+weidu;             //得到  经度,纬度     
		        return lal;		        
		    });
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
			onSearchComplete : myFun
		});
		local.search(myValue);
	}
</script> 
</div>
<%@include file="../common/footer.jsp"%>

<!-- End of easyui-dialog -->
<script type="text/javascript">
		//上传图片

	
	
	/**
	*  添加记录
	*/
	function add(){
		var validate = $("#add-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#add-form").serialize();
		$.ajax({
			url:'add',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','添加成功！','info');
					//$("#add-content").val('');
					$('#add-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	function edit(){
		var validate = $("#edit-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#edit-form").serialize();
		$.ajax({
			url:'edit',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','编辑成功！','info');
					//$("#add-content").val('');
					$('#edit-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
		function selectIcon(){

		
		$('#select-icon-dialog').dialog({
			closed: false,
			modal:true,
            title: "选择位置",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                	var icon = $(".selected a").attr('class');
                	$("#add-icon").val(lal);
                	$("#edit-lal").val(lal);
                	$('#select-icon-dialog').dialog('close'); 
                }
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#select-icon-dialog').dialog('close');                    
                }
            }]
        });
	}
	
	/**
	* 删除记录
	*/
	function remove(){
		$.messager.confirm('信息提示','确定要删除该记录？', function(result){
			if(result){
				var item = $('#data-datagrid').datagrid('getSelected');
				if(item == null || item.length == 0){
					$.messager.alert('信息提示','请选择要删除的数据！','info');
					return;
				}
				
				$.ajax({
					url:'delete',
					dataType:'json',
					type:'post',
					data:{id:item.id},
					success:function(data){
						if(data.type == 'success'){
							$.messager.alert('信息提示','删除成功！','info');
							$('#data-datagrid').datagrid('reload');
						}else{
							$.messager.alert('信息提示',data.msg,'warning');
						}
					}
				});
			}	
		});
	}
	
	/**
	* Name 打开添加窗口
	*/
	function openAdd(){
		//$('#add-form').form('clear');
		$('#add-dialog').dialog({
			closed: false,
			modal:true,
            title: "添加门店信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: add
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#add-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	//$("#add-form input").val('');
            }
        });
	}
	
	function openEdit(){
		//$('#add-form').form('clear');
		var item = $('#data-datagrid').datagrid('getSelected');
				if(item == null || item.length == 0){
					$.messager.alert('信息提示','请选择要修改的数据！','info');
					return;
				}
		$('#edit-dialog').dialog({
			closed: false,
			modal:true,
            title: "编辑门店信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: edit
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#edit-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	$("#edit-id").val(item.id);
            	$("#edit-sname").val(item.sname);
            	$("#edit-sphone").val(item.sphone);
            	$("#edit-address").val(item.address);
            	$("#edit-lal").val(item.lal);
            	//$("#add-form input").val('');
            }
        });
	}
	
	//搜索按钮监听
	$("#search-btn").click(function(){
		var option = {content:$("#search-name").val()};
		$('#data-datagrid').datagrid('reload',option);
	});
	
	function add0(m){return m<10?'0'+m:m }
	function format(shijianchuo){
	//shijianchuo是整数，否则要parseInt转换
		var time = new Date(shijianchuo);
		var y = time.getFullYear();
		var m = time.getMonth()+1;
		var d = time.getDate();
		var h = time.getHours();
		var mm = time.getMinutes();
		var s = time.getSeconds();
		return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
	}
	
	/** 
	* 载入数据
	*/
	$('#data-datagrid').datagrid({
		url:'list',
		rownumbers:true,
		singleSelect:true,
		pageSize:20,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		idField:'id',
	    treeField:'name',
		fit:true,
		columns:[[
			{ field:'chk',checkbox:true},
			{ field:'sname',title:'门店名称',width:200,sortable:true},
			{ field:'sphone',title:'联系电话',width:200,sortable:true},
			{ field:'address',title:'地址',width:200,sortable:true},
			{ field:'lal',title:'经纬度',width:200,sortable:true},

		]],

	});
</script>