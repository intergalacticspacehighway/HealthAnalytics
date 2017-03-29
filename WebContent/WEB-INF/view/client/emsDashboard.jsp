
<jsp:include page="header.jsp"></jsp:include>
<style type="text/css">
#map {
	height: 600px;
}
</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.2/sockjs.min.js">
	
</script>

<script type="text/javascript" src="resources/client/js/emssocket.js"></script>
<script>
	connect();
</script>

<link href="resources/css/bootstrap-toggle.css" rel="stylesheet">
<script src="resources/js/bootstrap-toggle.js"></script>

<script>
	var stompClient = null;
	function getLocation() {

		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(showPosition);
		} else {
			x.innerHTML = "Geolocation is not supported by this browser.";
		}
	}
	var coordinates = null;
	function showPosition(position) {
		alert("hiiii");
		coordinates = {
			"latitude" : position.coords.latitude,
			"longitude" : position.coords.longitude

		};
		alert("Coordinates : : " + JSON.stringify(coordinates));
		stompClient.send("/app/updateLoc", {}, JSON.stringify(coordinates));

	}

	function disconnect() {
		if (stompClient != null) {
			stompClient.disconnect();
		}
		setConnected(false);
		console.log("Disconnected");
	}

	/* function sendMessage() {
		stompClient.send("/app/chat", {}, JSON.stringify(coordinates));
	} */

	function showMessageOutput(messageOutput) {
		var userName = document.getElementById("userName");
		var name = document.getElementById("name");
		document.getElementById("patientRecords").href = "viewPatientRecord.html?userName="
				+ messageOutput.sender;
		userName.innerHTML = messageOutput.sender;
		name.innerHTML = messageOutput.name;
		alert(messageOutput.longitude + ": " + messageOutput.latitude + " by "
				+ messageOutput.sender);

	}
</script>

<script>
	connect();
	emsTrackLocation();
</script>
<main id="main" class="tg-page-wrapper tg-haslayout"> <%@taglib
	uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="container">

	<div class="row">
		<div class="col-lg-12 col-md-9 col-sm-8 col-xs-12">
			<div class="tg-dashboard tg-haslayout">
				<div class="tg-docprofilechart tg-haslayout">
					<div
						class="col-lg-12 col-md-12 col-sm-12 col-xs-12 tg-findheatlhwidth">
						<div class="row">
							<div class="tg-docinfo tg-haslayout">
								<div class="tg-box">
									<div class="tg-heading-border tg-small">
										<h3>welcome, ${username}</h3>
									</div>
									<h3>Your Requests</h3>
									<form>
										<div class="form-group">
											<label for="userName">User Name : <span id="userName"
												name="userName"></span></label>
										</div>
										<div class="form-group">
											<label for="name">Name : <span id="name"></span></label>
										</div>
										<div class="form-group">
											<label for="viewRecords"><a id="patientRecords"
												href="">Patient Records</a></label>
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-success">Approve
											</button>
											<button type="submit" class="btn btn-danger">Disapprove
											</button>

										</div>
										<div class="form-group">
											<a target="_blank"
												href="http://maps.google.co.in/maps?q=23.0273099,72.5447981"
												class="btn btn-primary"> Get Directions <i
												class="fa fa-compass" aria-hidden="true"></i>
											</a>

										</div>


									</form>

									<div class="tg-bottominfo tg-haslayout">
										<div class="tg-regardsright">
											<strong class="logo"> <a style="color: #fff"><Strong>Health
												</Strong><span style="color: rgb(82, 146, 231)">Analytics</span></a>
											</strong>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="tg-graph tg-haslayout"></div>

		</div>

		<div id="map" class="col-lg-12 col-md-6 col-sm-12 col-xs-12"></div>
		<script>
			var lineChartData = {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July", "August", "September", "October",
						"November", "December" ],
				datasets : [ {
					label : "Profile Hits",
					fillColor : "rgba(220,220,220,0)",
					strokeColor : "rgba(203,202,201,1)",
					pointColor : "rgba(93,89,85,1)",
					pointStrokeColor : "rgba(238,238,238,1)",
					pointHighlightFill : "rgba(125,187,0,1)",
					pointHighlightStroke : "rgba(220,220,220,1)",
					data : [ 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
				}, ]
			};
			window.onload = function() {
				var ctx = document.getElementById("canvas").getContext("2d");
				window.myLine = new Chart(ctx).Line(lineChartData, {
					responsive : true
				});
			}
		</script>

	</div>

</div>
</div>
</main>
<!------------------------------------------------------------------------------------------------------------------- -->
<!--                                  Doctor Profile Image                                                            -->
<!------------------------------------------------------------------------------------------------------------------- -->

<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">

			<div class="modal-body">
				<div class="tg-widget tg-widget-doctor">
					<div class="col-sm-4 col-xs-12 tg-expectwidth">


						<div class="tg-displaytable">

							<div class="tg-displaytablecell">
								<div class="tg-box" style="padding: 0px 0px; margin-top: -50px">
									<c:forEach items="${sessionScope.patientList}" var="i">
										<img src="doc/${i.registration.login.userprofileImage}"
											id="output"
											style="height: 250px; width: 178px; position: center; margin-top: 30px; margin-left: 30px;" />
									</c:forEach>

									<form action="editImage.html" method="post"
										enctype="multipart/form-data">
										<div class="box">
											<input type="file" onchange="loadFile(event)" name="file"
												id="file-5" class="inputfile inputfile-4"
												data-multiple-caption="{count} files selected" multiple />
											<label for="file-5"><span
												class="glyphicon glyphicon-pencil"></span><span>Change
													Photo</span></label>

										</div>
										<c:forEach items="${sessionScope.patientList}" var="i">
											<input type="hidden" name="id" id="id"
												value="${i.registration.login.loginId}">
										</c:forEach>
										<div class="box1">

											<button type="submit" style="background-color: #fff;">
												<span class="glyphicon glyphicon-save"
													style="color: #5292e7"></span><span
													style="font-size: 1.25rem; text-overflow: ellipsis; font-weight: 700; color: #5292e7;">Save
													Photo</span>
											</button>
										</div>
									</form>
									<script>
										var loadFile = function(event) {
											var output = document
													.getElementById('output');
											output.src = URL
													.createObjectURL(event.target.files[0]);
										};
									</script>


								</div>
							</div>

						</div>


					</div>
				</div>
			</div>

		</div>

	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Profile Image End                                                           -->
<!---------------------------------------------------------------------------------------------------------------------->


<jsp:include page="footer.jsp"></jsp:include>

<script>
	function initMap() {
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 15,
			center : {
				lat : 23.0282,
				lng : 72.544398
			}
		});
		var innoventa = {
			lat : 23.0282,
			lng : 72.544398
		};
		var marker = new google.maps.Marker({
			position : innoventa,
			map : map,
			title : 'First Marker!'
		});
	}
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyDcUGZxp7r9vBloQVJSDgOIuCeGBUt9pKw&callback=initMap">
	
</script>