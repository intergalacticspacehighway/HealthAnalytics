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
	coordinates = {
		"latitude" : position.coords.latitude,
		"longitude" : position.coords.longitude

	};
	stompClient.send("/app/chat", {}, JSON.stringify(coordinates));

}


function connect() {
	var socket = new SockJS('/health/chat');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		console.log('Connected: ' + frame);
		stompClient.subscribe('/user/queue/chat', function(messageOutput) {
			showMessageOutput(JSON.parse(messageOutput.body));

		});
		disconnected = false;
	}, function(message) {
		disconnected = true;
		if (disconnected) {
			var connecting = setInterval(function() {
				connect();
				clearInterval(connecting);
			}, 1000);
		}
	});
}

function disconnect() {
	if (stompClient != null) {
		stompClient.disconnect();
	}
	setConnected(false);
	console.log("Disconnected");
}


function showMessageOutput(messageOutput) {
	alert(messageOutput.longitude + ": " + messageOutput.latitude + " by "
			+ messageOutput.sender);

}
var recurfun = function(message) {
	let
	disconnected = true;
	if (disconnected) {
		var connecting = setInterval(function() {
			var socket = new SockJS('/health/chat');
			stompClient = Stomp.over(socket);
			stompClient.connect({}, function(frame) {
				console.log('Connected: ' + frame);
				disconnected = false;
				stompClient.subscribe('/user/queue/chat', function(
						messageOutput) {
					showMessageOutput(JSON.parse(messageOutput.body));
				});
				clearInterval(connecting);

			});
		}, 1000);
	}
	alert("heyyy u got disconnected");
	console.log("Message for desconnected")
};
function emsTrackLocation(){
	var interval = setInterval(function(){
		getLocation();
	},1000);
}