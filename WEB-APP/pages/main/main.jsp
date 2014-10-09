<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('COM.OSFI.WINDOW.TITLE')" /></title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/theme.css">
<link rel="stylesheet" href="<%=path%>/css/font-awesome.css">
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<!-- Demo page code -->
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>
<link href="<%=path%>/img/favicon_32.ico" rel="bookmark" type="image/x-icon" /> 
<link href="<%=path%>/img/favicon_32.ico" rel="icon" type="image/x-icon" /> 
<link href="<%=path%>/img/favicon_32.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
<!--<![endif]-->
	<s:if test="%{#request.role.menuList != null}">
		<s:set name="menuList" scope="session" value="#request.role.menuList"></s:set>
	</s:if>

	<s:if test="%{#request.taskNumber != null}">
		<s:set name="taskSize" scope="session" value="#request.taskNumber"></s:set>
	</s:if>
	
	
	
	<%@ include file="/pages/common/titleWithNav.jsp"%> 
	<%@ include file="/pages/common/sidebarWithNav.jsp"%> 
	
	<div class="content">
		<div class="header">
			<div class="stats">
				<p class="stat">
					<span class="number">53</span>tickets
				</p>
				<p class="stat">
					<span class="number"><s:property value="#session.taskSize"/></span>tasks
				</p>
				<p class="stat">
					<span class="number">15</span>waiting
				</p>
			</div>

			<h1 class="page-title">主页</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="<%=path%>/home/main.jspa">主页</a> <span class="divider"></span></li>
			<!-- 
			<li class="active">主页</li>
			 -->
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="row-fluid">
					<div class="alert alert-info">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Just a quick note:</strong> Hope you like the theme!
					</div>

					<div class="block">
						<a href="#page-stats" class="block-heading" data-toggle="collapse">Latest
							Stats</a>
						<div id="page-stats" class="block-body collapse in">
							<div class="stat-widget-container">
								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">2,500</p>
										<p class="detail">Accounts</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">3,299</p>
										<p class="detail">Subscribers</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">$1,500</p>
										<p class="detail">Pending</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">$12,675</p>
										<p class="detail">Completed</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="row-fluid">
					<div class="block span6">
						<a href="#tablewidget" class="block-heading"
							data-toggle="collapse">待处理任务
						</a>
						<!-- 
						<span class="label label-warning">+10</span>
						 -->
						<div id="tablewidget" class="block-body collapse in">
							<table class="table">
								<thead>
									<tr>
										<th>流程编号</th>
										<th>流程描述</th>
										<th>当前状态</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="technologicalProcessList" var="task" status="index">
										<tr>
											<td>
												<a href="<s:property value='#task.url'/>&formId=<s:property value='#task.id'/>">
													<s:property value="#task.id"/>
												</a>
											</td>
											<td><s:property value="#task.description"/></td>
											<td><s:property value="#task.state"/></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
							
							<p class="">
								默认最多显示5条.
								<!-- 
								<a href="users.html">More...</a>
								 -->
							</p>
						</div>
					</div>
					<div class="block span6">
						<a href="#widget1container" class="block-heading"
							data-toggle="collapse">系统公告 </a>
						<div id="widget1container" class="block-body collapse in">
							<table class="table">
								<thead>
									<tr>
										<th>编号</th>
										<th>标题</th>
										<th>时间</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="noticeList" var="notice" status="index">
										<a href="main!queryNotice.jspa?id=<s:property value='#notice.id'/>">
										<tr>
											<td>
												<s:property value="#index.index+1"/>
											</td>
											<td><s:property value="#notice.title"/></td>
											<td><s:property value="#notice.createdate"/></td>
										</tr>
										</a>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="row-fluid">
					<div class="block span6">
						<div class="block-heading">
							<span class="block-icon pull-right"> <a href="#"
								class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i
									class="icon-refresh"></i></a>
							</span> <a href="#widget2container" data-toggle="collapse">待处理任务</a>
						</div>
						<div id="widget2container" class="block-body collapse in">
							<table class="table list">
								<thead>
									<tr>
										<th>编号</th>
										<th>描述</th>
										<th>状态</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="taskList" var="task" status="index">
										<tr>
											<td><a href="#"><s:property value="#task.id"/></a></td>
											<td><s:property value="#task.name"/></td>
											<td>
												<a href="#">查看</a> 
											</td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					<div class="block span6">
						<p class="block-heading">Not Collapsible</p>
						<div class="block-body">
							<h2>Built with Less</h2>
							<p>The CSS is built with Less. There is a compiled version
								included if you prefer plain CSS.</p>
							<p>Fava bean jícama seakale beetroot courgette shallot
								amaranth pea garbanzo carrot radicchio peanut leek pea sprouts
								arugula brussels sprout green bean. Spring onion broccoli
								chicory shallot winter purslane pumpkin gumbo cabbage squash
								beet greens lettuce celery. Gram zucchini swiss chard mustard
								burdock radish brussels sprout groundnut. Asparagus horseradish
								beet greens broccoli brussels.</p>
							<p>
								<a class="btn btn-primary btn-large">Learn more &raquo;</a>
							</p>
						</div>
					</div>
				</div>
				
				<!--  
				<footer>
				<hr>
				<!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
				<!-- 
				<p class="pull-right">
					A <a href="http://www.portnine.com/bootstrap-themes"
						target="_blank">Free Bootstrap Theme</a> by <a
						href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>
				<p>
					&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>
				</footer>
				 -->

			</div>
		</div>
	</div>
	
	<%@ include file="/pages/common/footer.jsp"%>
	<script src="<%=path %>/js/bootstrap.js"></script>
	<script src="<%=path %>/js/collapsePulg.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>
</body>
</html>