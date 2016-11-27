<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../common/java.jsp"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<%@include file="../common/css.jsp"%>
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">LibrarySys</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						id="themes" onclick="addbook();">AddBooks <span
							class="glyphicon glyphicon-plus"></span></a></li>
					<li class="dropdown">
						<form class="navbar-form navbar-left" role="search" method="post"
							action="<c:url value='/books/getBooks' />" id="searchform">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search"
									name="keyword">
							</div>
							<button type="submit" class="btn btn-success btn-sm">Submit</button>

						</form>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Login</a></li>
					<li><a href="#"  data-toggle="modal" data-target="#myModal3">Register</a></li>
					
				</ul>

			</div>
		</div>
	</div>


	<div class="container">

		<div class="page-header" id="banner">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-header">
						<h1 id="navbar">Booklist</h1>
					</div>

					<table class="table table-hover table-bordered">
						<caption>全部图书</caption>
						<thead>
							<tr>
								<th>图书编号</th>
								<th>图书名</th>
								<th>出版商</th>
								<th>作者</th>
								<th>价格</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="booktable">
							<!-- 
		<tr>
			<td>Tanmay</td>
			<td>Bangalore</td>
			<td>560001</td>
			<td>560001</td>
			<td>560001</td>
			<td><a href="#" class="btn btn-info btn-xs">editor</a>  <a href="#" class="btn btn-danger btn-xs">delete</a></td>
		</tr>
		 -->
						</tbody>
					</table>


					<nav class="center" id="bottomnav">
						<ul class="pagination">
							<li class="disabled"><a href="javascript:void(0);">&laquo;</a></li>
							<li class="active"><a href="javascript:void(0);">1</a></li>
							<li class="disabled"><a href="javascript:void(0);">&raquo;</a></li>
						</ul>
						<!--
	 <ul class="pagination">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
               -->
					</nav>
				</div>
			</div>
		</div>
	</div>



	<input type="hidden" value="" id="pages" />
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<form id="modalForm" method="post"
					action="<c:url value='/books/insertBooks' />"
					class="form-horizontal">
					<div class="modal-body">


						<div class="row">
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">图书编号：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="isbn" id="isbn">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">图书名：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="name" id="name">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">出版商：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="publish"
												id="publish">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">种类：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="type" id="type">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">作者：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="authors"
												id="authors">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">价格：</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="price"
												id="price">
										</div>
									</div>
								</div>
							</div>
						</div>
						<input type="hidden" value="" name="id" id="bookid"> <input
							type="hidden" value="" name="typesort" id="typesort">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="modalclose">关闭</button>
						<button type="submit" class="btn btn-primary">确认</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



	<div id="alert"></div>
