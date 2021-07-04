<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/login.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="./js/createTable.js" charset="utf-8"></script>
<style>
</style>
<script>
	$(function() {
		
		// 데이터 전송 쿼리
		$("#create").click(function(){
			var array= new Array();
			for(var x =0; x<i;x++){
				array.push($(".attr").eq(x).val());
			}
			var length = i;
			var tablename = $("#tablename").val();
			
			var newForm = $('<form></form>'); 
			
			//set attribute (form) 
			newForm.attr("name","form"); 
			newForm.attr("method","post"); 
			newForm.attr("action","createTableAction.jsp");
			newForm.attr("target","_blank"); 
			
			// create element & set attribute (input) 
			newForm.append($('<input/>', {type: 'hidden', name: 'array', value:array })); 
			newForm.append($('<input/>', {type: 'hidden', name: 'length', value:length }));
			newForm.append($('<input/>', {type: 'hidden', name: 'tablename', value:tablename })); 
			
			// append form (to body) 
			
			newForm.appendTo('body'); 
			
			// submit 
			newForm.submit();
			
		});
		
		var i = 1;
		$('#add')
				.css("cursor", "pointer")
				.on(
						"click",
						function() {
							var query = "<thead><tr>";
							query += "<th>비고</th>"
							for (var x = 0; x < i; x++) {
								query += "<th>" + $(".attr").eq(x).val()
										+ "</th>";
							}
							query += "</tr></thead>";

							query += "<tbody>";
							for (var x = 0; x < 5; x++) {
								query += "<tr>";
								for (y = 0; y < i + 1; y++) {
									if (y == 0) {
										query += "<th>" + (x + 1) + "</th>";
									} else {
										query += "<td>"
												+ $(".attr").eq(y - 1).val()
												+ (x + 1) + "</td>";
									}
								}
								query += "</tr>";
							}
							query += "</tbody>";

							$("#result thead").remove();
							$("#result tbody").remove();
							$("#result").append(query).hide().show(500);

							///////////////////////////////////////////////////
							i++;
							$('#tb')
									.append(
											'<tr class="trs"><td id="num">'
													+ i
													+ ' </td><td><input class="attr" type="text" placeholder="속성 값"></td><td><input class="delete" type="button" value="삭제" style="cursor: pointer;"></td></tr>')
							$('#number').text("속성 개수 : " + i + " 개");
						});

		$(document).css("cursor", "pointer").on(
				"click",
				".trs .delete",
				function() {
					i--;
					$(this).closest("tr").remove();
					$('#number').text("속성 개수 : " + i + " 개");

					var query = "<thead><tr>";
					query += "<th>비고</th>"
					for (var x = 0; x < i; x++) {
						query += "<th>" + $(".attr").eq(x).val() + "</th>";
					}
					query += "</tr></thead>";

					query += "<tbody>";
					for (var x = 0; x < 5; x++) {
						query += "<tr>";
						for (y = 0; y < i + 1; y++) {
							if (y == 0) {
								query += "<th>" + (x + 1) + "</th>";
							} else {
								query += "<td>" + $(".attr").eq(y - 1).val()
										+ (x + 1) + "</td>";
							}
						}
						query += "</tr>";
					}
					query += "</tbody>";

					$("#result thead").remove();
					$("#result tbody").remove();
					$("#result").append(query).hide().show(500);

				});
		$(document).on(
				"keyup",
				"input",
				function() {
					var query = "<thead><tr>";
					query += "<th>비고</th>"
					for (var x = 0; x < i; x++) {
						query += "<th>" + $(".attr").eq(x).val() + "</th>";
					}
					query += "</tr></thead>";

					query += "<tbody>";
					for (var x = 0; x < 5; x++) {
						query += "<tr>";
						for (y = 0; y < i + 1; y++) {
							if (y == 0) {
								query += "<th>" + (x + 1) + "</th>";
							} else {
								query += "<td>" + $(".attr").eq(y - 1).val()
										+ (x + 1) + "</td>";
							}
						}
						query += "</tr>";
					}
					query += "</tbody>";

					$("#result thead").remove();
					$("#result tbody").remove();
					$("#result").append(query).hide().show(500);
				});

		$(document).on(
				"click",
				"#resultbtn",
				function() {
					var query = "<thead><tr>";
					query += "<th>비고</th>"
					for (var x = 0; x < i; x++) {
							query += "<th>" + $(".attr").eq(x).val() + "</th>";
					}
					query += "</tr></thead>";

					query += "<tbody>";
					for (var x = 0; x < 5; x++) {
						query += "<tr>";
						for (y = 0; y < i + 1; y++) {
							if (y == 0) {
								query += "<th>" + (x + 1) + "</th>";
							} else {
								query += "<th>" + $(".attr").eq(y - 1).val()
										+ (x + 1) + "</th>";
							}
						}
						query += "</tr>";
					}
					query += "</tbody>";

					$("#result thead").remove();
					$("#result tbody").remove();
					$("#result").append(query).hide().show(500);
				});
		
		
		
		
		
		
		
	});
	
</script>


<title>MAKETABLE Project</title>
</head>

<body>
	<div>
		<div  class="w-50 border container" style="float: left;">
			<br>
			<h2 class="w-100">CREATE TABLE 기능 <input id="create" type="button" value="테이블 추가하기"> </h2>
			<hr>

			<label>테이블 제목 : </label> <input  id="tablename" type="text">

			<br>
			<h3 id="number">속성 개수 : 1 개</h3>
			<table class="table" border="4">
				<thead>
					<tr>
						<th>속성 번호</th>
						<th>속성 명</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody id="tb">

					<tr class="trs">
						<td id="num">1</td>
						<td><input class="attr" type="text" placeholder="속성 값"></td>
						<td><input class="delete" type="button" value="삭제"></td>
					</tr>


				</tbody>
				<tr>
					<td colspan="3"><input id="add" class=" w-100" type="button"
						value="추가"></td>
				</tr>
			</table>
		</div>
		<div class="w-50 border" style="float: left;">
			<br>
			<h2 class="w-100">
				테이블 UI <input type="button" id="resultbtn" class="btn"
					value="테이블 미리 보기">
			</h2>

			<table class="table" id="result" border="4">

			</table>
		</div>
		
		<hr>
	</div>
	
	






	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>

</html>