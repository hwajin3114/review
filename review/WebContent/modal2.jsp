<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</head>
<body>
	<table border="1">
		<tr>
			<td>0</td>
			<td class="boardInfo" data-no="0">title0</td>
		</tr>
		<tr>
			<td>1</td>
			<td class="boardInfo" data-no="1">title1</td>
		</tr>
		<tr>
			<td>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal">2</button>
			</td>
			<td>title2</td>
		</tr>
	</table>

	<!-- Button trigger modal -->
	<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">Launch demo modal</button> -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(".boardInfo").on("click", function(event) {
			console.log("click");
			var modal = $("#exampleModal")
			var no = $(event.target).data("no");
			$.ajax({
				url : '${pageContext.request.contextPath}/getData2?no='+no,
				//dataType : 'html',	// 굳이 적을필요 x
				success : function(result) {
					modal.find('.modal-body').html(result)
					modal.modal('show');
				}
			})
		});
	
		$('#exampleModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes
			//ajax
			var modal = $(this)
			$.ajax({
				url : '${pageContext.request.contextPath}/getData?no='+button.text(),
				dataType : 'json',
				success : function(result) {
					modal.find('.card-title').text(result.title)
					modal.find('.card-text').text(result.content)
				}
			})
		})
	</script>
</body>
</html>