<!-- register的模态框 -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					注册
				</h4>
			</div>
			<form action="<c:url value='/register' />" method="post" id="registerform">
			<div class="modal-body">
				<div class="row">
				
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">用户名</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="username"
											id="username">
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-horizontal">
									<div class="form-group">
										<label class="col-xs-3 control-label">密码</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="password"
												id="password">
										</div>
									</div>
								</div>
							</div>
						
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="registerclose">关闭
				</button>
				<button type="submit" class="btn btn-primary" >
					提交更改
				</button>
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

	<%@include file="../common/js.jsp"%>
	<script>
		$(document).ready(
				function() {

					$("#modalForm").validate(
							{
								errorPlacement : function(error, element) {
									error.replaceAll($("#"
											+ $(element).attr("name")
											+ "-error"));
								},
								rules : {
									isbn : {
										required : true,
									},
									name : {
										required : true,
									},
									publish : {
										required : true,
									},
									type : {
										required : true,
									},
									authors : {
										required : true,
									},
									price : {
										required : true,
									}

								},
								messages : {
									isbn : {
										required : true,
									},
									name : {
										required : true,
									},
									publish : {
										required : true,
									},
									type : {
										required : true,
									},
									authors : {
										required : true,
									},
									price : {
										required : true,
									}
								},
								submitHandler : function() {
									$("#modalclose").click();
									ajaxSubmit($("#modalForm"), function() {
										successAlert("操作成功");
										clear();
										ajaxSubmit($("#searchform"), setTable);
									});
								}

							});

					$("#searchform").validate(
							{
								errorPlacement : function(error, element) {
									error.replaceAll($("#"
											+ $(element).attr("name")
											+ "-error"));
								},
								rules : {
									keyword : {
										required : false,
									}

								},
								messages : {
									keyword : {
										required : false,
									}

								},
								submitHandler : function() {

									ajaxSubmit($("#searchform"), function() {
										successAlert("操作成功");
										ajaxSubmit($("#searchform"), setTable);
									});
								}

							});
					
					$("#registerform").validate(
							{
								errorPlacement : function(error, element) {
									error.replaceAll($("#"
											+ $(element).attr("name")
											+ "-error"));
								},
								rules : {
									username : {
										required : true,
									},
									password : {
										required : true,
									}

								},
								messages : {
									username : {
										required : true,
									},
									password : {
										required : true,
									}

								},
								submitHandler : function() {

									register();
								}

							});

					ajaxSubmit($("#searchform"), setTable);

				});

		function setTable(data) {
			var page = data.page;
			var size = data.size;
			var totalPage = parseInt(data.totalPage / size + 1);
			if (data.totalPage % size == 0)
				totalPage = data.totalPage / size;
			var html = "";
			var i = 1;
			if (page > 1) {
				i = (page - 1) * size + 1;
			}
			$.each(
							data.pageObject,
							function() {
								html += "<tr>";
								html += "<td>" + this.isbn + "</td>";
								html += "<td>" + this.name + "</td>";
								html += "<td>" + this.publish + "</td>";
								html += "<td>" + this.authors + "</td>";
								html += "<td>" + this.price + "</td>";
								html += "<td><a href='#' class='btn btn-info btn-xs' onclick=\"editorbook('"+ this.id+ "')\">editor</a>  <a href='#' class='btn btn-danger btn-xs'   onclick=\"deletebook('"+ this.id+ "')\">delete</a></td>";
								html += "</tr>";
								i++;
							});
			$("#booktable").html(html);
			lilist(page, totalPage, size);
		}
	
		function geturl(i, size) {
			return "<c:url value='/books/getBooks?page=" + i + "&size=" + size
					+ "'/>";
		}

		function clear() {
			$("#myModalLabel").html("");
			$("#isbn").val("");
			$("#name").val("");
			$("#publish").val("");
			$("#type").val("");
			$("#authors").val("");
			$("#price").val("");
			$("#bookid").val("");
			$("#typesort").val("");
		}

		function addbook() {
			clear();
			$("#myModal").modal("show");
			$("#myModalLabel").html("AddBooks");
			$("#typesort").val("1");
		}

		function editorbook(id) {
			clear();
			$.ajax({
				url : "<c:url value='/books/editBooks' />",
				type : 'post',
				dataType : 'json',
				data : {
					"id" : id
				},
				success : function(result) {
					var we = result.data;
					$("#isbn").val(result.data.isbn);
					$("#name").val(result.data.name);
					$("#publish").val(result.data.publish);
					$("#type").val(result.data.type);
					$("#authors").val(result.data.authors);
					$("#price").val(we.price);
					$("#bookid").val(result.data.id);
					$("#myModal").modal("show");
					$("#typesort").val("2");
					$("#myModalLabel").html("editBooks");
				}
			});
		}

		function deletebook(id) {
			Ewin.confirm({
				message : "确认要删除选择的数据吗？"
			}).on(
					function(e) {
						if (!e) {
							return;
						}
						var page = $("#pages").val();
						var url = "<c:url value='/books/deleteBooks?id=" + id
								+ "&page=" + page + "'/>";
						next(url);
					});

		}
		function next(url) {
			$("#searchform").attr("action", url);
			ajaxSubmit($("#searchform"), setTable);
		}
		
		//register submit 
		function register(){
			
			var username = $("#username").val();
			var password = $("#password").val();
			$.ajax({
				url : "<c:url value='/register' />",
				type : 'post',
				dataType : 'json',
				data : {
					"username" : username,
					"password" : password
				},
				success : function(result) {
					$("#registerclose").click();
					registerclear();
					var we = result.data;
					alert(result.msg);
				}
			});
		}
		
		function registerclear(){
			$("#username").val("");
			$("#password").val("");
		}
		
	</script>
</body>

</html>