<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<div class="container">
	<!-- 页面导航 -->
	<div class="page-header">
		<div class="page-title" style="padding-bottom: 5px">
			<h3>旅游管理系统</h3>
			<ol class="breadcrumb">
				<li>系统管理</li>
				<li>菜单管理</li>
				<li class="active">添加菜单</li>
			</ol>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading" id="editTitle"></div>
		<div style="margin-left: 240px;">
			<form class="form-horizontal" id="editMenuForm">
				<div class="form-group">
					<div class="col-sm-2 control-label">类型：</div>
					<label class="radio-inline">
						<input type="radio" name="menuType" value="1" checked> 菜单 </label>
					<label class="radio-inline">
						<input type="radio" name="menuType" value="2"> 按钮 </label>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">菜单名称：</div>
					<div class="col-sm-10">
						<input type="text" id="menuName"  placeholder="菜单名称或按钮名称" class="form-control dynamicClear required">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">上级菜单：</div>
					<div class="col-sm-10">
						<input type="text" id="parentName" readonly="readonly" placeholder="一级菜单"
							class="form-control required dynamicClear text_parentMenu" style="cursor: pointer;">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">菜单URL：</div>
					<div class="col-sm-10">
						<input type="text" id="menuUrl" placeholder="菜单URL" class="form-control dynamicClear">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">授权标识：</div>
					<div class="col-sm-10">
						<input type="text" id="menuPermission" placeholder="多个用逗号分隔，如：user:list,user:create"
							class="form-control dynamicClear">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">排序号：</div>
					<div class="col-sm-10">
						<input type="number" id="menuSort" placeholder="排序号" class="form-control required dynamicClear">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-5 control-label"></div>
					<input type="button" id="btn_save" class="btn btn-primary">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" id="btn_return" value="返回" class="btn btn-warning">
				</div>
			</form>
		</div>
	</div>
	<!-- 选择菜单 -->
	<div class="layui-layer layui-layer-page layui-layer-molv layer-anim" id="menuLayer" type="page" times="2" showtime="0" contype="object"
		style="z-index: 19891016; width: 300px; height: 450px; top: 100px; left: 500px; display:none">
		<div class="layui-layer-title" style="cursor: move;">选择菜单</div>
		<div class="layui-layer-content" style="height: 358px;">
			<div style="padding: 10px;" class="layui-layer-wrap">
				<ul id="menuTree" class="ztree"></ul>    <!-- 动态加载树 -->
			</div>
		</div>
		<span class="layui-layer-setwin"> <a class="layui-layer-ico layui-layer-close layui-layer-close1 btn_cancle" ></a></span>
		<div class="layui-layer-btn layui-layer-btn-">
			<a class="layui-layer-btn0 btn_confirm">确定</a>
			<a class="layui-layer-btn1 btn_cancle">取消</a>
		</div>
	</div>
</div>
<script type="text/javascript" src="${basePath}/js/system/menu_edit.js"></script>