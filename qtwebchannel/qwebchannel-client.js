'use strict';
var wsUri = "ws://localhost:12345";

window.onload = function() {

var socket = new WebSocket(wsUri);

socket.onclose = function() 
{
    console.error("web channel closed");
};
			
socket.onerror = function(error)
{
    console.error("web channel error: " + error);
};
			
socket.onopen = function()
{
    window.channel = new QWebChannel(socket, function(channel) {
                    
        // connect to the changed signal of a property
        channel.objects.chatserver.propertyListChanged.connect(function() {

            channel.objects.socketServer.propertyList.forEach(function(property) {
                // Use property
            });                     
        });	
					
        // connect to a signal
        channel.objects.socketServer.newImage.connect(function(blob) {
            var image = document.getElementById("imageCanvas");
            image.src = "data:image/png;base64," + blob;
        });
								
        // connect to a signal
        channel.objects.socketServer.keepAlive.connect(function() {
            //call a method
            channel.objects.socketServer.keepAliveResponse()
        });
    });
}
}
